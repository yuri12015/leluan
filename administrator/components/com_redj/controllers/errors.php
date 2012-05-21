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

// import Joomla controlleradmin library
jimport('joomla.application.component.controlleradmin');

/**
 * ReDJ Controller Errors
 *
 * @package ReDJ
 *
 */
class ReDJControllerErrors extends JControllerAdmin
{
    public function __construct($config = array())
    {
        parent::__construct($config);

        // Register Extra tasks
        $this->registerTask('purge', 'purge');
    }

    public function purge()
    {
        // Check for request forgeries
        JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));

        $model = $this->getModel('error');
        if(!$model->purge()) {
          JError::raiseWarning(500, $model->getError());
        }

        $this->setRedirect( 'index.php?option=com_redj&view=errors' );
    }

    /**
     * Proxy for getModel
     * @since  1.6
     */
    public function getModel($name = 'Error', $prefix = 'ReDJModel', $config = array('ignore_request' => true))
    {
      $model = parent::getModel($name, $prefix, $config);

      return $model;
    }

}
?>
