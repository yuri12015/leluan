<?php
/**
 * @package ZT Headline module for Joomla! 1.7
 * @author http://www.zootemplate.com
 * @copyright (C) 2011- ZooTemplate.Com
 * @license PHP files are GNU/GPL
**/
defined('_JEXEC') or die('Restricted access');
JHTML::_('behavior.mootools');
$document 	= JFactory::getDocument(); 
$document->addStyleSheet(JURI::base() . 'modules/mod_zt_headline/assets/css/zt_eoty.css');
$document->addScript(JURI::base() . 'modules/mod_zt_headline/assets/js/zt_eoty.js');

$cssMod = "width:".$params->get('jveoty_width',960)."px;height:".$params->get('jveoty_height',337)."px";
?>
<script type="text/javascript">
	var startSlideshow<?php echo $moduleId; ?> = function() {
	var ztEoty = new ZTSlideEoty({
		container:'slider<?php echo $moduleId; ?>',
		slices:<?php echo (int)$params->get('jveoty_no_slice',15); ?>,
		effect:'<?php echo $params->get('jveoty_effect_type','random'); ?>',
		autoRun:<?php echo$params->get('jveoty_autorun',1); ?>,
		directionNav:<?php echo $params->get('jveoty_enable_btn',1); ?>,
		enableDes:<?php echo $params->get('jveoty_enable_description',1); ?>,
		heightDesc:<?php echo $params->get('jveoty_height_des',50); ?>
	}); 
};
window.addEvent('load',startSlideshow<?php echo $moduleId; ?>);
</script>
<div style="display: none;"><a title="Joomla Templates" href="http://www.zootemplate.com">Joomla Templates</a> and Joomla Extensions by ZooTemplate.Com</div>
<div class="jv_eoty_wrap" style="<?php echo $cssMod; ?>">
	<div class="eotySlider" id="slider<?php echo $moduleId; ?>">
		<?php foreach($slides as $item) { ?>
			<?php if($item->thumbl) { ?><img src="<?php echo $item->thumbl; ?>" alt="" /> <?php } ?>
		<?php } ?>
		<?php foreach($slides as $item) { ?>
			<div class="description" style="display:none">
				<?php if($params->get('jveoty_enable_link_article')) { ?>
				<h2><a href="<?php echo $item->link; ?>"><?php echo $item->title; ?></a></h2>
				<?php } else { ?>
				<h2><?php echo $item->title; ?></h2>	
				<?php } ?>
				<p><?php echo $item->introtext; ?></p>
			</div>
		<?php } ?>
	</div>
</div>