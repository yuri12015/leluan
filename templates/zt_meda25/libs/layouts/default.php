<?php
/**
 * @copyright	Copyright (C) 2008 - 2011 ZooTemplate.com. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>">
<head>
	<jdoc:include type="head" />
	<?php JHTML::_('behavior.mootools'); ?>
	<?php JHTML::_('behavior.caption',true); ?>
	<?php
		$document = JFactory::getDocument();
		$document->addStyleSheet($ztTools->baseurl() . 'templates/system/css/system.css');
		$document->addStyleSheet($ztTools->baseurl() . 'templates/system/css/general.css');
		$document->addStyleSheet($ztTools->templateurl() . 'css/default.css');
		$document->addStyleSheet($ztTools->templateurl() . 'css/template.css');
		$document->addStyleSheet($ztTools->templateurl() . 'css/modules.css');
		$document->addStyleSheet($ztTools->templateurl() . 'css/typo.css');
		if($ztrtl == 'rtl') {
			$document->addStyleSheet($ztTools->templateurl() . 'css/template_rtl.css');
			$document->addStyleSheet($ztTools->templateurl() . 'css/typo_rtl.css');
		}
		if($ztTools->getParam('zt_fontfeature')) {
			$document->addStyleSheet($ztTools->templateurl() . 'css/fonts.css');
		}
		if($this->params->get('zt_change_color')) {
			$document->addScript($ztTools->templateurl() . 'js/zt.script.js');
		}
		$document->addStyleSheet($ztTools->templateurl() . 'css/css3.css');
	?>
	<script type="text/javascript">
		<?php if($this->params->get('zt_change_color')) { ?>
		var baseurl = "<?php echo $ztTools->baseurl() ; ?>";
		var ztpathcolor = '<?php echo $ztTools->templateurl(); ?>css/colors/';
		var tmplurl = '<?php echo $ztTools->templateurl();?>';
		var CurrentFontSize = parseInt('<?php echo $ztTools->getParam('zt_font');?>');
		<?php } ?>
		window.addEvent ('load', function() {
		 if($('ztbacktotop')) {
		  var winScroller = new Fx.Scroll(window);
		  $('ztbacktotop').addEvent('click', function(e) {
		   e = new Event(e).stop();
		   winScroller.toTop();
		  });
		 }
		});
	</script>
	<?php if($this->params->get('zt_change_color')) { ?>
	<link href="<?php echo $ztTools->parse_ztcolor_cookie($ztcolorstyle); ?>" rel="stylesheet" type="text/css" />
	<?php } ?>
	<!--[if IE 8]>
	<link rel="stylesheet" href="<?php echo $ztTools->templateurl(); ?>css/ie8.css" type="text/css" />
	<![endif]-->
	<!--[if lte IE 7]>
	<link rel="stylesheet" href="<?php echo $ztTools->templateurl(); ?>css/ie7.css" type="text/css" />
	<![endif]-->
</head>
<body id="bd" class="fs<?php echo $ztTools->getParam('zt_font'); ?> <?php echo $ztTools->getParam('zt_display'); ?> <?php echo $ztTools->getParam('zt_display_style'); ?> <?php echo $ztrtl; ?>  <?php echo $ztTools->getParamsValue($prefix, 'image', 'bd');?>">
<div id="zt-wrapper">
	<div id="zt-wrapper-inner" class="clearfix">
		<!-- HEADER -->
		<div id="zt-header" class="clearfix">
			<div class="zt-wrapper">
				<div id="zt-header-inner">
					<a  id="zt-logo" href="<?php echo $ztTools->baseurl() ; ?>" title="<?php echo $ztTools->sitename() ; ?>"><span><?php echo $ztTools->sitename() ; ?></span></a>
					<?php if($this->countModules('search')) : ?>
						<div id="zt-search">
							<jdoc:include type="modules" name="search" />
						</div>	
					<?php endif; ?>	
					<div id="zt-mainmenu" class="clearfix">			
						<?php $menu->show(); ?>
					</div>
				</div>
			</div>
		</div>
		<!-- END HEADER -->	
		<?php if($this->countModules('slideshow')) : ?>
			<!-- Slide Show -->		
			<div id="zt-slideshow" class="clearfix">
				<div class="zt-wrapper">
					<div id="zt-slideshow-inner">
						<jdoc:include type="modules" name="slideshow" />
					</div>
				</div>	
			</div>	
			<!-- #Slide Show -->
		<?php endif; ?>
		<!--main frame-->
		<div id="zt-mainframe" class="clearfix   <?php echo $ztTools->getPageClassSuffix(); ?>  zt-layout<?php echo $ztTools->getParam('zt_layout'); ?>">
			<div id="zt-mainframe-inner1" class="clearfix ">
				<div id="zt-mainframe-inner2" class="clearfix ">
					<?php if($this->countModules('col1')) : ?>
						<div id="zt-col1">
							<div class="left"></div>
							<div class="center">	
								<jdoc:include type="modules" name="col1" style="ztlogin" />
							</div>
							<div class="right"></div>
						</div>	
					<?php endif; ?>	
					<?php if($this->countModules('col2')) : ?>
						<div id="zt-col2" class="clearfix">
							<div id="zt-col2-inner">
								<jdoc:include type="modules" name="col2"  />
							</div>		
						</div>		
					<?php endif; ?>	
					
					<?php
						$spotlight1 = array ('user1','user2','user3','user4');
						$botsl1 = $ztTools->calSpotlight($spotlight1,$ztTools->isOP()?100:100, '%');
						if( $botsl1) :
					?>	
					<div id="zt-userwrap1" class="clearfix">
						<div class="zt-wrapper">
							<div id="zt-userwrap1-inner">
								<?php if($this->countModules('user1')) : ?>
								<div id="zt-user1" class="zt-user zt-box<?php echo $botsl1['user1']['class']; ?>" style="width: <?php echo $botsl1['user1']['width']; ?>;">
									<div class="zt-box-inside">
										<jdoc:include type="modules" name="user1" style="ztxhtml" />
									</div>
								</div>
								<?php endif; ?>
								<?php if($this->countModules('user2')) : ?>
								<div id="zt-user2" class="zt-user zt-box<?php echo $botsl1['user2']['class']; ?>" style="width: <?php echo $botsl1['user2']['width']; ?>;">
									<div class="zt-box-inside">
										<jdoc:include type="modules" name="user2" style="ztxhtml" />
									</div>
								</div>
								<?php endif; ?>
								<?php if($this->countModules('user3')) : ?>
								<div id="zt-user3" class="zt-user zt-box<?php echo $botsl1['user3']['class']; ?>"  style="width: <?php echo $botsl1['user3']['width']; ?>;">
									<div class="zt-box-inside">
										<jdoc:include type="modules" name="user3" style="ztxhtml" />
									</div>
								</div>
								<?php endif; ?>
								
								<?php if($this->countModules('user4')) : ?>
								<div id="zt-user4" class="zt-user zt-box<?php echo $botsl1['user4']['class']; ?>"  style="width: <?php echo $botsl1['user4']['width']; ?>;">
									<div class="zt-box-inside">
										<jdoc:include type="modules" name="user4" style="ztxhtml" />
									</div>
								</div>
								<?php endif; ?>
							</div>
						</div>	
					</div>	
					<?php endif; ?>
					
					
					<div class="zt-wrapper">
						<div id="zt-mainframe-inner">
							<a href="javascript:void();" id="ztbacktotop"><span>Back To Top</span></a>
							<!-- CONTAINER -->
							<div id="zt-container<?php echo $zt_width; ?>" class="clearfix">
								
									<div id="zt-content">
										<div id="zt-component" class="clearfix">
											<jdoc:include type="message" />
											<jdoc:include type="component" />
										</div>
									</div>
									<?php   if($this->countModules('left')) : ?>
									<div id="zt-left">
										<div id="zt-left-inner">
											<jdoc:include type="modules" name="left" style="ztxhtml" />
										</div>
									</div>
									<?php endif; ?>
									<?php   if($this->countModules('right')) : ?>
									<div id="zt-right">
										<div id="zt-right-inner">
											<jdoc:include type="modules" name="right" style="ztxhtml" />
										</div>
									</div>
									<?php endif; ?>
							</div>
							<!-- END CONTAINER -->	
							<?php if($this->countModules('col3')) : ?>
								<div id="zt-col3" class="clearfix">
									<div id="zt-col3-inner">
										<jdoc:include type="modules" name="col3"  />
									</div>		
								</div>		
							<?php endif; ?>	
							<?php
								$spotlight2 = array ('user5','user6','user7','user8');
								$botsl2 = $ztTools->calSpotlight($spotlight2,$ztTools->isOP()?100:100, '%');
								if($botsl2) :
							?>	
							<div id="zt-userwrap2" class="clearfix">
								<div class="zt-wrapper">
									<div id="zt-userwrap2-inner">
										<?php if($this->countModules('user5')) : ?>
										<div id="zt-user5" class="zt-user zt-box<?php echo $botsl2['user5']['class']; ?>" style="width: <?php echo $botsl2['user5']['width']; ?>;">
											<div class="zt-box-inside">
												<jdoc:include type="modules" name="user5" style="ztxhtml" />
											</div>
										</div>
										<?php endif; ?>
										<?php if($this->countModules('user6')) : ?>
										<div id="zt-user6" class="zt-user zt-box<?php echo $botsl2['user6']['class']; ?>" style="width: <?php echo $botsl2['user6']['width']; ?>;">
											<div class="zt-box-inside">
												<jdoc:include type="modules" name="user6" style="ztxhtml" />
											</div>
										</div>
										<?php endif; ?>
										<?php if($this->countModules('user7')) : ?>
										<div id="zt-user7" class="zt-user zt-box<?php echo $botsl2['user7']['class']; ?>"  style="width: <?php echo $botsl2['user7']['width']; ?>;">
											<div class="zt-box-inside">
												<jdoc:include type="modules" name="user7" style="ztxhtml" />
											</div>
										</div>
										<?php endif; ?>
										
										<?php if($this->countModules('user8')) : ?>
										<div id="zt-user8" class="zt-user zt-box<?php echo $botsl2['user8']['class']; ?>"  style="width: <?php echo $botsl2['user8']['width']; ?>;">
											<div class="zt-box-inside">
												<jdoc:include type="modules" name="user8" style="ztxhtml" />
											</div>
										</div>
										<?php endif; ?>
									</div>
								</div>	
							</div>	
							<?php endif; ?>
							
						</div>
					</div>
					
					
				</div>
			</div>
		</div>	
		<!--#main frame-->
		
		<?php
			$spotlight5 = array ('user9','user10','user11','user12');
			$botsl5 = $ztTools->calSpotlight($spotlight5,$ztTools->isOP()?100:100, '%');
			if( $botsl5 ) :
		?>	
		<div id="zt-userwrap5" class="clearfix">
			<div class="zt-wrapper">
				<div id="zt-userwrap5-inner">
					<?php if($this->countModules('user9')) : ?>
					<div id="zt-user9" class="zt-user zt-box<?php echo $botsl5['user9']['class']; ?>" style="width: <?php echo $botsl5['user9']['width']; ?>;">
						<jdoc:include type="modules" name="user9" style="ztxhtml" />
					</div>
					<?php endif; ?>
					<?php if($this->countModules('user10')) : ?>
					<div id="zt-user10" class="zt-user zt-box<?php echo $botsl5['user10']['class']; ?>" style="width: <?php echo $botsl5['user10']['width']; ?>;">
						<jdoc:include type="modules" name="user10" style="ztxhtml" />
					</div>
					<?php endif; ?>
					<?php if($this->countModules('user11')) : ?>
					<div id="zt-user11" class="zt-user zt-box<?php echo $botsl5['user11']['class']; ?>"  style="width: <?php echo $botsl5['user11']['width']; ?>;">
						<jdoc:include type="modules" name="user11" style="ztxhtml" />
					</div>
					<?php endif; ?>
					
					<?php if($this->countModules('user12')) : ?>
					<div id="zt-user12" class="zt-user zt-box<?php echo $botsl5['user12']['class']; ?>"  style="width: <?php echo $botsl5['user12']['width']; ?>;">
						<jdoc:include type="modules" name="user12" style="ztxhtml" />
					</div>
					<?php endif; ?>
					<?php if($this->countModules('col4')) : ?>
						<div id="zt-col4">
							<div id="zt-col4-inner">
								<jdoc:include type="modules" name="col4"  />
							</div>		
						</div>		
					<?php endif; ?>	
				</div>
			</div>	
		</div>	
		<?php endif; ?>
		<!-- footer -->
		<div id="zt-footer" class="clearfix">
			<div class="zt-wrapper">
				<div id="zt-footer-inner">
					<div id="zt-copyright">	
						<?php if($ztTools->getParam('zt_footer')) : ?>
						<?php echo $ztTools->getParam('zt_footer_text'); ?>
						<?php else : ?>
						Copyright &copy; 2008 - <?php echo DATE('Y');?> <a href="http://www.zootemplate.com" title="Joomla Templates">Joomla Templates</a> by ZooTemplate.Com. All rights reserved.
						<?php endif; ?>
					</div>
					<?php if($this->countModules('footer')) : ?>
					<div id="zt-footer-menu">	
						<jdoc:include type="modules" name="footer" />
					</div>		
					<?php endif; ?>	
				</div>
			</div>
		</div>		
		<!-- #footer -->
		
		<?php if($this->params->get('zt_change_color')) { ?>
			<div id="zt-color" class="clearfix">
				<div class="zt-wrapper">
					<div id="zt-color-inner">
						<?php echo $changecolor; ?>
					</div>
				</div>
			</div>
		<?php }?>
	</div>
</div>
<jdoc:include type="modules" name="debug" />
</body>
</html>