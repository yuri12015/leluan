<?php
/**
 * @package ZT Headline module for Joomla! 1.7
 * @author http://www.zootemplate.com
 * @copyright (C) 2011- ZooTemplate.Com
 * @license PHP files are GNU/GPL
**/
defined('JPATH_BASE') or die();
jimport('joomla.html.html');
jimport('joomla.access.access');
jimport('joomla.form.formfield');
/**
 * Renders a list element
 *
 */

class JFormFieldrmcache extends JFormField
{
	/**
	 * Element type
	 *
	 * @access	protected
	 * @var		string
	 */
	protected $type = 'rmcache';
	//var	$_name = 'stylies';

	protected function getInput()
	{
		//Get value of layout style from database
		$db = &JFactory::getDBO();
		$cId = JRequest::getVar('cid','');
		
		if($cId !='') $cId = $cId[0];
		if($cId == ''){
			$cId = JRequest::getVar('id');
		}
		$url = JURI::root().'modules/mod_zt_headline/elements/ajaxcache.php?id='.$cId;
		$html = '<input type="button" id="rmcache" value="Delete Cache" name="rmcache" />';  
?>
		<script type="text/javascript">	
			window.addEvent('domready', function(){
				$('rmcache').addEvent('click', function(el){
					new Request.HTML({
					  url: '<?php echo $url;?>',
					  data: $('module-form'),
					  method: 'post',
					  onComplete: function(el) {
							alert('Remove cache complete');
					  }
					}).send(); 
				});
			});
		</script>
		<?php
		return $html;
	}
}
