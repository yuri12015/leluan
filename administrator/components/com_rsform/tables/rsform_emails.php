<?php
/**
* @version 1.4.0
* @package RSform!Pro 1.4.0
* @copyright (C) 2007-2011 www.rsjoomla.com
* @license GPL, http://www.gnu.org/copyleft/gpl.html
*/

defined('_JEXEC') or die('Restricted access');

class TableRSForm_Emails extends JTable
{
	/**
	 * Primary Key
	 *
	 * @var int
	 */
	
	var $id = null;
	var $formId = null;
	var $from = null;
	var $fromname = null;
	var $replyto = null;
	var $to = null;
	var $cc = null;
	var $bcc = null;
	var $subject = null;
	var $mode = 1;
	var $message = null;
		
	/**
	 * Constructor
	 *
	 * @param object Database connector object
	 */
	function TableRSForm_Emails(& $db)
	{
		parent::__construct('#__rsform_emails', 'id', $db);
	}
}