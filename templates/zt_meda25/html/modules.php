<?php
/**
 * @version		$Id: modules.php 10381 2008-06-01 03:35:53Z pasamio $
 * @package		Joomla
 * @copyright	Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

/*
 * Module chrome that allows for rounded corners by wrapping in nested div tags
 */
function modChrome_ztxhtml($module, &$params, &$attribs)
{
	if (!empty ($module->content)) : ?>
		<div class="moduletable <?php echo $params->get('moduleclass_sfx'); ?>">
			<?php if ($module->showtitle != 0) : ?>
				<h3 class="moduletitle"><span class="title"><?php echo $module->title; ?></span></h3>
			<?php endif; ?>
			<div class="modulecontent">
				<?php echo $module->content; ?>
			</div>
		</div>
	<?php endif;
}
function modChrome_ztmenu($module, &$params, &$attribs)
{
	if (!empty ($module->content)) : ?>
				<?php echo $module->content; ?>
	<?php endif;
}
function modChrome_ztmobile($module, &$params, &$attribs)
{
	if (!empty ($module->content)) : ?>
		<div class="moduletable<?php echo $params->get('moduleclass_sfx'); ?>">
			<?php if ($module->showtitle != 0) : ?>
				<h3 class="moduletitle"><span><?php echo $module->title; ?></span></h3>
			<?php endif; ?>
			<div class="modulecontent">
				<?php echo $module->content; ?>
			</div>
		</div>
	<?php endif;
}
function modChrome_ztlogin($module, &$params, &$attribs)
{
	if (!empty ($module->content)) : ?>
		<?php if($params->get('moduleclass_sfx') !=''){ ?>	
			<div class="<?php echo $params->get('moduleclass_sfx');?>"></div>
		<?php } ?>
		<?php if ($module->showtitle != 0) : ?>
			<h3 class="moduletitle"><span class="title"><?php echo $module->title; ?></span></h3>
		<?php endif; ?>
		<div class="modulecontent">
			<?php echo $module->content; ?>
		</div>
		
	<?php endif;
}
?>