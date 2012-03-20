<?php
defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.model');

JModel::addIncludePath(JPATH_SITE.'/components/com_content/models');

JHTML::_('stylesheet','jvlatestnews.css','modules/mod_zt_latestnews/assets/css/');

class modZTLatestNewsHelper
{
	function getList(&$params)
	{
		global $mainframe;

		$db			=& JFactory::getDBO();
		$user		=& JFactory::getUser();
		$userId		= (int) $user->get('id');

		$count		= (int) $params->get('count', 5);
		$catid		= trim( $params->get('catid') ); 
		$show_front	= $params->get('show_front', 1);
		$aid		= $user->get('aid', 0);

		$thumbsize	= intval($params->get('thumbsize',100));
		$intro_lenght = intval($params->get('intro_lenght',200));
		$columns = intval($params->get('columns',200));

		$contentConfig = &JComponentHelper::getParams( 'com_content' );
		$access		= !$contentConfig->get('shownoauth');

		$nullDate	= $db->getNullDate();

		$date =& JFactory::getDate();
		$now = $date->toMySQL();

		$width = round((100/$columns),1);

		$where		= 'a.state = 1'
			. ' AND ( a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' )'
			. ' AND ( a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )'
			;

		// User Filter
		switch ($params->get( 'user_id' ))
		{
			case 'by_me':
				$where .= ' AND (created_by = ' . (int) $userId . ' OR modified_by = ' . (int) $userId . ')';
				break;
			case 'not_me':
				$where .= ' AND (created_by <> ' . (int) $userId . ' AND modified_by <> ' . (int) $userId . ')';
				break;
		}

		// Ordering
		switch ($params->get( 'ordering' ))
		{
			case 'm_dsc':
				$ordering		= 'a.modified DESC, a.created DESC';
				break;
			case 'c_dsc':
			default:
				$ordering		= 'a.created DESC';
				break;
		}

		if ($catid)
		{
			$ids = explode( ',', $catid );
			JArrayHelper::toInteger( $ids );
			$catCondition = ' AND (cc.id=' . implode( ' OR cc.id=', $ids ) . ')';
		} 

		// Content Items only
		$query = 'SELECT a.*, ' .
			' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.
			' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(":", cc.id, cc.alias) ELSE cc.id END as catslug'.
			' FROM #__content AS a' .
			($show_front == '0' ? ' LEFT JOIN #__content_frontpage AS f ON f.content_id = a.id' : '') .
			' INNER JOIN #__categories AS cc ON cc.id = a.catid' . 
			' WHERE '. $where .'' . 
			($catid ? $catCondition : ''). 
			($show_front == '0' ? ' AND f.content_id IS NULL ' : ''). 
			' AND cc.published = 1' .
			' ORDER BY '. $ordering;
		$db->setQuery($query, 0, $count);
		$rows = $db->loadObjectList(); 
		$i		= 0;
		$lists	= array(); 
		foreach ( $rows as $row )
		{
			$row->slug = $row->id.':'.$row->alias;
			$row->catslug = $row->catid.':'.$row->category_alias;
			$imageurl = modZTLatestNewsHelper::checkImage($row->introtext);
			$lists[$i]->title = htmlspecialchars( $row->title ); 
			$lists[$i]->link = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug)); 
			if(modZTLatestNewsHelper::FileExists($imageurl)){
				$lists[$i]->thumb = modZTLatestNewsHelper::getThumb($row->introtext, '_jvlastnews_thumb', $thumbsize);
				$image_size = modZTLatestNewsHelper::getImageSizes($lists[$i]->thumb);
				if($image_size[0] != $thumbsize) {
					@unlink($lists[$i]->thumb);
					$lists[$i]->thumb_small = modZTLatestNewsHelper::getThumb($row->introtext, '_jvlastnews_thumb', $thumbsize);
				}
			}
			$lists[$i]->introtext = modZTLatestNewsHelper::introContent($row->introtext, $intro_lenght);
			$lists[$i]->date = date("d F Y",strtotime($row->created));
			$lists[$i]->width = $width;
			$i++;
		}

		return $lists;
	}

	function getImageSizes($file) {
		return getimagesize($file);
	}

	function introContent( $text, $length=200 ) {
		$text = preg_replace( "'<script[^>]*>.*?</script>'si", "", $text );
		$text = preg_replace( '/{.+?}/', '', $text);
		$text = strip_tags(preg_replace( "'<(br[^/>]*?/|hr[^/>]*?/|/(div|h[1-6]|li|p|td))>'si", ' ', $text ));
		if (strlen($text) > $length) {
			$text = substr($text, 0, strpos($text, ' ', $length)) . "..." ;
		} 
		return $text;
	}
	function FileExists($file) {
		if(file_exists($file))
			return true;
		else
			return false;
	}
	
 	function checkImage($file) {
		preg_match("/\<img.+?src=\"(.+?)\".+?\/>/", $file, $matches);
		return $matches[1];
	}
	function getThumb($text, $extraname, $size, $reflections=false) {

		preg_match("/\<img.+?src=\"(.+?)\".+?\/>/", $text, $matches);
		$paths = array();
		$showbug = true;
		if (isset($matches[1])) {
			$image_path = $matches[1];
 
			$full_url = JURI::base();
			
			//remove any protocol/site info from the image path
			$parsed_url = parse_url($full_url);
			
			$paths[] = $full_url;
			if (isset($parsed_url['path']) && $parsed_url['path'] != "/") $paths[] = $parsed_url['path'];
			
			
			foreach ($paths as $path) {
				if (strpos($image_path,$path) !== false) {
					$image_path = substr($image_path,strpos($image_path, $path)+strlen($path));
				}
			}
			//echo $image_path;
			// remove any / that begins the path
			if (substr($image_path, 0 , 1) == '/') $image_path = substr($image_path, 1);
			//if after removing the uri, still has protocol then the image
			//is remote and we don't support thumbs for external images
			if (strpos($image_path,'http://') !== false ||
				strpos($image_path,'https://') !== false) {
				return false;
			}
			// create a thumb filename
			$file_div = strrpos($image_path,'.');
			$thumb_ext = substr($image_path, $file_div);
			$thumb_prev = substr($image_path, 0, $file_div);
			$thumb_path =  $thumb_prev . $extraname . $thumb_ext;
			// check to see if this file exists, if so we don't need to create it
			if (function_exists("gd_info") && !file_exists($thumb_path)) {
				// file doens't exist, so create it and save it
				include_once('thumbnail.inc.php');
				$thumb = new Thumbnail($image_path);
				if ($thumb->error) { 
					if ($showbug)	echo "ZT LatestNews ERROR: " . $thumb->errmsg . ": " . $image_path; 
					return false;
				}
				$thumb->resize($size);
				if ($reflections) {
					$thumb->createReflection(30,30,60,false);
				}
				if (!is_writable(dirname($thumb_path))) {
					$thumb->destruct();
					return false;
				}
				$thumb->save($thumb_path);
				$thumb->destruct();
			}
			return ($thumb_path);
		} else {
			return false;
		}
	}


}
