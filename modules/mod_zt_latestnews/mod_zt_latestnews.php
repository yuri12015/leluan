<?php
defined('_JEXEC') or die('Restricted access');

// Include the syndicate functions only once
require_once (dirname(__FILE__).DS.'helper.php');
global $moduleId;
$moduleId = $module->id;
$list = modZTLatestNewsHelper::getList($params);
require(JModuleHelper::getLayoutPath('mod_zt_latestnews'));