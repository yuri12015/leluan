<?php
/**
 * @package ZT Highslide Module for Joomla! 1.5
 * @author http://www.ZooTemplate.com
 * @copyright (C) 2011- ZooTemplate.com
 * @license PHP files are GNU/GPL
**/

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die( 'Restricted access' );
jimport('joomla.html.html');
jimport('joomla.form.formfield');//import the necessary class definition for formfield

class JFormFieldhstypelist extends JFormField
{
	/**
	* Element type
	*
	* @access	protected
	* @var		string
	*/
	var	$_name = 'hstypelist';
	

	//protected function getInput($name, $value, &$node, $control_name)
	protected function getInput()
	{	
		$options = array ();
		foreach ($this->element->children() as $option)
		{
			$val	= $option->getAttribute('value');
			$text	= $option->data();
			$options[] = JHTML::_('select.option', $val, JText::_($text));
		}
		$class = ( $this->element->getAttribute('class') ? 'class="'.$this->element->getAttribute('class').'"' : 'class="inputbox"' );
		$class .= " onchange=\"javascript: switchType(this)\"";
		$str = JHTML::_('select.genericlist',  $options, $this->name, $class, 'value', 'text', $this->value, $this->name);		
		$str .= "<script type=\"text/javascript\" language=\"javascript\">				
					function getElementsByTypeX (typeX) {
					  if (!typeX) return;
					  var els=[];					 
					  $$(document.adminForm.elements).each(function(el){ 
						if (el.id.test(typeX+'_')) els.push(el);
					  });
					  return els;
					}
					
					function switchType (slCtrol) {
						seldel = slCtrol.options[slCtrol.selectedIndex];
						groupsel = seldel.value.split('-')[0];
					  $$(slCtrol.options).each(function (el) {
					  	var typeX = el.value.split('-')[0];
  						var typeXs = getElementsByTypeX (typeX);
						//alert(typeXs);
  						if (!typeXs) return;
						var disabled = (groupsel==typeX)?'':'disabled';
  						typeXs.each(function(g){
  							g.disabled = disabled;
  						});
					  });
					}
					
					function disableAllEls(){
					  var selectct = $('jformparamstype');
					  switchType(selectct);
					}

					function initialize() {
					   disableAllEls();
					   document.adminForm.onsubmit = enableAllEls;
					}

					function enableAllEls(){
					  var selectct = $('jformparamstype');
					  $$(selectct.options).each(function (el) {
					  	var typeX = el.value.split('-')[0];
  						var typeXs = getElementsByTypeX (typeX);
  						if (!typeXs) return;
  						typeXs.each(function(g){
  							g.disabled = '';
  						});
					  });
					}

					window.addEvent('load', initialize);
				</script>";
		return $str;
	}

	
 
	}
?>
