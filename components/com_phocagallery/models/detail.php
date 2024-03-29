<?php
/*
 * @package Joomla 1.5
 * @copyright Copyright (C) 2005 Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 *
 * @component Phoca Gallery
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
defined('_JEXEC') or die();
jimport('joomla.application.component.model');
phocagalleryimport('phocagallery.access.access');
phocagalleryimport('phocagallery.ordering.ordering');

class PhocaGalleryModelDetail extends JModel
{

	function __construct() {
		parent::__construct();
		$app				= JFactory::getApplication();
		$id = JRequest::getVar('id', 0, '', 'int');
		
		$this->setState('filter.language',$app->getLanguageFilter());
		$this->setId((int)$id);
	}
	
	function setId($id) {
		$this->_id			= $id;
		$this->_data		= null;
	}
	
	function &getData() {
		if (!$this->_loadData()) {
			$this->_initData();
		}
		return $this->_data;
	}
	
	function _loadData() {
		
		if (empty($this->_data)) {
			$app				= JFactory::getApplication();
			$params				= &$app->getParams();
			//$image_ordering		= $params->get( 'image_ordering', 1 );
			//$imageOrdering 		= PhocaGalleryOrdering::getOrderingString($image_ordering);
			
			
			
			$whereLang = '';
			if ($this->getState('filter.language')) {
				$whereLang =  ' AND a.language IN ('.$this->_db->Quote(JFactory::getLanguage()->getTag()).','.$this->_db->Quote('*').')';
			}
			
			
			$selectUser	= ' ua.id AS userid, ua.username AS username, ua.name AS usernameno,';
			$leftUser 	= ' LEFT JOIN #__users AS ua ON ua.id = a.userid';
			

			$query = 'SELECT a.*, c.accessuserid as cataccessuserid, c.access as cataccess,'
					. $selectUser
					.' CASE WHEN CHAR_LENGTH(c.alias) THEN CONCAT_WS(\':\', c.id, c.alias) ELSE c.id END as catslug,'
					.' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(\':\', a.id, a.alias) ELSE a.id END as slug'
					.' FROM #__phocagallery AS a'
					.' LEFT JOIN #__phocagallery_categories AS c ON c.id = a.catid'
					. $leftUser
					.' WHERE a.id = '.(int) $this->_id
					. $whereLang
					.' AND a.published > 0'
					.' AND a.approved > 0';
					//.' ORDER BY a.'.$imageOrdering;
			$this->_db->setQuery($query);
			$this->_data = $this->_db->loadObject();
			return (boolean) $this->_data;	
		}
		return true;
	}
	
	function _initData() {
		if (empty($this->_data)) {
			$this->_data = '';
			return (boolean) $this->_data;
		}
		return true;
	}
	
	function hit($id) {
		$table = & JTable::getInstance('phocagallery', 'Table');
		$table->hit($id);
		return true;
	}
	
	function rate($data) {
		$row =& $this->getTable('phocagalleryimgvotes', 'Table');
		
		if (!$row->bind($data)) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		$row->date 		= gmdate('Y-m-d H:i:s');

		$row->published = 1;

		if (!$row->id) {
			$where = 'imgid = ' . (int) $row->imgid ;
			$row->ordering = $row->getNextOrder( $where );
		}

		if (!$row->check()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		if (!$row->store()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		
		// Update the Vote Statistics
		phocagalleryimport('phocagallery.rate.rateimage');
		if (!PhocaGalleryRateImage::updateVoteStatistics( $data['imgid'])) {
			return false;
		}
		
		return true;
	}
}
?>
