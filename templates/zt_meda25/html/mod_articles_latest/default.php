<?php
/**
 * @version		$Id: default.php 20196 2011-01-09 02:40:25Z ian $
 * @package		Joomla.Site
 * @subpackage	mod_articles_latest
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
?>
<div style="display: block;" class="<?php echo $params->get('moduleclass_sfx'); ?>">
<?php
$index = 0;
foreach ($list as $item) :
	$index += 1;
	$text = $item->introtext;
	$thumb = '';
	preg_match_all('/<img [^>]*>/i', $text, $matches); $matches = $matches[0];
	if (isset($matches[0])) {
		// Remove style, class, width, border, and height attributes.
		$matches[0] = preg_replace('/(style|class|width|height|border) ?= ?[\'"][^\'"]*[\'"]/i', '', $matches[0]);
		//get current src
		preg_match_all('/(src) ?= ?[\'"][^\'"]*[\'"]/i', $matches[0], $getsrc_s);
		$getsrc_s = $getsrc_s[0];
		$getsrc = $getsrc_s[0];
		//split put src value
		//echo htmlspecialchars(print_r($getsrc_s, 1));
		$imgsrc = substr($getsrc, 4);
		//remove single quote or double quote
		$imgsrc = str_replace("'", "", $imgsrc);
		$imgsrc = str_replace('"', '', $imgsrc);
		//remove old timthumb
		$imgsrc = str_replace('timthumb.php?src=', '', $imgsrc);
		$imgsrc = preg_replace('/([?&]zc)=[^&]*/', '', $imgsrc);
		$imgsrc = preg_replace('/([?&]q)=[^&]*/', '', $imgsrc);
		$imgsrc = preg_replace('/([?&]w)=[^&]*/', '', $imgsrc);
		$imgsrc = preg_replace('/([?&]h)=[^&]*/', '', $imgsrc);
		//add new timthumb
		$imgsrc = JURI::root() . "timthumb.php?src=" . $imgsrc . "&zc=1&q=90&w=50&h=50";
		$matches[0] = preg_replace('/(src) ?= ?[\'"][^\'"]*[\'"]/i', '', $matches[0]);
		//add new src
		$matches[0] = preg_replace('@/?>$@', 'style="border:2px solid White; float: left; margin-right: 5px;" />', $matches[0]);
		$matches[0] = preg_replace('@/?>$@', 'src="' . $imgsrc . '" />', $matches[0]);
<<<<<<< .mine
		//$margin = "margin-right: 8px;";
		//$shadow = "box-shadow: 2px 2px 2px #363636;-moz-box-shadow: 2px 2px 2px #CCCCCC;-webkit-box-shadow: 2px 2px 2px #CCCCCC;";
		//$matches[0] = "<div style=\"float: left;border:solid 1px #CCCCCC;display:inline-block;". $margin .$shadow."\">" . $matches[0] . "</div>";
=======
		$margin = "margin-right: 8px;";
		$shadow = "box-shadow: 2px 2px 2px #363636;-moz-box-shadow: 2px 2px 2px #363636;-webkit-box-shadow: 2px 2px 2px #363636;";
		$matches[0] = "<div style=\"float: left; border: solid 1px #CCCCCC; display: inline-block; " . $margin . $shadow . "\">" . $matches[0] . "</div>";
>>>>>>> .r38
		$thumb = $matches[0];
	}
?>
<<<<<<< .mine
	<p style="display: inline-block; clear: both; padding: 5px; margin-top: 5px; width: 100%; background: url(templates/zt_meda25/images/colors/green/megamenu/bg-list-button.png) repeat-x left bottom;">
		<?php echo $thumb; ?>
		<a href="<?php echo $item->link; ?>" style="line-height: 135%;"><?php echo $item->title; ?></a>
	</p>
=======
	<?php if ($index == ((int) $params->get('count', 5)))
		echo '<div style="width: 300px; display: inline-block; padding: 5px 0;">';
	else
		echo '<div style="border-bottom: 1px dotted #bfbfbf; width: 300px; display: inline-block; padding: 5px 0;">';
	?>
		
		<a href="<?php echo $item->link; ?>" style="display: inline-block; float: left;"><?php echo $thumb; ?></a>
		<div style="margin: 0px; float: left;">
			<a href="<?php echo $item->link; ?>"><?php echo $item->title; ?></a>
		</div>

	</div>
>>>>>>> .r38
<?php endforeach; ?>
</div>