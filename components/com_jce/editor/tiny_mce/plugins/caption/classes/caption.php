<?php
/**
* @package JCE Captions
* @copyright Copyright (C) 2005 - 2010 Ryan Demmer. All rights reserved.
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see licence.txt
* JCE Captions is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
*/
defined( '_JEXEC' ) or die( 'RESTRICTED' );
// Load class dependencies
wfimport('editor.libraries.classes.plugin');

class WFCaptionPlugin extends WFEditorPlugin
{
	/**
	* Constructor activating the default information of the class
	*
	* @access	protected
	*/
	function __construct(){
		parent::__construct();
	}
	
	/**
	 * Returns a reference to a plugin object
	 *
	 * This method must be invoked as:
	 * 		<pre>  $advlink =AdvLink::getInstance();</pre>
	 *
	 * @access	public
	 * @return	JCE  The editor object.
	 * @since	1.5
	 */
	function &getInstance()
	{
		static $instance;

		if ( !is_object( $instance ) ){
			$instance = new WFCaptionPlugin();
		}
		return $instance;
	}
	
	function display()
	{
		parent::display();

		$document = WFDocument::getInstance();
		$settings = $this->getSettings();

		$document->addScriptDeclaration('CaptionDialog.settings='.json_encode($settings).';');

		$tabs = WFTabs::getInstance(array(
			'base_path' => WF_EDITOR_PLUGIN
		));
		
		// Add tabs
		$tabs->addTab('text', 1);
		$tabs->addTab('container', 1);
		
		// add link stylesheet
		$document->addStyleSheet(array('caption'), 'plugins');
		// add link scripts last
		$document->addScript(array('caption'), 'plugins');
	}
	
	function getSettings()
	{
		$settings = array(
			'defaults' => $this->getDefaults()
		);
		
		return parent::getSettings($settings);
	}
}