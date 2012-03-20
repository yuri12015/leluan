<?php
/**
 * @package ZT Contact pro module for Joomla
 * @author http://www.zootemplate.com
 * @copyright (C) 2010- ZooTemplate.Com
 * @license PHP files are GNU/GPL
**/
define( 'DS', DIRECTORY_SEPARATOR );
$rootFolder = explode(DS,dirname(__FILE__));
//current level in diretoty structure
$currentfolderlevel = 2;
array_splice($rootFolder,-$currentfolderlevel);
$base_folder = implode(DS,$rootFolder);
if(is_dir($base_folder.DS.'libraries'.DS.'joomla')) {
	define( '_JEXEC', 1 );
	define('JPATH_BASE',implode(DS,$rootFolder));
	require_once ( JPATH_BASE .DS.'includes'.DS.'defines.php' );
	require_once ( JPATH_BASE .DS.'includes'.DS.'framework.php' );
	require_once(JPATH_BASE .DS.'libraries/joomla/factory.php');
	require_once( JPATH_ROOT . DS . 'modules' . DS . 'mod_zt_contact_pro' . DS . 'assets' . DS . 'recaptchalib.php' );
	$app =& JFactory::getApplication('site');  
	$db		=& JFactory::getDBO();
	jimport('joomla.filesystem.file');
	$config	=& JFactory::getConfig();
	$curLang	= JRequest::getVar('lang');
	 //Load common language files
	$lang 		=& JFactory::getLanguage();
	$lang->load('mod_zt_contact_pro', JPATH_BASE);
	
	class ZTContact{
		var $moduleId;	
		function __construct($moduleId){
			$this->moduleId = $moduleId;
		}
		function sendMail(){
			global $mainframe;
			jimport( 'joomla.mail.helper' );	
			$db	=& JFactory::getDBO();
			$sql = "SELECT params FROM #__modules WHERE id=$this->moduleId";
			$db->setQuery($sql);
			$data = $db->loadResult(); 
			$params = new JRegistry($data); 
			$adminEmail = $params->get('email');
			$subject	= $params->get('subject');
			$publickey  = $params->get('publickey');
			$privatekey = $params->get('privatekey');
			$success    = $params->get('success');
			$unsuccess    = $params->get('unsuccess');
			$displayrecapcha = $params->get('recapcha');
			$formmail 	= $params->get('formmail');
			if($displayrecapcha>0){
				$resp = recaptcha_check_answers (
					$privatekey,
					$_SERVER["REMOTE_ADDR"],
					$_POST["recaptcha_challenge_field"],
					$_POST["recaptcha_response_field"]
				);
				if (!$resp->is_valid) {
					echo $msg = JText::_('CAPCHAVALID');
					return FALSE;
				}
			}
			$mailform = $this->renderMailform($formmail, $this->moduleId);
			$from = JRequest::getVar('email');
			$valid=1;
			if (JUtility::sendMail($from, '', $adminEmail, $subject, $mailform, $mode=1) !== true)
			{
				echo $msg	= $unsuccess;
				$valid=0;
			}else{
				echo $msg	= $success;
			}
			
			return $valid;
		}
		
		function renderMailform($formmail, $moduleId){
			$db = & JFactory::getDBO();
			$folder ='../../modules/mod_zt_contact_pro/assets/data';
			$file = 'contact'.$moduleId.'.xml';
			if (is_file($folder.DS.$file)) {
				$api_url = JURI::root().'assets/data/contact'.$moduleId.'.xml';
				$xml = simplexml_load_file($api_url);
			}else{
				$api_url = JURI::root().'assets/data/contact.xml';
				$xml = simplexml_load_file($api_url);
			} 
			$values = array();
			$placeholders = array();
			$form = array();
			$elementlist = count($xml->elementList->param);	
			for($i=0; $i<$elementlist; $i++){ 
				$typename = $xml->elementList->param[$i]->fieldname;
				$type = $xml->elementList->param[$i]->type;
				$typetitle = $xml->elementList->param[$i]->fieldtitle;
				$multi = $xml->elementList->param[$i]->multi;
				//type name title
				$form[] = JRequest::getVar(''.$typename.'');
				if($form[$i]){
					$placeholders[] = '{'.$typename.':title'.'}';
					$values[] = isset($typename) ? $typetitle : '';
					//type name value
					$placeholders[] = '{'.$typename.':value'.'}';
					if($type == 'selected' && $multi>0 || $type =='checkbox'){
						$getvalue ='';
						$n=0;
						$m = count($form[$i]);
						foreach ($form[$i] as $itemvalue){
							$n++;
							if($n==''.$m.''){
								$getvalue .= $itemvalue;
							}else{
								if($itemvalue!=''){
									$getvalue .= $itemvalue.',';
								}
							}
						}
						$values[] = $getvalue;
					}else{ 
						$values[] = $form[$i];
					}
				}else{  
					$order   = array("{".$typename.":title}:{".$typename.":value}", "{".$typename.":title}", "{".$typename.":value}");
					$replace = ''; 
					$formmail = str_replace($order, $replace, $formmail);
				}
			} 
			$formmail = @str_replace($placeholders, $values, $formmail); 
			return $formmail;
		}
		
	}	
	$module_id = $_POST['module_id'];
	$ztContact = new ZTContact($module_id);
	$valid = $ztContact->sendMail();
}
?>