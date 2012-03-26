<?php 
/**
 * @package ZT Headline module for Joomla! 1.7
 * @author http://www.zootemplate.com
 * @copyright (C) 2011- ZooTemplate.Com
 * @license PHP files are GNU/GPL
**/
JHTML::_('behavior.mootools');
$document 	= JFactory::getDocument(); 
$document->addStyleSheet(JURI::base() . 'modules/mod_zt_headline/assets/css/zt_sello2.css');
$document->addScript(JURI::base() . 'modules/mod_zt_headline/assets/js/zt_sello2.js');

$line = ceil(count($list)/$number_items_per_line);
$padding = 0;
$item_width=($moduleWidth/$number_items_per_line-$padding);
$pl_jvcarousel = "jvcarousel".$moduleId;
$pl_handles = "handles".$moduleId;
$enableLink = $params->get('link_limage'); 
?>
	<script type="text/javascript">
	window.addEvent('load',function(){        
		var slid<?php echo $moduleId;?> = new noobSlide({			
			box: $('<?php echo $pl_jvcarousel?>'),						
			items: document.getElements('.jvcarousel-slide<?php echo $moduleId;?>','<?php echo $pl_jvcarousel; ?>'),
			size: <?php echo $moduleWidth?>,
			handles: document.getElements('.handles_item<?php echo $moduleId;?>','<?php echo $pl_handles; ?>'),
			interval:<?php echo $slideDelay; ?>,
			play: function(delay,direction,wait)
			{				
				delay: 100;
				direction: "next";
				wait: true;
			},
			onWalk: function(currentItem,currentHandle)
			{			
				this.handles.removeClass('active');
				currentHandle.addClass('active');
			},
			autoPlay: <?php echo $params->get('sello2_autorun'); ?>
		});	
		<?php if($showButNext == 1) { ?>
			slid<?php echo $moduleId;?>.addActionButtons('previous',document.getElements('.pre<?php echo $moduleId;?>','<?php echo $pl_handles; ?>'));
        	slid<?php echo $moduleId;?>.addActionButtons('next',document.getElements('.next<?php echo $moduleId;?>','<?php echo $pl_handles; ?>'));
		<?php } ?>
		slid<?php echo $moduleId;?>.play;
	});
	</script>
<div class="mod_jvsello2_headline" style="height:<?php echo $moduleHeight.'px'; ?>; width: <?php echo $moduleWidth.'px'; ?>">	
	
	<div class="jvcarousel_frame" style="height:<?php echo ($moduleHeight).'px'; ?>; width: <?php echo $moduleWidth.'px'; ?>">
		<div class="jvcarousel" id = "<?php echo $pl_jvcarousel; ?>">
		<?php 
		for($i=0;$i<$line;$i++)
		{
			echo "<div id='jvcarousel-slide' class='jvcarousel-slide".$moduleId."' style='width:".$moduleWidth."px'>";
			for($j=0;$j<$number_items_per_line;$j++)
			{	
				if(	isset( $list[$i*$number_items_per_line+$j]))
				{		
					$item = $list[$i*$number_items_per_line+$j];					
					
				?>				
					<div class="jvcarousel-item" style="width: <?php echo $item_width.'px'; ?>" >
						<div class="info">
							<a class="jvcarousel_mtitle" title="" href="<?php echo $item->link;?>"><?php echo $item->title; ?>&nbsp;</a>							
							<?php						
								echo "<p class=\"des\">".$item->introtext."</p>";
							 ?>
							<?php if($showReadmore) { ?>
							<p><a class="readon" title="" href="<?php echo $item->link;?>"><span><?php echo JText::_('Xem thêm'); ?></span></a></p>	  
							<?php } ?>
						</div>
						<?php if($item->thumbs) { ?>
						<?php if($enableLink>0){?> 
              				<a href="<?php echo $item->link; ?>" style="cursor: pointer;"><img alt="<?php echo $item->title?>" src="<?php echo $item->thumbs; ?>" border="0" /> </a>
	              		<?php }else{?>
	                		<img alt="<?php echo $item->title?>" src="<?php echo $item->thumbs; ?>" border="0" /> 
	              		<?php }?>
						<?php } ?>
					</div>
					
					<?php
					
				}
			}
			echo "</div>";
		}
		?>
		</div>
	</div>
	<div class="jvcarousel-pagi clearfix">		
		<div class="jvcarousel-pagi-inner">
					<div class="left"></div>
					<div class="center">
					<p class="buttons handles" id="<?php echo $pl_handles; ?>" >
					<?php 
						for($i=0;$i<$line;$i++)
						{
							$item = $list[$i];
							if($i==0)
							{
								echo "<span id='handles_item' class='handles_item handles_item".$moduleId." active'>  </span>";
							}
							else
							{
								echo "<span id='handles_item' class='handles_item handles_item".$moduleId."' >   </span>";;
							}		
						}
				
					?>
					</p>

				</div>
				<div class="right"></div>
	</div>
	</div>
</div>