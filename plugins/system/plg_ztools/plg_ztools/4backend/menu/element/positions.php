<?php
/*
# ------------------------------------------------------------------------
# ZTTools plugin for Joomla 2.5.0
# ------------------------------------------------------------------------
# Copyright(C) 2008-2012 www.zootemplate.com. All Rights Reserved.
# @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
# Author: ZooTemplate
# Websites: http://www.zootemplate.com
# ------------------------------------------------------------------------
*/


// Ensure this file is being included by a parent file
defined('_JEXEC') or die( 'Restricted access');

/**
 * Radio List Element
 *
 * @since      Class available since Release 1.2.0
 */
class JFormFieldPositions extends JFormField
{
	/**
	 * Element name
	 *
	 * @access	protected
	 * @var		string
	 */
	protected $type = 'Positions';

	function getInput()
	{
		if(!defined('ZT_PARAM_HELPER'))
		{
			define('ZT_PARAM_HELPER', 1);
			$uri = str_replace(DS,"/",str_replace( JPATH_SITE, JURI::base(), dirname(__FILE__)));
			$uri = str_replace("/administrator/", "", $uri);
			JHTML::_('behavior.mootools');
			JHTML::script($uri.'/assets/js/ztparamhelper.js');
			?>
			<script type="text/javascript">
				window.addEvent( "load", function(){
					var obj = null;
					var options = document.adminForm.elements['jform[params][mega_subcontent]'];
					for(var i=0; i<options.length; i++){
						options[i].addEvent("click", function(){
							updateFormMenu(this, true);
						});
						if(options[i].checked){
							obj = options[i];
						}
					}
					updateFormMenu(obj, false);
				});		
			</script>
	<?php	
		}
		$db 	= &JFactory::getDBO();
		$query 	= "SELECT DISTINCT position FROM #__modules ORDER BY position ASC";
		$db->setQuery($query);
		$groups = $db->loadObjectList();
		
		$groupHTML = array();	
		if($groups && count($groups))
		{
			foreach($groups as $v=>$t)
			{
				$groupHTML[] = JHTML::_('select.option', $t->position, $t->position);
			}
		}
		$lists = JHTML::_('select.genericlist', $groupHTML, $this->name.'[]', ' multiple="multiple"  size="10" ', 'value', 'text', $this->value);
		return $lists;
	}
}
?>