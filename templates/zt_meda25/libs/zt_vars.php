<?php
/**
* @version 1.5.x
* @package ZooTemplate Project
* @email webmaster@zootemplate.com
* @copyright (C) 2011 http://www.ZooTemplate.com. All rights reserved.
*/

/* 
 *DEFINE 
 */
defined( '_JEXEC' ) or die( 'Restricted access' );

$ztconfig = new JConfig();
$menustyle = $this->params->get('zt_menustyle');

$ztTools = new ZT_Tools($this);
///-----------------------------------------------------///

$ztcolorstyle = "ZTMeda25StyleCookieSite";

$get_ms 	= JRequest::getVar('menustyle');
$cookie_ms 	= $ztTools->get_cookie('ztmenustyle_meda25');

$get_rtl 	= JRequest::getVar('direction');
$cookie_rtl = $ztTools->get_cookie('zt_rtl_meda25');

if( $cookie_ms && $cookie_ms != "" )
	$menustyle = $cookie_ms;

if($get_ms){
	$menustyle = $get_ms;
	$ztTools->set_cookie('ztmenustyle_meda25',$get_ms);
}

if($this->params->get('zt_rtl')) {
	$ztrtl = 'rtl';
} else {
	$ztrtl = 'ltr';
}

if( $cookie_rtl && $cookie_rtl != "" )
	$ztrtl = $cookie_rtl;

if($get_rtl && ($get_rtl == 'rtl' || $get_rtl == 'ltr') ) {
	$ztrtl = $get_rtl;
	$ztTools->set_cookie('zt_rtl_meda25',$get_rtl);
}

/*
 * Behavior 
 */
JHTML::_('behavior.mootools');

/*
 * VARIABLES 
 */
$default_menu 	= $this->params->get('menutype');
//Fancy menu
$fancy 			= $this->params->get('fancy', 0);
$transition		= $this->params->get('transition', 'Fx.Transitions.linear');
$duration		= $this->params->get('duration', 500);
$xdelay			= $this->params->get('xdelay', 700);
$xduration		= $this->params->get('xduration', 2000);
$xtransition	= $this->params->get('xtransition', 'Fx.Transitions.Bounce.easeOut');

if(!$default_menu)$default_menu = 'mainmenu';


//Mobile block
if($ztTools->getParam('zt_mobile')) {
	$browser   = new Browser();
	$myBrowser = $browser->isMobile();
	$isMobile  = $browser->isMobile();
	$getViewType    = JRequest::getVar('ismobile');
	$cookieViewType = $ztTools->get_cookie('meda25_ismobile');

	if($getViewType != NULL){
		$myBrowser = $getViewType;
		$ztTools->set_cookie('meda25_ismobile', $myBrowser);
	} else if($cookieViewType && $cookieViewType != "") {
		$myBrowser = $cookieViewType;
	} else {
		$ztTools->set_cookie('meda25_ismobile', $myBrowser);
	}

	if($myBrowser) {
		$menustyle = "drill";
	}
}
//End block


$menu = new MenuSystem($menustyle, $default_menu, $this->template, $ztrtl, $fancy, $transition, $duration, $xdelay, $xduration, $xtransition);

///-----------------------------------------------------/// 
$showTools = $this->params->get('showtools',1);
/*
 *Auto Collapse Divs Functions
 */ 
$modLeft = $this->countModules('left');
$modRight = $this->countModules('right');

if(!$modLeft && !$modRight) {
	$zt_width = "-full";
} elseif(!$modRight) {
	$zt_width = "-left";
} elseif(!$modLeft) {
	$zt_width = "-right";
} else {
	$zt_width = "";
}

if($this->countModules('slideshow')){
	$slide =  "slide";
}else{
	$slide =  "no-slide";
}	
$changecolor = '
	<img id="ztcolor1" src="'.$ztTools->templateurl().'/images/color_1.png" alt="'.JText::_('DEFAULT').'" title="'.JText::_('DEFAULT').'" />
	<img id="ztcolor2" src="'.$ztTools->templateurl().'/images/color_2.png" alt="'.JText::_('BLUE').'" title="'.JText::_('BLUE').'" />
	<img id="ztcolor3" src="'.$ztTools->templateurl().'/images/color_3.png" alt="'.JText::_('GREEN').'" title="'.JText::_('GREEN').'" />';

$changefont = '';

?>