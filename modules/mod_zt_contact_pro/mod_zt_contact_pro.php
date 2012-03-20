<?php
/**
 * @package ZT Contact Pro module for Joomla! 2.5
 * @author http://www.zootemplate.com
 * @copyright (C) 2010- ZooTemplate.Com
 * @license PHP files are GNU/GPL
**/
defined('_JEXEC') or die('Restricted access'); 
require_once (dirname(__FILE__).DS.'helper.php');
$module_id = $module->id;
$list = modzt_contact_proHelper::getList($params,$module_id);
require(JModuleHelper::getLayoutPath('mod_zt_contact_pro'));