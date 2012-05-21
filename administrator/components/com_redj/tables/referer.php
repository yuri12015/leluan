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
defined('_JEXEC') or die('Restricted access');

// import Joomla table library
jimport('joomla.database.table');

/**
* ReDJ Referer Table class
*
* @package ReDJ
*
*/
class ReDJTableReferer extends JTable
{
 function __construct(& $db) {
  parent::__construct('#__redj_referers', 'id', $db);
 }

}
?>
