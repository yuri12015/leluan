<?php
/**
 * @package ZT Headline module for Joomla! 1.7
 * @author http://www.zootemplate.com
 * @copyright (C) 2011- ZooTemplate.Com
 * @license PHP files are GNU/GPL
**/
defined('JPATH_BASE') or die();
jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');
JFormHelper::loadFieldClass('list');
/**
 * Renders a list element
 *
 */

class JFormFieldStylies extends JFormFieldList
{
	/**
	 * Element type
	 *
	 * @access	protected
	 * @var		string
	 */
	protected $type = 'stylies';
	//var	$_name = 'stylies';

	public function getOptions()
	{
		//Get value of layout style from database
		$db = &JFactory::getDBO();
		$cId = JRequest::getVar('cid','');
		
		if($cId !='') $cId = $cId[0];
		if($cId == ''){
			$cId = JRequest::getVar('id');
		}
		$sql = "SELECT params FROM #__modules WHERE id=$cId";
		$db->setQuery($sql);
		$paramsConfigObj = $db->loadObjectList();
		$db->setQuery($sql);
		$data = $db->loadResult(); 
		$params = new JParameter($data);
		$layoutStyle = $params->get('layout_style','jv_slide1');
		//End get value of layout style
		//$class = ( $node->attributes('class') ? 'class="'.$node->attributes('class').'"' : 'class="inputbox"' );
		$options = array ();
		$val = "jv_slide1";
		$text = "ZT News";
		$options[] = JHTML::_('select.option', $val, JText::_($text));
		$val = "jv_slide2";
		$text = "ZT Eoty";
		$options[] = JHTML::_('select.option', $val, JText::_($text));
		$val = "jv_slide3";
		$text = "ZT Lago";
		$options[] = JHTML::_('select.option', $val, JText::_($text));
		$val = "jv_slide4";
		$text = "ZT Sello2";
		$options[] = JHTML::_('select.option', $val, JText::_($text));
		$val = "jv_slide5";
		$text = "ZT Maju";
		$options[] = JHTML::_('select.option', $val, JText::_($text));
		$val = "jv_slide6";
		$text = "ZT Sello1";
		$options[] = JHTML::_('select.option', $val, JText::_($text));
		$val = "jv_slide7";
		$text = "ZT Slide7";
		$options[] = JHTML::_('select.option', $val, JText::_($text));
		$val = "jv_slide8";
		$text = "ZT Pedon";
		$options[] = JHTML::_('select.option', $val, JText::_($text));
		$val = "jv_slide9";	
		$text = "ZT Boro";
		$options[] = JHTML::_('select.option', $val, JText::_($text));
		$val = "jv_slide10";	
		$text = "ZT Flow";
		$options[] = JHTML::_('select.option', $val, JText::_($text));
		$val = "jv_slide11";	
		$text = "ZT Iner";
		$options[] = JHTML::_('select.option', $val, JText::_($text));
		?>
<script type="text/javascript">	
		var jpaneAutoHeight = function(){
			 $$('.jpane-slider').each(function(item){
			      item.setStyle('height','auto'); 
			  });
			};
		  window.addEvent('load',function(){		     		     
				setTimeout(jpaneAutoHeight,400);	
				var rowNewsHeight = $('jform_params_jv_news_thumbs').getParent();
				for(i=0;i<=6;i++){
					rowNewsHeight.addClass('jv_slide_stylenews');		    	  
					rowNewsHeight = rowNewsHeight.getNext();		    	 
				}
			  
			  	var rowJV2Width = $('jform_params_jv_eoty_thumbs').getParent();
			  	for(i=0;i<=10;i++){
			  		rowJV2Width.addClass('jv_slide_style2');
			  		rowJV2Width = rowJV2Width.getNext();
					}
				var rowJVLagoHeight = $('jform_params_jv_lago_thumbs').getParent();
				for(i=0;i<=13;i++){
					rowJVLagoHeight.addClass('jv_slide_stylelago');
					rowJVLagoHeight = rowJVLagoHeight.getNext();
				}
				var rowJVSello2Height = $('jform_params_jv_sello2_thumbs').getParent();
				for(i=0;i<=10;i++){
					rowJVSello2Height.addClass('jv_slide_stylesello2');
					rowJVSello2Height = rowJVSello2Height.getNext();
				}
				var rowJVSello1Width = $('jform_params_jv_sello1_thumbs').getParent();					
				for(i=0;i<=9;i++){
					rowJVSello1Width.addClass('jv_slide_stylesello1');
					rowJVSello1Width = rowJVSello1Width.getNext();
				}
				var rowJVMajuWidth = $('jform_params_jv_maju_thumbs').getParent();
				for(i=0;i<=8;i++){
					rowJVMajuWidth.addClass('jv_slide_stylemaju');
					rowJVMajuWidth = rowJVMajuWidth.getNext();
				}
				var rowJV7 = $('jform_params_jv_jv7_main_thumbs').getParent();
				for(i=0;i<=6;i++){
					rowJV7.addClass('jv_slide_style7');
					rowJV7 = rowJV7.getNext();
				}
				var rowJVPedon = $('jform_params_jv_pedon_thumbs').getParent();
				for(i=0;i<=8;i++){
					rowJVPedon.addClass('jv_slide_stylepedon');
					rowJVPedon = rowJVPedon.getNext();
				}
				var rowJVHead9 = $('jform_params_jv_jv9_main_thumbs').getParent();
				for(i=0;i<=6;i++){
					rowJVHead9.addClass('jv_slide_style9');
					rowJVHead9 = rowJVHead9.getNext();
				}
				var rowZTflow = $('jform_params_zt_flow_thumbs').getParent();
				for(i=0;i<=9;i++){
					rowZTflow.addClass('jv_slide_styleflow');
					rowZTflow = rowZTflow.getNext();
				}
				var rowZTIner = $('jform_params_zt_iner_thumbs').getParent();
				for(i=0;i<=8;i++){
					rowZTIner.addClass('jv_slide_styleiner');
					rowZTIner = rowZTIner.getNext();
				}
				var jvPedon = $$('.jv_slide_stylepedon');
				var jvNews = $$('.jv_slide_stylenews');
				var jvStyle2 = $$('.jv_slide_style2');	
				var jvLago = $$('.jv_slide_stylelago');     
				var jvSello2 = $$('.jv_slide_stylesello2');
				var jvSello1 = $$('.jv_slide_stylesello1'); 					
				var jvMaju = $$('.jv_slide_stylemaju');
				var jvStyle7 = $$('.jv_slide_style7');
				var jvStyle9 = $$('.jv_slide_style9');
				var jvFlow = $$('.jv_slide_styleflow');
				var jvIner = $$('.jv_slide_styleiner');
				var layout = "<?php echo $layoutStyle; ?>";
				var selectStyle = function(style){				
                switch(style){               
					case "jv_slide1":				
						jvNews.each(function(item){
							item.setStyle('display','');
						}.bind(this));
						jvPedon.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvStyle2.each(function(item){
							item.setStyle('display','none');
						});
						jvLago.each(function(item){
							item.setStyle('display','none');
						});
						jvSello2.each(function(item){
							item.setStyle('display','none');
						});
						jvSello1.each(function(item){
							item.setStyle('display','none');
						});
						jvMaju.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle7.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle9.each(function(item){
							item.setStyle('display','none');
						});
						jvFlow.each(function(item){
							item.setStyle('display','none');
						});
						jvIner.each(function(item){
							item.setStyle('display','none');
						});
					break;
					case "jv_slide2":
						jvNews.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvPedon.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvStyle2.each(function(item){
							item.setStyle('display','');
						});
						jvLago.each(function(item){
							item.setStyle('display','none');
						});
						jvSello2.each(function(item){
							item.setStyle('display','none');
						});
						jvSello1.each(function(item){
							item.setStyle('display','none');
						});
						jvMaju.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle7.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle9.each(function(item){
							item.setStyle('display','none');
						});
						jvFlow.each(function(item){
							item.setStyle('display','none');
						});
						jvIner.each(function(item){
							item.setStyle('display','none');
						});
					break;
					case "jv_slide3":
						jvNews.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvPedon.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvStyle2.each(function(item){
							item.setStyle('display','none');
						});
						jvLago.each(function(item){
							item.setStyle('display','');
						});
						jvSello2.each(function(item){
							item.setStyle('display','none');
						});
						jvSello1.each(function(item){
							item.setStyle('display','none');
						});
						jvMaju.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle7.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle9.each(function(item){
							item.setStyle('display','none');
						});
						jvFlow.each(function(item){
							item.setStyle('display','none');
						});
						jvIner.each(function(item){
							item.setStyle('display','none');
						});
					break;
					case "jv_slide4":
						jvNews.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvPedon.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvStyle2.each(function(item){
							item.setStyle('display','none');
						});
						jvLago.each(function(item){
							item.setStyle('display','none');
						});
						jvSello2.each(function(item){
							item.setStyle('display','');
						});
						jvSello1.each(function(item){
							item.setStyle('display','none');
						});
						jvMaju.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle7.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle9.each(function(item){
							item.setStyle('display','none');
						});
						jvFlow.each(function(item){
							item.setStyle('display','none');
						});
						jvIner.each(function(item){
							item.setStyle('display','none');
						});
					break;
					case "jv_slide5":
						jvNews.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvPedon.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvStyle2.each(function(item){
							item.setStyle('display','none');
						});
						jvLago.each(function(item){
							item.setStyle('display','none');
						});
						jvSello2.each(function(item){
							item.setStyle('display','none');
						});
						jvSello1.each(function(item){
							item.setStyle('display','none');
						});
						jvMaju.each(function(item){
							item.setStyle('display','');
						});
						jvStyle7.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle9.each(function(item){
							item.setStyle('display','none');
						});
						jvFlow.each(function(item){
							item.setStyle('display','none');
						});
						jvIner.each(function(item){
							item.setStyle('display','none');
						});
					break;
					case "jv_slide6":
						jvNews.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvPedon.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvStyle2.each(function(item){
							item.setStyle('display','none');
						});
						jvLago.each(function(item){
							item.setStyle('display','none');
						});
						jvSello2.each(function(item){
							item.setStyle('display','none');
						});
						jvSello1.each(function(item){
							item.setStyle('display','');
						});
						jvMaju.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle7.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle9.each(function(item){
							item.setStyle('display','none');
						});
						jvFlow.each(function(item){
							item.setStyle('display','none');
						});
						jvIner.each(function(item){
							item.setStyle('display','none');
						});
					break;
					case "jv_slide7":
						jvNews.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvPedon.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvStyle2.each(function(item){
							item.setStyle('display','none');
						});
						jvLago.each(function(item){
							item.setStyle('display','none');
						});
						jvSello2.each(function(item){
							item.setStyle('display','none');
						});
						jvSello1.each(function(item){
							item.setStyle('display','none');
						});
						jvMaju.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle7.each(function(item){
							item.setStyle('display','');
						});
						jvStyle9.each(function(item){
							item.setStyle('display','none');
						});
						jvFlow.each(function(item){
							item.setStyle('display','none');
						});
						jvIner.each(function(item){
							item.setStyle('display','none');
						});
					break;
					case "jv_slide8":
						jvNews.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvPedon.each(function(item){
							item.setStyle('display','');
						}.bind(this));
						jvStyle2.each(function(item){
							item.setStyle('display','none');
						});
						jvLago.each(function(item){
							item.setStyle('display','none');
						});
						jvSello2.each(function(item){
							item.setStyle('display','none');
						});
						jvSello1.each(function(item){
							item.setStyle('display','none');
						});
						jvMaju.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle7.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle9.each(function(item){
							item.setStyle('display','none');
						});
						jvFlow.each(function(item){
							item.setStyle('display','none');
						});
						jvIner.each(function(item){
							item.setStyle('display','none');
						});
					break;
					case "jv_slide9":
						jvNews.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvPedon.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvStyle2.each(function(item){
							item.setStyle('display','none');
						});
						jvLago.each(function(item){
							item.setStyle('display','none');
						});
						jvSello2.each(function(item){
							item.setStyle('display','none');
						});
						jvSello1.each(function(item){
							item.setStyle('display','none');
						});
						jvMaju.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle7.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle9.each(function(item){
							item.setStyle('display','');
						});
						jvFlow.each(function(item){
							item.setStyle('display','none');
						});
						jvIner.each(function(item){
							item.setStyle('display','none');
						});
					break;
					case "jv_slide10":
						jvNews.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvPedon.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvStyle2.each(function(item){
							item.setStyle('display','none');
						});
						jvLago.each(function(item){
							item.setStyle('display','none');
						});
						jvSello2.each(function(item){
							item.setStyle('display','none');
						});
						jvSello1.each(function(item){
							item.setStyle('display','none');
						});
						jvMaju.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle7.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle9.each(function(item){
							item.setStyle('display','none');
						});
						jvFlow.each(function(item){
							item.setStyle('display','');
						});
						jvIner.each(function(item){
							item.setStyle('display','none');
						});
					break;
					case "jv_slide11":
						jvNews.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvPedon.each(function(item){
							item.setStyle('display','none');
						}.bind(this));
						jvStyle2.each(function(item){
							item.setStyle('display','none');
						});
						jvLago.each(function(item){
							item.setStyle('display','none');
						});
						jvSello2.each(function(item){
							item.setStyle('display','none');
						});
						jvSello1.each(function(item){
							item.setStyle('display','none');
						});
						jvMaju.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle7.each(function(item){
							item.setStyle('display','none');
						});
						jvStyle9.each(function(item){
							item.setStyle('display','none');
						});
						jvFlow.each(function(item){
							item.setStyle('display','none');
						});
						jvIner.each(function(item){
							item.setStyle('display','');
						});
					break;
				}              
			};
			selectStyle(layout);                          
			$('jform_params_layout_style').addEvent('change',function(){
				selectStyle(this.value);                
			});        
		});		 
		</script>
		<?php
		@array_unshift($options, JHtml::_('select.option', '0', JText::_('--Select--'), 'value', 'text', $value, $control_name.$name));
		return $options;
	}
}
