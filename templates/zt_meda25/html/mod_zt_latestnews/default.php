<?php // no direct access
defined('_JEXEC') or die('Restricted access'); 
$i = 0;
$count_list = count($list);
?>
<div class="latestnews" style="width:100%">
<?php foreach ($list as $item) :  ?>
	<?php $i++; ?>
	<?php if($i == $count_list) : ?>
	<div class="latestnewsitems last-item" style="width:<?php echo $item->width; ?>%">
	<?php else : ?>
	<div class="latestnewsitems" style="width:<?php echo $item->width; ?>%">
	<?php endif; ?>	
		<div class="newsitems">
			<h4><a href="<?php echo $item->link; ?>" class="latestnews<?php echo $params->get('moduleclass_sfx'); ?>"><?php echo $item->title; ?></a></h4>
			<?php if($params->get('thumb')==1 && $item->thumb) : ?>
			<img class="caption" src="<?php echo $item->thumb; ?>" border="0" alt="<?php echo $item->title; ?>" />
			<?php endif; ?>
			<?php if($params->get('showintro')==1) echo '<p class="des">'.$item->introtext.'</p>'; ?>
			<?php if($params->get('showdate')==1) : ?>
			<span class="latestnewsdate"><?php echo $item->date; ?></span>
			<?php endif; ?>
			<?php if($params->get('readmore')==1) : ?><p class="des"><a href="<?php echo $item->link; ?>" class="readon3"><?php echo JText::sprintf('Xem tiếp...'); ?></a></p><?php endif; ?>
		</div>
	</div>
<?php endforeach; ?>
</div>