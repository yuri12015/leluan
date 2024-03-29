<?php
/**
* @version 1.4.0
* @package RSform!Pro 1.4.0
* @copyright (C) 2007-2011 www.rsjoomla.com
* @license GPL, http://www.gnu.org/copyleft/gpl.html
*/

defined('_JEXEC') or die('Restricted access');

jimport('joomla.form.formfield');

JHTML::_('behavior.tooltip');

class JFormFieldLang extends JFormField
{
	/**
	* Element name
	*
	* @access       protected
	* @var          string
	*/
	protected $type = 'Lang';

	protected function getInput()
	{
		// Construct the various argument calls that are supported.
		$attribs = ' ';
		$attribs .= $this->element['size'] ? ' size="'.(int) $this->element['size'].'"' : '';
		$attribs .= $this->element['class'] ? ' class="'.(string) $this->element['class'].'"' : 'class="inputbox"';
		
		$lang 	   =& JFactory::getLanguage();
		$lang->load('com_rsform');
		$languages = $lang->getKnownLanguages(JPATH_SITE);
		$options   = array();
		$options[] = JHTML::_('select.option', '', JText::_('RSFP_SUBMISSIONS_ALL_LANGUAGES'));
		foreach ($languages as $language => $properties)
			$options[] = JHTML::_('select.option', $language, $properties['name']);

		// Render the HTML SELECT list.
		$return = JHTML::_('select.genericlist', $options, $this->name, $attribs, 'value', 'text', $this->value, $this->id);
		
		return $return;
	}
}
?>