<?php
/**
 * @package ZT Contact pro module for Joomla! 1.6
 * @author http://www.zootemplate.com
 * @copyright (C) 2011- ZooTemplate.Com
 * @license PHP files are GNU/GPL
**/
defined('_JEXEC') or die('Restricted access'); 
$document	= &JFactory::getDocument();
$document->addStyleSheet("modules/mod_zt_contact_pro/assets/css/jvform.css"); 
$document->addScript("modules/mod_zt_contact_pro/assets/js/ztValidate.js"); 

require_once (JPATH_SITE.DS.'modules'.DS.'mod_zt_contact_pro'.DS.'assets'.DS.'recaptchalib.php');
$publickey = $params->get('publickey');
$privatekey = $params->get('privatekey');
$displayrecapcha = $params->get('recapcha');
$urlRedirect = $params->get('redirect');
$user = JFactory::getUser();
$username = $user->name;
$useremail = $user->email;
$error=Null;
?>
<script type="text/javascript">
 var RecaptchaOptions = {
    theme: "white",
    lang: "en"
 };
</script>
<div class="ztformcontact">
	<form id='myForm' action="index.php" method="post">
		<div id="vehicles_list"></div>
		<?php 
		$i=0;
		foreach ($list as $item){
	   		if($item->valid > 0){
	   		  if($item->fieldname=='email'){
   			  	$required = 'required validate-email'; 
   			  }else{
   			  	$required = 'required';
   			  }
   			  $poin = '*';
   			} else {
   				$required = '';
   				$poin = '';
   			}
   		?>
   		<?php if($item->type=='textfield'){
   			?>
			  <?php if($item->fieldname == 'name'){?>
			  <input class="inputbox <?php echo $required; ?>"  type="text" value="Name<?php echo $poin;?>" title="<?php echo $item->fieldtitle; ?> Invalid" name="<?php echo $item->fieldname; ?>" size="<?php echo $item->size;?>" maxlength="<?php echo $item->length;?>" id="<?php echo $item->fieldname; ?>" onblur="if(this.value=='') this.value='Name<?php echo $poin;?>';" onfocus="if(this.value=='Name<?php echo $poin;?>') this.value='';" />
			  <?php }else if($item->fieldname == 'email') {?>
			  <input class="inputbox <?php echo $required; ?>"  type="text" value="Email<?php echo $poin;?>" title="<?php echo $item->fieldtitle; ?> Invalid" name="<?php echo $item->fieldname; ?>" size="<?php echo $item->size;?>" maxlength="<?php echo $item->length;?>" id="<?php echo $item->fieldname; ?>" onblur="if(this.value=='') this.value='Email<?php echo $poin;?>';" onfocus="if(this.value=='Email<?php echo $poin;?>') this.value='';" />
			  <?php }else if($item->fieldname == 'address') {?>
			  <input class="inputbox <?php echo $required; ?>"  type="text" value="Address<?php echo $poin;?>" title="<?php echo $item->fieldtitle; ?> Invalid" name="<?php echo $item->fieldname; ?>" size="<?php echo $item->size;?>" maxlength="<?php echo $item->length;?>" id="<?php echo $item->fieldname; ?>" onblur="if(this.value=='') this.value='Address<?php echo $poin;?>';" onfocus="if(this.value=='Address<?php echo $poin;?>') this.value='';" />
			  <?php }else{?>
			  <input class="inputbox <?php echo $required; ?>"  type="text" value="" title="<?php echo $item->fieldtitle; ?> Invalid" name="<?php echo $item->fieldname; ?>" size="<?php echo $item->size;?>" maxlength="<?php echo $item->length;?>" id="<?php echo $item->fieldname; ?>"  onblur="if(this.value=='') this.value='<?php echo $item->fieldtitle.' '.$poin.'';?>';" onfocus="if(this.value=='<?php echo $item->fieldtitle.' '.$poin.'';?>') this.value='';" />
			  <?php }?>
	    <?php }else if($item->type=='selected'){
	    	if($item->multi!=0) {
	    		$multiple = 'multiple="multiple"';
	    		$multisize = $item->size;
	    	}else{
	    		$multiple ='';
	    	}
	    	?>
		    
				<select  class="inputbox <?php echo $required; ?>"  <?php echo $multiple;?>  title="<?php echo $item->fieldtitle; ?> Invalid" name="<?php echo $item->fieldname; ?><?php if($item->multi!=0) {?>[]<?php }?>" size="<?php echo $multisize;?>">
		  		<option value="">--Please select--</option>
		  		<?php 
		  		for($j=0; $j<count($item->value); $j++){
				$valueExplode = explode('|', $item->value[$j]);
				if($valueExplode[1]==''){
				?>
				<option value="<?php echo $valueExplode[0];?>"><?php echo $valueExplode[0];?></option>
				<?php }else{?>
				<option value="<?php echo $valueExplode[0];?>"><?php echo $valueExplode[1];?></option>
				<?php }?>
				<?php }?>
				</select>
		    
	   <?php }else if($item->type=='radio'){?>
		    
				<label><?php echo $item->fieldtitle.' '.$poin.'';?></label>
		 		<?php 
		  		for($j=0; $j<count($item->value); $j++){
				$valueExplode = explode('|', $item->value[$j]);
				?>
				<input class="<?php echo $required; ?>" type="radio" value="<?php echo $valueExplode[0];?>" name="<?php echo $item->fieldname; ?>" title="<?php echo $item->fieldtitle; ?> Invalid"> <?php if(@$valueExplode[1]==''){ echo $valueExplode[0];}else{ echo $valueExplode[1]; }?>
				<?php }?>
			
	   <?php }else if($item->type=='checkbox'){?>
	    	
				
				<?php 
		  		for($j=0; $j<count($item->value); $j++){
				$valueExplode = explode('|', $item->value[$j]);
				?>
				<input class="<?php echo $required; ?>" type="checkbox" value="<?php echo $valueExplode[0];?>" name="<?php echo $item->fieldname; ?>[]" title="<?php echo $item->fieldtitle; ?> Invalid"> <?php if(@$valueExplode[1]==''){ echo $valueExplode[0];}else{ echo $valueExplode[1]; }?>
				<?php }?>
	  		
	  	<?php }else if($item->type=='textarea'){?>
	    	
				<textarea  class="inputbox1 <?php echo $required; ?>"  name="<?php echo $item->fieldname; ?>" title="<?php echo $item->fieldtitle; ?> Invalid" cols="<?php echo $item->cols;?>" rows="<?php echo $item->rows;?>"  onblur="if(this.value=='') this.value='Message<?php echo $poin;?>';" onfocus="if(this.value=='Message<?php echo $poin;?>') this.value='';">Message</textarea>
			
		<?php }else if($item->type=='text'){?>
	    	<?php echo $item->intro;?>
	    <?php
	   		 }
	    	$i++; 
		}
		?>
		<?php if($displayrecapcha>0){?>
		<p><?php echo recaptcha_get_html($publickey, $error);?></p>
		<?php }?>
		<input type="submit" class="button" value="<?php echo JText::_('Submit');?>" class="submit" />
		<input type="reset" class="reset" value="Reset" class="reset" />
		<input type="hidden" name="module_id" value="<?php echo $module_id;?>"/>
		<input type="hidden" name="valid" id="valid" value=""/>
		<input type="hidden" name="redirect" id="redirect" value="<?php echo $urlRedirect;?>"/>
		<input type="hidden" id="check" value="<?php echo $displayrecapcha;?>" />
		<script type="text/javascript">
		window.addEvent('domready', function(){ var myFormValidation = new Validate('myForm',{	errorClass: 'red' });});
		</script>
	</form>
</div>	