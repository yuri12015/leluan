<?php
/**
 * @package ZT Highslide Module for Joomla! 1.5
 * @author http://www.ZooTemplate.com
 * @copyright (C) 2011- ZooTemplate.com
 * @license PHP files are GNU/GPL
**/

// no direct access
defined('_JEXEC') or die('Restricted access');

// Include the helper
require_once (dirname(__FILE__).DS.'helper.php');

$highslideHelper = new highslideHelper($params);

$htmlHighslide = $highslideHelper->getHtmlHighslide($params);

require(JModuleHelper::getLayoutPath('mod_zt_highslide'));