<?php
/**
 * ReDJ Community component for Joomla 1.6
 *
 * @author Luigi Balzano (info@sistemistica.it)
 * @package ReDJ
 * @copyright Copyright 2009 - 2011
 * @license GNU Public License
 * @link http://www.sistemistica.it
 * @version 1.6.0
 */

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

// Access check.
if (!JFactory::getUser()->authorise('core.manage', 'com_redj')) {
  return JError::raiseWarning(404, JText::_('JERROR_ALERTNOAUTHOR'));
}

// import Joomla controller library
jimport('joomla.application.component.controller');

// Get an instance of the ReDJ controller
$controller = JController::getInstance('ReDJ');

// Perform the Request task
$controller->execute(JRequest::getCmd('task'));

// Redirect if set by the controller
$controller->redirect();

?>
