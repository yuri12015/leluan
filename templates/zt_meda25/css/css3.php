<?php 
/*------------------------------------------------------------------------
* ZT Template 1.5
* ------------------------------------------------------------------------
* Copyright (c) 2008-2011 ZooTemplate. All Rights Reserved.
* @license - Copyrighted Commercial Software
* Author: ZooTemplate
* Websites:  http://www.zootemplate.com
-------------------------------------------------------------------------*/

header('Content-type: text/css; charset: UTF-8');
header('Cache-Control: must-revalidate');
header('Expires: ' . gmdate('D, d M Y H:i:s', time() + 3600) . ' GMT');
$url = $_REQUEST['url']."/css/css3.htc";
$url = str_replace("//","/",$url);
?>
#zt-search .search .button{
	-webkit-border-radius: 15px 15px 15px 15px;
	-moz-border-radius: 15px 15px 15px 15px;
	border-radius: 15px 15px 15px 15px;
	position:relative;
	z-index:1;
	behavior: url(<?php echo $url; ?>);
}
a.readon2 span,
a.readon span,
#menusys_mega li:hover a .menu-title,
#menusys_mega li:active a .menu-title,
#menusys_mega li:focus a .menu-title,
#menusys_mega li a.active .menu-title,
#menusys_mega li a.active:hover .menu-title,
#menusys_mega li a.active:active .menu-title,
#menusys_mega li a.active:focus .menu-title {
	text-shadow:1px 1px 1px #002e40;
	behavior: url(<?php echo $url; ?>);	
}
a.readon2 span:hover,
a.readon span:hover{
	text-shadow:1px 1px 1px #ffffff;
	behavior: url(<?php echo $url; ?>);	
}

#zt-slideshow-inner  .jvcarousel_mtitle{
	text-shadow:0px 0px 1px #000000;
	behavior: url(<?php echo $url; ?>);	
}
#menusys_mega div.items .item,
#menusys_mega .megacol ul li a .menu-title {
	text-shadow:1px 1px 1px #002E40;
	behavior: url(<?php echo $url; ?>);	
}	