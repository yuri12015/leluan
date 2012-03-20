<?php
/**
 * @package ZT Headline module for Joomla! 1.7
 * @author http://www.zootemplate.com
 * @copyright (C) 2011- ZooTemplate.Com
 * @license PHP files are GNU/GPL
**/
//Initiate environment
define( 'DS', DIRECTORY_SEPARATOR );
$rootFolder = explode(DS,dirname(__FILE__));
//current level in diretoty structure
$currentfolderlevel = 3;
array_splice($rootFolder,-$currentfolderlevel);
$base_folder = implode(DS,$rootFolder);
if(is_dir($base_folder.DS.'libraries'.DS.'joomla')) {
	define( '_JEXEC', 1 );
	define('JPATH_BASE',implode(DS,$rootFolder));
	require_once ( JPATH_BASE .DS.'includes'.DS.'defines.php' );
	require_once ( JPATH_BASE .DS.'includes'.DS.'framework.php' );
	require_once(JPATH_BASE .DS.'libraries/joomla/factory.php');
	$mainframe =& JFactory::getApplication('site');
	$mainframe->initialise();
	jimport('joomla.filesystem.file');
	jimport('joomla.filesystem.folder');
	class ZTHeadlineCleanCache{
		 var $moduleId;
		 function __construct($moduleId){
			$this->moduleId = $moduleId;
		 }
		 function clean_cache(){
		 	$db = &JFactory::getDBO();
			$cId = JRequest::getVar('cid','');
			
			if($cId !='') $cId = $cId[0];
			if($cId == ''){
				$cId = JRequest::getVar('id');
			}
			$sql = "SELECT params FROM #__modules WHERE id=$cId";
			$db->setQuery($sql);
			$paramsConfigObj = $db->loadObjectList();
			$db->setQuery($sql);
			$data = $db->loadResult(); 
			$params = new JRegistry($data);
			$layoutStyle = $params->get('layout_style','jv_slide1');
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
				case "jv_slide10":
					$thumbpath = $params->get('zt_flow_thumbs');
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
			} 
			$cache_path =JPATH_SITE.DS.'cache'.DS.$thumbpath;
			JFolder::delete($cache_path);
		 }
	}	 
	$moduleId = JRequest::getVar('id');
	$reCache = new ZTHeadlineCleanCache($moduleId);
	$valid = $reCache->clean_cache(); 
}
