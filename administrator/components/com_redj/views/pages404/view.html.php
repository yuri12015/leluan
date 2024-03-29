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

require_once JPATH_COMPONENT.'/helpers/redj.php';

/**
 * HTML View class for the ReDJ Pages 404 component
 *
 * @package ReDJ
 *
 */
class ReDJViewPages404 extends JView
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

    $canDo = ReDJHelper::getActions();

    if ($canDo->get('core.create')) {
      JToolBarHelper::customX('pages404.copy', 'copy.png', 'copy_f2.png', JText::_('COM_REDJ_TOOLBAR_COPY'));
      JToolBarHelper::addNew('page404.add');
    }

    if ($canDo->get('core.edit')) {
      JToolBarHelper::editList('page404.edit');
    }

    JToolBarHelper::divider();

    if ($canDo->get('core.edit.state')) {
      //JToolBarHelper::checkin('pages404.checkin');
      JToolBarHelper::custom('pages404.checkin', 'checkin', '', 'JTOOLBAR_CHECKIN', true);
    }
    if ( $canDo->get('core.delete')) {
      JToolBarHelper::deleteList('', 'pages404.delete');
    }

    JToolBarHelper::divider();

    if ($canDo->get('core.admin')) {
      JToolBarHelper::preferences('com_redj');
    }

  }

}
?>
