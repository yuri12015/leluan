<?php
/**
 * @package ZT Highslide Module for Joomla! 1.5
 * @author http://www.ZooTemplate.com
 * @copyright (C) 2011- ZooTemplate.com
 * @license PHP files are GNU/GPL
**/

defined('_JEXEC') or die('Restricted access');
jimport('joomla.form.form');
class highslideHelper extends JObject
{
	var $_type				=	"";		
	var $_url				=	"";	
	var $_folder			=	"";	
	var $_interval			=	3000;	
	var $_repeat			=	"";	
	var $_outlineType		=	"";	
	var $_popupPos			=	"";	
	var $_dimmingOpac		=	0;	
	var $_itemid			=	"";
	var $_position			=	"";
	var $_htmlcontentid 	=	"";
	var $_content 			=	"";
	var $_Height			=	200;
	var $_Width				=	200;
	var $_class				=   "";
	var $_captionText		=	"";
	var $_centr_content 	=	"";
	var $_display 			=	"";
	var $_htmlResult			=	"";
	
	function highslideHelper($params)
	{							
		$this->_folder			=	$params->get('url-folder', $this->_folder);				
		$this->_interval		=	$params->get('url-interval', $this->_interval);				
		$this->_repeat			=	$params->get('url-repeat', $this->_repeat);				
		$this->_outlineType		=	$params->get('outlineType', $this->_outlineType);				
		$this->_popupPos		=	$params->get('popupPos', $this->_popupPos);				
		$this->_dimmingOpac		=	$params->get('dimmingOpac', $this->_dimmingOpac);				
		$this->_type			=	$params->get('type');				
		$this->_url				=	$params->get('url-url', $this->_url);				
		$this->_itemid			=	$params->get ('item-itemid', $this->_itemid);
		$this->_position		=	$params->get ('modules-position', $this->_position);
		$this->_htmlcontentid	=	$params->get ('html-htmlcontentid', $this->_htmlcontentid);
		$this->_content			=	$params->get ('html-content', $this->_content);
		$this->_Height			=	$params->get ('Height', $this->_Height);
		$this->_Width			=	$params->get ('Width', $this->_Width);
		$this->_class			=	$params->get('class', $this->_class);
		$this->_captionText		=	$params->get('captionText', $this->_captionText);
		$this->_centr_content 	=	$params->get('centr-content',$this->_centr_content);
		$this->_display			=	$params->get ('display' ,$this->_display);
	}		
	
	function getHtmlHighslide()
	{
		$s= substr($this->_type,0,4);
		
		if($s=="url-") $this->_type= substr($this->_type,4);
		
		if ($this->_url ||  $this->_itemid || $this->_modulename || $this->_position || $this->_folder)
		{
			
			$this->firstHsPart();
			
			switch ($this->_type)
			{
				case "img"				: 	$this->getSrc(); 
											break;	
				case "flash"			: 	$this->getSrc(); 
											break;	
				case "html"				:   $this->getHtml();
											break;
				case "slideshow-caption": 	$this->getSrc();
											break;
				case "gallery"			: 	$this->getSrc();
											break;
				case "iframe"			:	$this->getSrc();
											break;
				case "modules"			:	$this->getModules ();
											break;
				default					:	$this->getSrc();
											break;
			}
			
			$this->lastHsPart();
			
			$app = &JFactory::getApplication();
			
			$row = new stdClass();
	
			$row->text = $this->_htmlResult;	
						
			$pparams = new JForm('');
			jimport('joomla.plugin.helper');
	    	JPluginHelper::importPlugin('content', 'zt_highslide');
			$arr = $app->triggerEvent('onContentPrepare', array('mod_zt_highslide', &$row, &$pparams, 0));							
			if(JPluginHelper::isEnabled('content', 'zt_highslide')) return $row->text;
			else return "<span><b>ZT Plugin is disabled!!!</b></span>";
		}
		else return "";
		
	}
	
	function firstHsPart()
	{   
		$this->_htmlResult	.=	" {zt_highslide "; 		
		$this->_htmlResult	.=	"	type=\"".$this->_type."\"";	
		$this->_htmlResult	.=	"	height=\"".$this->_Height."\"";	
		$this->_htmlResult	.=	"	width=\"".$this->_Width."\"";
		$this->_htmlResult	.=	"	interval=\"".$this->_interval."\"";
		$this->_htmlResult	.=	"	repeat=\"".$this->_repeat."\"";
		$this->_htmlResult	.=	"	outlineType=\"".$this->_outlineType."\"";
		$this->_htmlResult	.=	"	align=\"".$this->_popupPos."\"";
		$this->_htmlResult	.=	"	dimmingOpacity=\"".$this->_dimmingOpac."\"";
		$this->_htmlResult	.=	"	class=\"".$this->_class."\"";
		$this->_htmlResult	.=	"	captionText=\"".$this->_captionText."\"";
		$this->_htmlResult  .=  "	display=\"".$this->_display."\"";
		
	}
	
	function lastHsPart(){
		$this->_htmlResult .= $this->_centr_content;
		$this->_htmlResult .= " {/zt_highslide}";
	}
			
	function getSrc()
	{
		if($this->_type=="iframe")
		{	
			$this->_htmlResult	.=	"	url=\"".$this->_url."\"";			
			$this->_htmlResult .= "}";
		}
		else
		{
			if ($this->_url=='' && $this->_folder!='' && (($this->_type=="slideshow-caption" )||($this->_type=="gallery"))) {
				$files = '';
				jimport("joomla.filesystem.folder.php");
				//$plugin	=& JPluginHelper::getPlugin('content', 'zt_highslide');
				//$pluginParams	= new JParameter( $plugin->params);

				if (JFolder::exists(JPATH_BASE.DS.$this->_folder)) {
					$files = JFolder::files(JPATH_BASE.DS.$this->_folder);
					if ($files) {
						foreach ($files as $k=>$file){
							$files[$k] = $this->_folder.'/'.$file;
						}
						$files = implode(',', $files);
					}
				}
				$this->_htmlResult	.=	"	src=\"".$files."\"";		
			}
			else{
				$this->_htmlResult	.=	"	src=\"".$this->_url."\"";	
			}
			$this->_htmlResult .= "}";
		}
	}
	
	function getHtml()
	{
		echo $this->_content;
		$this->_htmlResult .= " contentid=\"".$this->_htmlcontentid."\"";
		$this->_htmlResult .= " }";
	}
	
	function getModules ()
	{
		$this->_htmlResult	.=	"	position=\"".$this->_position."\"";
		$this->_htmlResult	.=	"	}";
	}
}
