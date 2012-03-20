<?php
/**
 * @package ZT Contact pro module for Joomla!
 * @author http://www.zootemplate.com
 * @copyright (C) 2012- ZooTemplate.Com
 * @license PHP files are GNU/GPL
**/
defined('_JEXEC') or die('Restricted access');

class modzt_contact_proHelper
{
	function getList(&$params,$module_id)
	{
		global $mainframe;
		$db			=& JFactory::getDBO();
		$user		=& JFactory::getUser();
		$folder ='modules/mod_zt_contact_pro/assets/data';
		$file = 'contact'.$module_id.'.xml';
		if (is_file($folder.DS.$file)) {
			$api_url = JURI::root().'modules/mod_zt_contact_pro/assets/data/contact'.$module_id.'.xml';
		    $xml = simplexml_load_file($api_url);
		}else{
			$api_url = JURI::root().'modules/mod_zt_contact_pro/assets/data/contact.xml';
	    	$xml = simplexml_load_file($api_url);
		}
	    $elementlist = count($xml->elementList->param);
	    $jvhtml = '';
	    $lists = array();
	    for($i=0; $i<$elementlist; $i++){
	    	$lists[$i]->type = $xml->elementList->param[$i]->type;
	    	$lists[$i]->value = $xml->elementList->param[$i]->value;
	    	$lists[$i]->fieldtitle = $xml->elementList->param[$i]->fieldtitle;
	    	$lists[$i]->fieldname = $xml->elementList->param[$i]->fieldname;
	    	$lists[$i]->valid = $xml->elementList->param[$i]->valid;
	    	$lists[$i]->size = $xml->elementList->param[$i]->size;
	    	$lists[$i]->length = $xml->elementList->param[$i]->length;
	    	$lists[$i]->cols = $xml->elementList->param[$i]->cols;
	    	$lists[$i]->rows = $xml->elementList->param[$i]->rows;
	    	$lists[$i]->multi = $xml->elementList->param[$i]->multi;
	    	$lists[$i]->intro = $xml->elementList->param[$i]->intro;
	    }
	    return $lists;
	}
}
