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

jimport('joomla.application.component.controllerform');

/**
 * ReDJ Controller Redirect
 *
 * @package ReDJ
 *
 */
class ReDJControllerRedirect extends JControllerForm
{
  public function save($key = null, $urlVar = null)
  {
    // Check for request forgeries.
    JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));

    // Fill the form data with checkbox values
    $data = JRequest::getVar('jform', array(), 'post', 'array');
    $data['case_sensitive'] = array_key_exists('case_sensitive', $data) ? 1 : 0;
    $data['request_only'] = array_key_exists('request_only', $data) ? 1 : 0;
    $data['decode_url'] = array_key_exists('decode_url', $data) ? 1 : 0;
    $data = JRequest::setVar('jform', $data, 'post', true);

    return parent::save($key, $urlVar);
  }

}