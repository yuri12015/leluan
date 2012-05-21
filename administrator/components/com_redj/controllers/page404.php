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
 * ReDJ Controller Page 404
 *
 * @package ReDJ
 *
 */
class ReDJControllerPage404 extends JControllerForm
{
  public function __construct($config = array())
  {
    parent::__construct($config);
    $this->view_list = 'pages404';
  }

}