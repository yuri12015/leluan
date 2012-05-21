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

jimport( 'joomla.application.component.view');

/**
 * HTML View class for the ReDJ Referers component
 *
 * @package ReDJ
 *
 */
class ReDJViewReferers extends JView
{
  protected $items;
  protected $pagination;
  protected $state;

  public function display($tpl = null)
  {
    // Initialise variables
    $this->items = $this->get('Items');
    $this->pagination = $this->get('Pagination');
    $this->state = $this->get('State');

    // Check for errors
    if (count($errors = $this->get('Errors'))) {
      JError::raiseError(500, implode("\n", $errors));
      return false;
    }

    $this->addToolbar();
    parent::display($tpl);
  }

  /**
   * Add the page title and toolbar
   *
   * @since  1.6
   */
  protected function addToolbar()
  {
    JToolBarHelper::title(JText::_('COM_REDJ_MANAGER'), 'redj.png');

    require_once JPATH_COMPONENT.'/helpers/redj.php';
    $canDo = ReDJHelper::getActions();

    if ($canDo->get('core.delete')) {
      JToolBarHelper::custom('referers.purge', 'trash.png', 'trash.png', JText::_('COM_REDJ_TOOLBAR_PURGE'), false, false);
      JToolBarHelper::deleteList('', 'referers.delete');
    }

    if ($canDo->get('core.admin')) {
      JToolBarHelper::divider();
      JToolBarHelper::preferences('com_redj');
    }

  }

}
?>
