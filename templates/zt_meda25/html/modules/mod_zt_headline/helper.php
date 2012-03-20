<?php
/**
 * @package ZT Headline module for Joomla! 1.7
 * @author http://www.zootemplate.com
 * @copyright (C) 2011- ZooTemplate.Com
 * @license PHP files are GNU/GPL
**/

// no direct access
defined('_JEXEC') or die('Restricted access');
require_once (JPATH_SITE . DS . 'components' . DS . 'com_content' . DS . 'helpers' . DS . 'route.php');
jimport('joomla.application.component.model'); 
JModel::addIncludePath(JPATH_SITE.'/components/com_content/models');
jimport('joomla.filesystem.file');
jimport('joomla.filesystem.folder');
class modZTHeadLineHelper
{
	function createdDirThumb($folderImage='', $thumbpath=''){
		$thumbImgParentFolder = JPATH_BASE.DS.'cache'.DS.$thumbpath;
		if(!JFolder::exists($thumbImgParentFolder)){
			JFolder::create($thumbImgParentFolder);
		}
	}
	function grabData($source_to_grab, $delimiter_start, $delimiter_stop, $str_to_replace='', $str_replace='', $extra_data='')
	{
		$result='';
		$fd = "";
		$start_pos = $end_pos = 0;
		$source_to_grab = $source_to_grab;
		while(true)
		{
			if($end_pos > $start_pos)
			{
				$result = substr($fd, $start_pos, $end_pos-$start_pos);
				$result .= $delimiter_stop;
				break;
			}//10
			$data = @fread($source_to_grab, 8192);
			//echo $data;
			if(strlen($data) == 0) break;
			$fd .= $data;
			if(!$start_pos) $start_pos = strpos($fd, $delimiter_start);
			if($start_pos) $end_pos = strpos(substr($fd, $start_pos), $delimiter_stop) + $start_pos;
		}
		//echo $result;
		return str_replace($str_to_replace, $str_replace, $extra_data.$result);
	}
	/*
	 * Function get thumbnail size
	 * @Created by zootemplate
	 */
	function getThumnailSize($params,&$thumbWidth,&$thumbHeight){
		switch($params->get('layout_style')){			
			case "jv_slide4":
				$thumbHeight = $params->get('sello2_thumb_height');
				$thumbWidth = $params->get('sello2_thumb_width');
				break;
			case "jv_slide3":				
				$thumbHeight = $params->get('lago_thumb_height');
				$thumbWidth = $params->get('lago_thumb_width');	
				break;
			case "jv_slide6":
				$thumbHeight = $params->get('sello1_thumb_height');
				$thumbWidth = $params->get('sello1_thumb_width');
				break;	
			case "jv_slide5":
				$thumbHeight = $params->get('maju_thumb_height');
				$thumbWidth = $params->get('maju_thumb_width');	
				break;
			case "jv_slide8":
				$thumbHeight = $params->get('pedon_thumb_height');
				$thumbWidth = $params->get('pedon_thumb_width');
				break;
			case "jv_slide9":
				$thumbHeight = $params->get('jv9_main_height',320);
				$thumbWidth = $params->get('jv9_expand_width',700);
				break;
			case "jv_slide10":
				$thumbHeight = $params->get('zt_flow_thumb_height');
				$thumbWidth = $params->get('zt_flow_thumb_width');
				break;
			case "jv_slide11":
				$thumbHeight = $params->get('iner_thumb_height');
				$thumbWidth = $params->get('iner_thumb_width');
				break;
		}
	}
	//End get thumbnail size

	/*
	 *Function get large thumbnail
	 *@Created by zootemplate
	 */
	function getLargeThumbSize($params,&$thumbWidth,&$thumbHeight){
		switch($params->get('layout_style')){			
			case "jv_slide8":
				$thumbHeight = $params->get('jv_pedon_height');
				$thumbWidth = $params->get('jv_pedon_width');
				break;
			case "jv_slide6":
				$thumbWidth = $params->get('sello1_imgslide_width');
				$thumbHeight = $params->get('sello1_imgslide_height');	
				break;
			case "jv_slide7":
				$thumbWidth = $params->get('jv7_main_width');
				$thumbHeight = $params->get('jv7_height');
				break;
			case "jv_slide3":
				$thumbHeight = $params->get('jv_lago_height');
				$thumbWidth = $params->get('jv_lago_main_width');
				break;
			case "jv_slide2":
				$thumbWidth = $params->get('jveoty_width');
				$thumbHeight = $params->get('jveoty_height');
				break;
			case "jv_slide5":
				$thumbWidth = $params->get('jv_maju_width');
				$thumbHeight = $params->get('jv_maju_height');
				break;	
			case "jv_slide1":
				$thumbWidth= $params->get('news_thumb_width');
				$thumbHeight = $params->get('news_thumb_height');
				break;
			case "jv_slide9":
				$thumbHeight = $params->get('jv9_main_height');
				$thumbWidth = $params->get('jv9_expand_width');
				break;
			case "jv_slide10":
				$thumbHeight = $params->get('zt_flow_thumb_height');
				$thumbWidth = $params->get('zt_flow_thumb_width');
				break;
			case "jv_slide11":
				$thumbHeight = $params->get('zt_iner_height');
				$thumbWidth = $params->get('zt_iner_width');
				break;
		}
	}
	//End get large thumbnail	
	function getImageSizes($file) {
		return getimagesize($file);
	}

	function checkImage($file) {
		preg_match("/\<img.+?src=\"(.+?)\".+?\/>/", $file, $matches);
		if(count($matches)){
			return $matches[1];
		} else {return '';}
	}

	function FileExists($file) {
		if(file_exists($file))
		return true;
		else
		return false;
	}

	function FileDifferentExists($file) {
		$check = @fopen($file, "r");
		if(strpos($check, "Resource id") !== false)
		return true;
		else
		return false;
	}
	function clean_cache($thumb_path){
		global $cachetime; 
		$timenow = time();
		$filelastmodified = strtotime(date ("F d Y H:i:s", filemtime($thumb_path)));
		$currentime = $filelastmodified + ($cachetime*60);
		if($currentime<$timenow){
			JFile::delete($thumb_path);
			return true;
		}else {
			return false;
		}
		
	}
	function getImageIntro($text){
		global $moduleId;
		preg_match_all('/<img(.*?)src="(.*?)"(.*?)>/', $text, $matches);
		$paths 		= array();
		$showbug 	= true;
		 
		if(isset($matches[2][1]))
		{ 
			$image_path = $matches[2][1]; 
			return($image_path);
		} else {
			return false;
		}
	}
	function getThumb($text, $extraname, $tWidth,$tHeight, $reflections=false,$id=0,$isSmall = 1, $thumbpath){
		global $moduleId;
		preg_match("/\<img.+?src=\"(.+?)\".+?\/>/", $text, $matches);
		$paths = array();
		$showbug = true; 
		if (isset($matches[1])) {
			$image_path = $matches[1]; 
			$isInternalLink = modZTHeadLineHelper::isInternalLink($image_path);			
			if(!$isInternalLink) {
				$path_parts = pathinfo($image_path);
				$imgName = $path_parts['basename'];													
				$internalLink = JPATH_BASE.DS."cache".DS."zt-assets".DS.$imgName;
				modZTHeadLineHelper::saveImage($internalLink,$image_path);
				echo $image_path = "cache/zt-assets/".$imgName;
			} else {
				if(!modZTHeadLineHelper::FileExists($image_path)) return '';
			}
			// create a thumb filename
			$file_name = strrpos($image_path,'/');
			$thumb_name = substr($image_path, $file_name+1);
			
			if($isSmall == 1)
			{
				$thumb_path = 'cache/'.(($thumbpath != '') ? $thumbpath : '').'mod_zt_headline_cache_'.md5($moduleId).'_'.$tWidth.'x'.$tHeight.'_'.$thumb_name; 
			}
			else
			{
				$thumb_path = 'cache/'.(($thumbpath != '') ? $thumbpath : '').'mod_zt_headline_cache_'.md5($moduleId).'_'.$tWidth.'x'.$tHeight.'_'.$thumb_name;
			}
			$cache = false;
			if(is_file($thumb_path)){
				$cache =  modZTHeadLineHelper::clean_cache($thumb_path);
				if(!$cache) return $thumb_path;
			}
			// check to see if this file exists, if so we don't need to create it
			if ($thumb_path !='' && function_exists("gd_info") && !file_exists($thumb_path)) {
				// file doens't exist, so create it and save it
				include_once('zt_thumbnail.php');
				$thumb = new ZTThumbnail($image_path); 
				$thumb->resize_image($tWidth,$tHeight);  
				$thumb->save($thumb_path);
				$thumb->destruct();
			}
			return $thumb_path;
		} else {
			return false;
		}
	}
	function introContent( $str, $limit = 100,$end_char = '&#8230;' ) {
		if (trim($str) == '') return $str;
		// always strip tags for text
		$str = strip_tags($str);
		preg_match('/\s*(?:\S*\s*){'.(int)$limit.'}/', $str, $matches);		
		if (strlen($matches[0]) == strlen($str))$end_char = '';
		return rtrim($matches[0]).$end_char;
	}
	
	/*
	 * Function check image is internal link or external link
	 * @Created by zootemplate
	 */
	function isInternalLink($image_path){
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
		// remove any / that begins the path
		if (substr($image_path, 0 , 1) == '/') $image_path = substr($image_path, 1);
		//if after removing the uri, still has protocol then the image
		//is remote and we don't support thumbs for external images
		if (strpos($image_path,'http://') !== false || strpos($image_path,'https://') !== false) { 
			return false;
		} 
		return true;
			
	}
	//End check image
	
	/*
	 * Function save image from external link in our server
	 * @Created by zootemplate
	 */
	function saveImage($inPath,$outPath){ //Download images from remote server		
	   	$ch = curl_init($outPath);
		$fp = fopen($inPath, 'wb');
		curl_setopt($ch, CURLOPT_FILE, $fp);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_exec($ch);
		curl_close($ch);
		fclose($fp);
	}
	//End save image
}

class modZTHeadlineCommonHelper{
	function __construct(){
		//modZTHeadLineHelper::createdDirThumb();
	}
	function getSlideContent($params){
	  
		$db = JFactory::getDbo();

		// Get an instance of the generic articles model
		$model = JModel::getInstance('Articles', 'ContentModel', array('ignore_request' => true));
    
		// Set application parameters in model
		$app = JFactory::getApplication();
		$appParams = $app->getParams();
		$model->setState('params', $appParams);

		// Set the filters based on the module params
		$count = $this->getNoItemByStyle($params);
		$model->setState('list.start', 0);
		$model->setState('list.limit', (int) $count);
		$model->setState('filter.published', 1);
		// Get Params
		$intro_length = intval($params->get( 'intro_length', 50) );
		$layoutStyle = $params->get('layout_style');
		$cachetime = $params->get('cache_time');
		$lThumbWidth ='';
		$lThumbHeight ='';
		$sThumbWidth = '';
		$sThumbHeight = '';
		$thumbPath ='';
		switch ($layoutStyle) {
			case "jv_slide4":
				$thumbpath = $params->get('jv_sello2_thumbs');
				break;
			case "jv_slide3":		
				$thumbpath = $params->get('jv_lago_thumbs');	
				break;
			case "jv_slide6":
				$thumbpath = $params->get('jv_sello1_thumbs');	
				break;	
			case "jv_slide5":
				$thumbpath = $params->get('jv_maju_thumbs');
				break;
			case "jv_slide8":	
				$thumbpath = $params->get('jv_pedon_thumbs');
				break;
			case "jv_slide9":
				$thumbpath = $params->get('jv_jv9_main_thumbs');
				break;
			case "jv_slide7":
				$thumbpath = $params->get('jv_jv7_main_thumbs');	
				break;
			case "jv_slide2":
				$thumbpath = $params->get('jv_eoty_thumbs');
				break;
			case "jv_slide1":
				$thumbpath = $params->get('jv_news_thumbs');
				break; 
			case "jv_slide10":	
				$thumbpath = $params->get('zt_flow_thumbs');
				break;
			case "jv_slide11":	
				$thumbpath = $params->get('zt_iner_thumbs');
				break;
		}
		if($layoutStyle !='jv_slide2' && $layoutStyle !='jv_slide1' && $layoutStyle!='jv_slide9' && $layoutStyle!='jv_slide10')
		modZTHeadLineHelper::getThumnailSize($params,$sThumbWidth,$sThumbHeight);//Get small thumb size
		if($layoutStyle != 'jv_slide4') modZTHeadLineHelper::getLargeThumbSize($params,$lThumbWidth,$lThumbHeight);
		
		// Access filter
		$access = !JComponentHelper::getParams('com_content')->get('show_noauth');	

		// Category filter
		$model->setState('filter.category_id', $params->get('catid', array())); 
		
		// Set ordering
        $orderBy = $params->get('ordering');
		$ordering = 'a.'.$orderBy.'';
		$model->setState('list.ordering', $ordering);
        $model->setState('list.direction', $params->get('sort_order'));
		
		$items = $model->getItems();
		if(count($items)){
			$i      = 0;
			$lists  = array(); 
			foreach ( $items as $row ){
				$row->slug = $row->id.':'.$row->alias;
				$row->catslug = $row->catid.':'.$row->category_alias;
				$imageurl = modZTHeadLineHelper::checkImage($row->introtext); 
				$lists[$i]->thumb_diff = '';
				$lists[$i]->thumbs = $lists[$i]->thumbl = ''; 
				$lists[$i]->title = $row->title;
				$lists[$i]->alias = $row->alias;
				$folderImg = DS.$row->id;
				modZTHeadLineHelper::createdDirThumb($folderImg,$thumbpath);
				//Execute with item id 
				//End Item id
				if($layoutStyle=='jv_slide11'){
					$lists[$i]->imageintro = modZTHeadLineHelper::getImageIntro($row->introtext);
				}
				$lists[$i]->link = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug));
				$lists[$i]->introtext = modZTHeadLineHelper::introContent($row->introtext, $intro_length);
				
				if($layoutStyle !='jv_slide2' && $layoutStyle !='jv_slide1' && $layoutStyle!='jv_slide9' && $layoutStyle!='jv_slide10') {
					if(modZTHeadLineHelper::checkImage($row->introtext)) $lists[$i]->thumbs = modZTHeadLineHelper::getThumb($row->introtext, '_headline', $sThumbWidth,$sThumbHeight,false,$row->id,1, $thumbpath);	
				}
				if($params->get('layout_style') != 'jv_slide4') {			
					if(modZTHeadLineHelper::checkImage($row->introtext)) $lists[$i]->thumbl = modZTHeadLineHelper::getThumb($row->introtext, '_headline', $lThumbWidth,$lThumbHeight,false,$row->id,0,$thumbpath);
				}
				$i++;			
			}
			return $lists;
		}
		
	}
	function renderLinkArticle($params,$id, $catid = 0, $sectionid = 0){
		$menuItemType = $params->get('menuitem_type','default');
		$jvContentHelper = new ZTContentHelperRouter();
		$currentItemId = JRequest::getVar('Itemid');
		$inputedItemId = $params->get('input_itemid',0);
		$link = 'index.php?option=com_content&view=article&id='. $id;		
		if($catid) {
			$link .= '&catid='.$catid;
		}
		switch ($menuItemType){
			case 'default':
				if($jvContentHelper->isExistedItemId($id,$itemId,$catid,$sectionid)) {
					$link .= '&Itemid='.$itemId;
				} else if($currentItemId){
					$link .= '&Itemid='.$currentItemId;
				} else if($inputedItemId){
					$link .= '&Itemid='.$inputedItemId;
				} 
				break;
			case 'current_page':
				if($currentItemId){
					$link .= '&Itemid='.$currentItemId;
				} else if($inputedItemId){
					$link .= '&Itemid='.$inputedItemId;
				}
				break;
			case 'input_value':
				if($inputedItemId){
					$link .= '&Itemid='.$inputedItemId;
				}
				break;						
		}
		return $link;
	}
	function getNoItemByStyle($params){
			switch($params->get('layout_style')){
				case "jv_slide3":
					return (int)$params->get('lago_no_item',3);
					break;
				case "jv_slide2":
					return (int) $params->get('jveoty_no_item',5);	
					break;
				case "jv_slide4":
					return (int) $params->get('sello2_no_item',10);
					break;
				case "jv_slide6":
					return (int) $params->get('sello1_no_item',8);
					break;
				case "jv_slide5":
					return (int)$params->get('maju_no_item',4);
					break;	
				case "jv_slide7":
					return (int)$params->get('jv7_no_item',10);
					break;
				case "jv_slide8":
					return (int)$params->get('pedon_no_item',6);
					break;	
				case "jv_slide1":
					return (int)$params->get('news_no_item');
					break;
				case "jv_slide9":
					return (int) $params->get('jv9_no_item',5);
					break;
				case "jv_slide10":
					return (int)$params->get('zt_flow_no_item',6);
					break;
				case "jv_slide11":
					return (int)$params->get('iner_no_item',6);
					break;
				default:
					return (int)$params->get('count',0);
					break;	
			}
	}
	//End functiion
}
class modZTSlide7 {
	var $thumbpath;
	function __construct($params){
	  $layoutStyle = $params->get('layout_style');
		
		switch ($layoutStyle) {
			case "jv_slide4":
				$this->thumbpath = $params->get('jv_sello2_thumbs');
				break;
			case "jv_slide3":		
				$this->thumbpath = $params->get('jv_lago_thumbs');	
				break;
			case "jv_slide6":
				$this->thumbpath = $params->get('jv_sello1_thumbs');	
				break;	
			case "jv_slide5":
				$this->thumbpath = $params->get('jv_maju_thumbs');
				break;
			case "jv_slide8":	
				$this->thumbpath = $params->get('jv_pedon_thumbs');
				break;
			case "jv_slide9":
				$this->thumbpath = $params->get('jv_jv9_main_thumbs');
				break;
			case "jv_slide7":
				$this->thumbpath = $params->get('jv_jv7_main_thumbs');	
				break;
			case "jv_slide2":
				$this->thumbpath = $params->get('jv_eoty_thumbs');
				break;
			case "jv_slide1":
				$this->thumbpath = $params->get('jv_news_thumbs');
				break;
								
		}
		//modZTHeadLineHelper::createdDirThumb();
	}
	function getSlideContent($params){
		$db = JFactory::getDbo();

		// Get an instance of the generic articles model
		$model = JModel::getInstance('Articles', 'ContentModel', array('ignore_request' => true));
    
		// Set application parameters in model
		$app = JFactory::getApplication();
		$appParams = $app->getParams();
		$model->setState('params', $appParams);
		$layoutStyle = $params->get('layout_style');
		// Set the filters based on the module params
		$count = modZTHeadlineCommonHelper::getNoItemByStyle($params);
		$intro_length = intval($params->get( 'intro_length', 50) );
		$model->setState('list.start', 0);
		$model->setState('list.limit', (int) $count);
		$model->setState('filter.published', 1);
		
		modZTHeadLineHelper::getLargeThumbSize($params,$width,$height);	
		// Access filter
		$access = !JComponentHelper::getParams('com_content')->get('show_noauth');
		
		$show_readmore_link = false;
		$catid = $params->get('catid', array());
		$catid = @explode(',', $catid );
		$catidcount = @count($catid);
		if ($catidcount==1) {
			$show_readmore_link = true;
		}
		$params->set('show_readmore_link', $show_readmore_link);
		// Category filter
		$model->setState('filter.category_id', $params->get('catid', array())); 
		
		// Set ordering
        $orderBy = $params->get('ordering');
		$ordering = 'a.'.$orderBy.'';
		$model->setState('list.ordering', $ordering);
        $model->setState('list.direction', $params->get('sort_order'));
		$items = $model->getItems();
		if(count($items)){
		  $i      = 0;
		  $lists  = array(); 
		  foreach ( $items as $row ){
			  $folderImg = DS.$row->id;
			  $row->slug = $row->id.':'.$row->alias;
			  $row->catslug = $row->catid.':'.$row->category_alias;
			  modZTHeadLineHelper::createdDirThumb($folderImg,$this->thumbpath);
			  $lists[$i]->thumb = $lists[$i]->thumb_diff = '';			
			  $lists[$i]->title = $row->title;
			  $lists[$i]->alias = $row->alias;
			  $lists[$i]->link = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug)); 
			  $lists[$i]->introtext = modZTHeadLineHelper::introContent($row->introtext, $intro_length);
			  if(modZTHeadLineHelper::checkImage($row->introtext))  $lists[$i]->thumb = modZTHeadLineHelper::getThumb($row->introtext, '_headline', $width,$height,false,$row->id,1,$this->thumbpath);
			  $i++;		
		  }
		  return $lists;
		}
		
	}
}
class ZTContentHelperRouter {
	function ZTContentHelperRouter(){
		
	}
	function isExistedItemId($id,&$itemId, $catid = 0, $sectionid = 0){
		$needles = array(
			'article'  => (int) $id,
			'category' => (int) $catid,
			'section'  => (int) $sectionid,
		);
		$existedItemId = 0;
		if($item = $this->_findItem($needles)) {
			$existedItemId = 1;
			$itemId = $item->id;
		};
		return $existedItemId;
	}
	function _findItem($needles){
		$component =& JComponentHelper::getComponent('com_content');
		$menus	= &JApplication::getMenu('site', array());
		$items	= $menus->getItems('componentid', $component->id);
		$match = null;
		if(count($needles))
		foreach($needles as $needle => $id){
			if(count($items))
			foreach($items as $item){
				if ((@$item->query['view'] == $needle) && (@$item->query['id'] == $id)) {
					$match = $item;
					break;
				}
			}
			if(isset($match)) {
				break;
			}
		}
		return $match;
	}
	
}
?>