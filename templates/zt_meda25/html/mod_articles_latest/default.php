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
foreach ($list as $item) :
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
		$matches[0] = preg_replace('@/?>$@', 'style="border:2px solid White;" />', $matches[0]);
		$matches[0] = preg_replace('@/?>$@', 'src="' . $imgsrc . '" />', $matches[0]);
		$margin = "margin-right: 8px;";
		$shadow = "box-shadow: 2px 2px 2px #363636;-moz-box-shadow: 2px 2px 2px #CCCCCC;-webkit-box-shadow: 2px 2px 2px #CCCCCC;";
		$matches[0] = "<div style=\"float: left;border:solid 1px #CCCCCC;display:inline-block;". $margin .$shadow."\">" . $matches[0] . "</div>";
		$thumb = $matches[0];
	}
	if (strlen(strip_tags($text)) > 80) {
		// First, remove all new lines
		$text = preg_replace("/\r\n|\r|\n/", "", $text);
		// Next, replace <br /> tags with \n
		$text = preg_replace("/<BR[^>]*>/i", "\n", $text);
		// Replace <p> tags with \n\n
		$text = preg_replace("/<P[^>]*>/i", "\n\n", $text);
		// Strip all tags
		$text = strip_tags($text);
		// Truncate
		$text = substr($text, 0, 80);
		// Pop off the last word in case it got cut in the middle
		$text = preg_replace("/[.,!?:;]? [^ ]*$/", "", $text);
		// Add ... to the end of the article.
		$text = trim($text) . "...";
		// Replace \n with <br />
		$text = str_replace("\n", "<br />", $text);
	}
?>
	<?php if ($index == ((int) $params->get('count', 5)))
		echo "<div>";
	else
		echo '<div style="border-bottom: 1px dotted #bfbfbf;">';
	?>
		<div style="display: block; margin: 8px 0 8px 0; text-align: justify;">
			<a href="<?php echo $item->link; ?>"><?php echo $thumb; ?></a>
			<p style="margin: 0px;"><a href="<?php echo $item->link; ?>">
				<?php echo $item->title; ?>
			</a></p>
		</div>
	</div>
<?php endforeach; ?>
</div>