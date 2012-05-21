<?php
/**
 * ReDJ Community plugin for Joomla 1.6
 *
 * @author Luigi Balzano (info@sistemistica.it)
 * @package ReDJ
 * @copyright Copyright 2009 - 2011
 * @license GNU Public License
 * @link http://www.sistemistica.it
 * @version 1.6.0
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.plugin.plugin');
jimport('joomla.html.parameter');

define('VARCHAR_SIZE', 255);

class plgSystemReDJ extends JPlugin
{
  /**
  *
  * @var string
  * @access  private
  */
  private $_visited_request_uri = '';

  /**
  *
  * @var string
  * @access  private
  */
  private $_visited_full_url = '';

  /**
  *
  * @var string
  * @access  private
  */
  private $_siteurl = '';

  /**
  *
  * @var string
  * @access  private
  */
  private $_baseonly = '';

  /**
  *
  * @var string
  * @access  private
  */
  private $_tourl = '';

  /**
  *
  * @var integer
  * @access  private
  */
  private $_redirect = 301;

  public function __construct(& $subject, $config)
  {
    parent::__construct($subject, $config);
    $this->loadLanguage();

    $this->_visited_request_uri = self::getRequestURI();
    $this->_visited_full_url = self::getPrefix() . $this->_visited_request_uri; // Better then self::getURL(); or self::getPrefix() . self::getRequestURI();
    $this->_siteurl = self::getSiteURL();
    $this->_baseonly = self::getBase(true);
  }

  /**
   *
   * Build and return the (called) prefix (e.g. http://www.youdomain.com) from the current server variables
   *
   * We say 'called' 'cause we use HTTP_HOST (taken from client header) and not SERVER_NAME (taken from server config)
   *
   */
  static function getPrefix()
  {
    if (isset($_SERVER['HTTPS']) && !empty($_SERVER['HTTPS']) && (strtolower($_SERVER['HTTPS']) != 'off')) {
      $https = 's://';
    } else {
      $https = '://';
    }
    return 'http' . $https . $_SERVER['HTTP_HOST'];
  }

  /**
   *
   * Build and return the (called) base path for site (e.g. http://www.youdomain.com/path/to/site)
   *
   * @param  boolean  If true returns only the path part (e.g. /path/to/site)
   *
   */
  static function getBase($pathonly = false)
  {
    if (strpos(php_sapi_name(), 'cgi') !== false && !ini_get('cgi.fix_pathinfo') && !empty($_SERVER['REQUEST_URI'])) {
      // PHP-CGI on Apache with "cgi.fix_pathinfo = 0"

      // We use PHP_SELF
      if (!empty($_SERVER["PATH_INFO"])) {
        $p = strrpos($_SERVER["PHP_SELF"], $_SERVER["PATH_INFO"]);
        if ($p !== false) { $s = substr($_SERVER["PHP_SELF"], 0, $p); }
      } else {
        $p = $_SERVER["PHP_SELF"];
      }
      $base_path =  rtrim(dirname(str_replace(array('"', '<', '>', "'"), '', $p)), '/\\');
      // Check if base path was correctly detected, or use another method
      /*
         On some Apache servers (mainly using cgi-fcgi) it happens that the base path is not correctly detected.
         For URLs like http://www.site.com/index.php/content/view/123/5 the server returns a wrong PHP_SELF variable.

         WRONG:
         [REQUEST_URI] => /index.php/content/view/123/5
         [PHP_SELF] => /content/view/123/5

         CORRECT:
         [REQUEST_URI] => /index.php/content/view/123/5
         [PHP_SELF] => /index.php/content/view/123/5

         And this lead to a wrong result for JURI::base function.

         WRONG:
         JURI::base(true) => /content/view/123
         JURI::base(false) => http://www.site.com/content/view/123/

         CORRECT:
         getBase(true) =>
         getBase(false):http://www.site.com/
      */
      if (!empty($base_path)) { if (strpos($_SERVER['REQUEST_URI'], $base_path) !== 0) { $base_path = rtrim(dirname($_SERVER['SCRIPT_NAME']), '/\\'); } }
    } else {
      // We use SCRIPT_NAME
      $base_path = rtrim(dirname($_SERVER['SCRIPT_NAME']), '/\\');
    }

    return $pathonly === false ? self::getPrefix() . $base_path . '/' : $base_path;
  }

  /**
   *
   * Build and return the REQUEST_URI (e.g. /site/index.php?id=1&page=3)
   *
   */
  static function getRequestURI()
  {
    return $_SERVER['REQUEST_URI'];
  }

  /**
   *
   * Build and return the (called) {siteurl} macro value
   *
   */
  static function getSiteURL()
  {
    $siteurl = str_replace( 'https://', '', self::getBase() );
    return rtrim(str_replace('http://', '', $siteurl), '/');
  }

  /**
   *
   * Build and return the (called) full URL (e.g. http://www.youdomain.com/site/index.php?id=12) from the current server variables
   *
   */
  static function getURL()
  {
    return self::getPrefix() . self::getRequestURI();
  }

  /**
   *
   * Return the host name from the given address
   *
   * Reference http://www.php.net/manual/en/function.parse-url.php#93983
   *
   */
  static function getHost($address)
  {
    $parsedUrl = parse_url(trim($address));
    return @trim($parsedUrl['host'] ? $parsedUrl['host'] : array_shift(explode('/', $parsedUrl['path'], 2)));
  }

  /**
   *
   * Build and return the (called) {self} macro value
   *
   */
  static function getSelf()
  {
    return $_SERVER['HTTP_HOST'];
  }

  /**
   *
   * Truncate the URL if its lenght exceed the max number of characters (UTF-8) in the varchar definition
   *
   * @param  string  The URL to sanitize
   *
   */
  static function sanitizeURL($url)
  {
    if (function_exists('mb_substr'))
    {
      return mb_substr($url, 0, VARCHAR_SIZE, 'UTF-8');
    } else {
      return utf8_encode(substr(utf8_decode($url), 0, VARCHAR_SIZE));
    }
  }

  /**
   *
   * Replace macros in the body content of the custom error 404 page
   *
   */
  static function replace404Macro($body, $errormessage)
  {
    // Define supported macros
    $app = JFactory::getApplication();
    $siteurl = self::getSiteURL();
    $sitename = $app->getCfg('sitename');
    $sitemail = $app->getCfg('mailfrom');
    $fromname = $app->getCfg('fromname');

    // Replace macros with their values
    $body = str_replace('{siteurl}', $siteurl, $body);
    $body = str_replace('{sitename}', $sitename, $body);
    $body = str_replace('{sitemail}', $sitemail, $body);
    $body = str_replace('{fromname}', $fromname, $body);
    $body = str_replace('{errormessage}', $errormessage, $body);

    // Also replace {article} macro
    $regex_base = '\{(article)\s+(\d+)\}';
    $regex_search = "/(.*?)$regex_base(.*)/si";
    $regex_replace = "/$regex_base/si";
    $found = preg_match($regex_search, $body, $matches);
    while ($found) {
      $content_id = $matches[3];
      $content_query = "SELECT `introtext`, `fulltext` FROM #__content WHERE `id`=".(int)$content_id;
      $content_db = JFactory::getDBO();
      $content_db->setQuery($content_query);
      $content_row = $content_db->loadObject();
      if (is_object($content_row)) {
        $content = $content_row->introtext . $content_row->fulltext;
      } else {
        $content = '';
      }
      $body = preg_replace($regex_replace, $content, $body); // Replace all occurrences
      $found = preg_match($regex_search, $custombody, $matches);
    }

    return $body;
  }

  /**
   *
   * Custom error callback function
   *
   */
  static function customError(&$error)
  {
    // This is a static method so could be called as a callback function (plgSystemReDJ::custom_error())
    // and no $this reference to object instance can be used

    // Get the application object.
    $app = JFactory::getApplication();

    // Make sure we are not in the administrator
    if (!$app->isAdmin() and (JError::isError($error) === true))
    {
      // Get plugin parameters
      $plugin = & JPluginHelper :: getPlugin('system', 'redj'); // Can't use $this as callback function
      $params = new JParameter($plugin->params);
      $customerror404page = $params->get('customerror404page', 0);
      $error404pageid = $params->get('error404pageid', '');
      $trackerrors = $params->get('trackerrors', 0);
      $redirectallerrors = $params->get('redirectallerrors', 0);
      $redirectallerrorsurl = $params->get('redirectallerrorsurl', '');

      $db = JFactory::getDBO();

      if ($trackerrors)
      {
        // Track error URL calls
        $visited_url = self::getURL();
        $error_code = $error->get('code');
        $last_visit = date("Y-m-d H:i:s");
        $last_referer = @$_SERVER['HTTP_REFERER'];
        $db->setQuery("INSERT INTO #__redj_errors (`visited_url`, `error_code`, `hits`, `last_visit`, `last_referer`) VALUES (" . $db->quote( $visited_url ) . ", " . $db->quote( $error_code ) . ", 1, " . $db->quote( $last_visit ) . ", " . $db->quote( $last_referer ) . ") ON DUPLICATE KEY UPDATE `hits` = `hits` + 1, `last_visit` = " . $db->quote( $last_visit ) . ", `last_referer` = " . $db->quote( $last_referer ));
        $res = @$db->query();
      }

      if ( ($redirectallerrors) && (!empty($redirectallerrorsurl)) )
      {
        $siteurl = self::getSiteURL();
        $tourl = str_replace('{siteurl}', $siteurl, $redirectallerrorsurl);
        @ob_end_clean();
        header("HTTP/1.1 301 Moved Permanently");
        header('location: ' . $tourl);
        exit();
      }

      $db->setQuery("SELECT * FROM #__redj_pages404 WHERE id=" . $db->quote( $error404pageid ));
      $items = $db->loadObjectList();

      if (($error->get('code') == 404) && ($customerror404page) && (count($items) > 0) && (!empty($items[0]->page))) // Use custom error page
      {
        // Update hits
        $last_visit = date("Y-m-d H:i:s");
        $db->setQuery("UPDATE #__redj_pages404 SET hits = hits + 1, last_visit = " . $db->quote( $last_visit ) . " WHERE id = " . $db->quote( $error404pageid ));
        $res = @$db->query();

        // Initialize variables
        jimport('joomla.document.document');
        $app = JFactory::getApplication();
        $document = JDocument::getInstance('error');
        $config = JFactory::getConfig();

        // Get the current template from the application
        $template = $app->getTemplate();

        // Push the error object into the document
        $document->setError($error);

        // Call default render to set header
        @ob_end_clean();
        $document->setTitle(JText::_('Error').': '.$error->get('code'));
        $data = $document->render(false, array (
          'template' => $template,
          'directory' => JPATH_THEMES,
          'debug' => $config->getValue('config.debug')
        ));

        // Replace macros in custom body
        $custombody = self::replace404Macro($items[0]->page, $error->get('message'));

        // Do not allow cache
        JResponse::allowCache(false);

        // Set the custom body
        JResponse::setBody($custombody);
        echo JResponse::toString();
        @ob_flush();
      }

      // Restore saved error handler
      JError::setErrorHandling(E_ERROR, $GLOBALS["_REDJ_JERROR_HANDLER"]["mode"], array($GLOBALS["_REDJ_JERROR_HANDLER"]["options"]["0"], $GLOBALS["_REDJ_JERROR_HANDLER"]["options"]["1"]));

      // Re-raise original error... cannot be done anymore inside the callback to avoid failure due to loop detection
      // JError::raise($error->get('level'), $error->get('code'), $error->get('message'), $error->get('info'), $error->get('backtrace'));
      // So let's do what the raise do...
      jimport('joomla.error.exception');
      // Build error object
      $exception = new JException($error->get('message'), $error->get('code'), $error->get('level'), $error->get('info'), $error->get('backtrace'));
      // See what to do with this kind of error
      $handler = JError::getErrorHandling($exception->get('level'));
      $function = 'handle'.ucfirst($handler['mode']);
      if (is_callable(array('JError', $function))) {
        $reference = call_user_func_array(array('JError', $function), array(&$exception, (isset($handler['options'])) ? $handler['options'] : array()));
      }
      else {
        // This is required to prevent a very unhelpful white-screen-of-death
        jexit(
          'JError::raise -> Static method JError::' . $function . ' does not exist.' .
          ' Contact a developer to debug' .
          '<br /><strong>Error was</strong> ' .
          '<br />' . $exception->getMessage()
        );
      }

    }
  }

  public function onAfterInitialise()
  {
    // Save the current error handler
    $GLOBALS["_REDJ_JERROR_HANDLER"] = JError::getErrorHandling(E_ERROR);
    if ( !( isset($GLOBALS["_REDJ_JERROR_HANDLER"]["mode"]) && isset($GLOBALS["_REDJ_JERROR_HANDLER"]["options"]["0"]) && isset($GLOBALS["_REDJ_JERROR_HANDLER"]["options"]["1"]) ) ) {
      $GLOBALS["_REDJ_JERROR_HANDLER"] = array("mode" => "callback", "options" => array("0" => "JError", "1" => "customErrorPage"));
    }

    // Set new error handler
    JError::setErrorHandling(E_ERROR, 'callback', array('plgSystemReDJ', 'customError'));

    // Get the application object.
    $app = JFactory::getApplication();

    // Make sure we are not in the administrator
    if ( $app->isAdmin() ) return;

    // Only site pages that are html docs
    if ( JRequest::getBool('no_html') === true ) return;

    $trackreferers = $this->params->def('trackreferers', 0);
    $db = JFactory::getDBO();

    if ($trackreferers)
    {
      // Track referers URL calls
      $excludereferers = explode("\n", $this->params->def('excludereferers', ''));
      foreach ($excludereferers as $key => $value)
      {
        if (trim($value) == '')
        {
          // Remove blanks
          unset($excludereferers[$key]);
        } else {
          // Replace macros
          if ($value == '{self}') { $excludereferers[$key] = self::getSelf(); }
          if ($value == '{none}') { $excludereferers[$key] = ''; }
        }
      }

      $visited_url = self::sanitizeURL($this->_visited_full_url);
      $referer_url = self::sanitizeURL(@$_SERVER['HTTP_REFERER']);
      $domain = self::sanitizeURL(self::getHost($referer_url));

      if ( !in_array($domain, $excludereferers) ) {
        $last_visit = date("Y-m-d H:i:s");

        $db->setQuery("INSERT IGNORE INTO `#__redj_visited_urls` (`id`, `visited_url`) VALUES (NULL, " . $db->quote( $visited_url ) . ")");
        $res = @$db->query();

        $db->setQuery("INSERT IGNORE INTO `#__redj_referer_urls` (`id`, `referer_url`, `domain`) VALUES (NULL, " . $db->quote( $referer_url ) . ", " . $db->quote( $domain ) . ")");
        $res = @$db->query();

        $db->setQuery("INSERT INTO `#__redj_referers` (`id`, `visited_url`, `referer_url`, `hits`, `last_visit`) VALUES (NULL, (SELECT `id` FROM `#__redj_visited_urls` WHERE `visited_url` = " . $db->quote( $visited_url ) . "), (SELECT `id` FROM `#__redj_referer_urls` WHERE `referer_url` = " . $db->quote( $referer_url ) . "), 1, " . $db->quote( $last_visit ) . " ) ON DUPLICATE KEY UPDATE `hits` = `hits` + 1, `last_visit` = " . $db->quote( $last_visit ));
        $res = @$db->query();
      }
    }

    $this->setRedirect();
    if ( !empty($this->_tourl) )
    {
      @ob_end_clean();
      switch ($this->_redirect) {
        case 307:
          header("HTTP/1.1 307 Temporary Redirect");
          header('location: ' . $this->_tourl);
          exit();
        default:
          header("HTTP/1.1 301 Moved Permanently");
          header('location: ' . $this->_tourl);
          exit();
      }
    }

  }

  /**
   *
   * Set the destination URL and the redirect type if a redirect item is found
   *
   */
  private function setRedirect()
  {
    $currenturi_encoded = $this->_visited_request_uri; // Raw (encoded): with %## chars
    // Remove the base path
    $basepath = trim($this->params->def('basepath', ''), ' /'); // Decoded: without %## chars (now you can see spaces, cyrillics, ...)
    $basepath = urlencode($basepath); // Raw (encoded): with %## chars
    if ($basepath != '')
    {
      if (strpos($currenturi_encoded, '/'.$basepath.'/') === 0)
      {
        $currenturi_encoded = substr($currenturi_encoded, strlen($basepath) + 1); // Raw (encoded): with %## chars
      }
    }
    $currenturi = urldecode($currenturi_encoded); // Decoded: without %## chars (now you can see spaces, cyrillics, ...)
    $currentfullurl_encoded = $this->_visited_full_url; // Raw (encoded): with %## chars
    $currentfullurl = urldecode($currentfullurl_encoded); // Decoded: without %## chars (now you can see spaces, cyrillics, ...)

    $db = JFactory::getDBO();
    $db->setQuery('SELECT * FROM #__redj_redirects '
    . 'WHERE ( '
    . '( (' . $db->quote($currenturi) . ' REGEXP BINARY fromurl)>0 AND (case_sensitive<>0) AND (decode_url<>0) AND (request_only<>0) ) '
    . 'OR ( (' . $db->quote($currenturi_encoded) . ' REGEXP BINARY fromurl)>0 AND (case_sensitive<>0) AND (decode_url=0) AND (request_only<>0) ) '
    . 'OR ( (' . $db->quote($currentfullurl) . ' REGEXP BINARY fromurl)>0 AND (case_sensitive<>0) AND (decode_url<>0) AND (request_only=0) ) '
    . 'OR ( (' . $db->quote($currentfullurl_encoded) . ' REGEXP BINARY fromurl)>0 AND (case_sensitive<>0) AND (decode_url=0) AND (request_only=0) ) '
    . 'OR ( (' . $db->quote($currenturi) . ' REGEXP fromurl)>0 AND (case_sensitive=0) AND (decode_url<>0) AND (request_only<>0) ) '
    . 'OR ( (' . $db->quote($currenturi_encoded) . ' REGEXP fromurl)>0 AND (case_sensitive=0) AND (decode_url=0) AND (request_only<>0) ) '
    . 'OR ( (' . $db->quote($currentfullurl) . ' REGEXP fromurl)>0 AND (case_sensitive=0) AND (decode_url<>0) AND (request_only=0) ) '
    . 'OR ( (' . $db->quote($currentfullurl_encoded) . ' REGEXP fromurl)>0 AND (case_sensitive=0) AND (decode_url=0) AND (request_only=0) ) '
    . ') '
    . 'AND published=1 '
    . 'ORDER BY ordering');
    $items = $db->loadObjectList();
    if ( count($items) > 0 )
    {
      // Notes: if more than one item matches with current URI, we takes only the first one with ordering set
      if ( !empty($items[0]->tourl) )
      {
        // Update hits counter
        $last_visit = date("Y-m-d H:i:s");
        $db->setQuery("UPDATE #__redj_redirects SET hits = hits + 1, last_visit = " . $db->quote( $last_visit ) . " WHERE id = " . $db->quote( $items[0]->id ));
        $res = @$db->query();

        // Set the redirect (destination URL and redirect type)
        $this->_tourl = $this->replaceToURLMacro($items[0]->tourl);
        $this->_redirect = $items[0]->redirect;
      }
    }

  }

  /**
   *
   * Callback function used to replace macros in destination URL
   *
   */
  static function getMacroParamValue($macro, $param, $arg = 0)
  {
    static $vars = array();
    static $paths = array();
    static $url = '';

    $value = '';
    switch ($macro) {
      case 'setvars':
        $vars = $param;
        break;
      case 'setpaths':
        $paths = $param;
        break;
      case 'seturl':
        $url = $param;
        break;
      case 'querybuild':
      case 'querybuildfull':
        $build_vars = explode(',', $param);
        foreach ($build_vars as $k => $v) {
          $p = strpos($v, "=");
          if ($p === false) {
            // Only parameter name
            if (isset($vars[$v])) { // Need to check only not-null values
              $value .= (($value === '') ? '' : '&') . $v . '=' . $vars[$v];
            }
          } else {
            // New parameter or overrides existing
            $pn = substr($v, 0, $p);
            $pv = substr($v, $p + 1, strlen($v) - $p - 1);
            if ((strlen($pn) > 0) && (strlen($pv) > 0)) { // Need to take only not-null names and values
              $value .= (($value === '') ? '' : '&') . $pn . '=' . $pv;
            }
          }
        }
        if ( ($macro === 'querybuildfull') && ($value !== '') ) { $value = '?' . $value; }
        break;
      case 'queryvar':
        @$value = $vars[$param];
        break;
      case 'pathltrim':
        $value = $paths['path'];
        if (strpos($value, $param) === 0) {
          $value = substr($value, strlen($param), strlen($value) - strlen($param));
        }
        break;
      case 'pathrtrim':
        $value = $paths['path'];
        if (strpos($value, $param) === (strlen($value) - strlen($param))) {
          $value = substr($value, 0, strlen($value) - strlen($param));
        }
        break;
    }
    return $value;
  }

  /**
   *
   * Replace macros in the destination URL of the redirect item found
   *
   */
  private function replaceToURLMacro($tourl)
  {
    /*
      http://fredbloggs:itsasecret@www.example.com:8080/path/to/Joomla/section/cat/index.php?task=view&id=32#anchorthis
      \__/   \________/ \________/ \_____________/ \__/\___________________________________/ \_____________/ \________/
       |          |         |              |        |                   |                           |             |
     scheme     user       pass          host      port                path                       query       fragment

    Supported macro for destination URL:
       {siteurl}                                                    www.example.com/path/to/Joomla
       {scheme}                                                     http
       {host}                                                       www.example.com
       {port}                                                       8080
       {user}                                                       fredbloggs
       {pass}                                                       itsasecret
       {path}                                                       /path/to/Joomla/section/cat/index.php
       {query}                                                      task=view&id=32
       {queryfull}                                                  ?task=view&id=32
       {querybuild id,task}                                         id=32&task=view
       {querybuild id,task=edit}                                    id=32&task=edit
       {querybuild id,task=view,ItemId=12}                          id=32&task=view&ItemId=12
       {querybuildfull id,task}                                     ?id=32&task=view
       {querybuildfull id,task=save}                                ?id=32&task=save
       {querybuildfull id,task,action=close}                        ?id=32&task=view&action=close
       {querydrop task}                                             id=32
       {querydrop id,task=edit}                                     task=edit
       {querydrop id,task=save,action=close}                        task=save&action=close
       {querydropfull task}                                         ?id=32
       {querydropfull id,task=save}                                 ?task=save
       {querydropfull id,task=edit,action=close}                    ?task=edit&action=close
       {queryvar task}                                              view
       {queryvar id}                                                32
       {authority}                                                  fredbloggs:itsasecret@www.example.com:8080
       {baseonly}                                                   /path/to/Joomla (empty when installed on root, i.e. it will never contains a trailing slash)
       {pathfrombase}                                               /section/cat/index.php
       {pathltrim /path/to}                                         /Joomla/section/cat/index.php
       {pathrtrim /index.php}                                       /path/to/Joomla/section/cat
       {pathfrombaseltrim /section}                                 /cat/index.php
       {pathfrombasertrim index.php}                                /section/cat/
       {preg_match N}pattern{/preg_match}                           (return the N-th matched pattern on the full source url, where N = 0 when not specified)
       {preg_match}/([^\/]+)(\.php|\.html|\.htm)/i{/preg_match}     index.php
       {preg_match 2}/([^\/]+)(\.php|\.html|\.htm)/i{/preg_match}   .php
    */

    // Initialize macro related variables
    $uri_visited_full_url = JURI::getInstance($this->_visited_full_url);
    $uri_visited_full_url_port = $uri_visited_full_url->getPort();
    $uri_visited_full_url_host = $uri_visited_full_url->getHost();
    $uri_visited_full_url_scheme = $uri_visited_full_url->getScheme();
    $uri_visited_full_url_user = $uri_visited_full_url->getUser();
    $uri_visited_full_url_pass = $uri_visited_full_url->getPass();
    $uri_visited_full_url_path = $uri_visited_full_url->getPath();
    $uri_visited_full_url_query = $uri_visited_full_url->getQuery();
    $uri_visited_full_url_vars = $uri_visited_full_url->getQuery(true);

    $authority = (isset($uri_visited_full_url_port)) ? $uri_visited_full_url_host . ':' . $uri_visited_full_url_port : $uri_visited_full_url_host;
    $authority = (isset($uri_visited_full_url_user)) ? $uri_visited_full_url_user . ':' . $uri_visited_full_url_pass . '@' . $authority : $authority;
    $pathfrombase = (strlen($this->_baseonly) > 0) ? substr($uri_visited_full_url_path, strlen($this->_baseonly), strlen($uri_visited_full_url_path) - strlen($this->_baseonly)) : $uri_visited_full_url_path;
    self::getMacroParamValue('seturl', $this->_visited_full_url);
    self::getMacroParamValue('setvars', $uri_visited_full_url_vars);
    self::getMacroParamValue('setpaths', array('path' => $uri_visited_full_url_path, 'pathfrombase' => $pathfrombase));

    // Load supported macros patterns
    $patterns = array();
    $patterns[0] = "/\{siteurl\}/";
    $patterns[1] = "/\{scheme\}/";
    $patterns[2] = "/\{host\}/";
    $patterns[3] = "/\{port\}/";
    $patterns[4] = "/\{user\}/";
    $patterns[5] = "/\{pass\}/";
    $patterns[6] = "/\{path\}/";
    $patterns[7] = "/\{query\}/";
    $patterns[8] = "/\{queryfull\}/";
    $patterns[9] = "/\{querybuild ([^\}]+)\}/eU";
    $patterns[10] = "/\{querybuildfull ([^\}]+)\}/eU";
    $patterns[13] = "/\{queryvar ([^\}]+)\}/eU";
    $patterns[14] = "/\{authority\}/";
    $patterns[15] = "/\{baseonly\}/";
    $patterns[16] = "/\{pathfrombase\}/";
    $patterns[17] = "/\{pathltrim ([^\}]+)\}/eU";
    $patterns[18] = "/\{pathrtrim ([^\}]+)\}/eU";

    // Load supported macros replacements
    $replacements = array();
    $replacements[0] = $this->_siteurl;
    $replacements[1] = $uri_visited_full_url_scheme;
    $replacements[2] = $uri_visited_full_url_host;
    $replacements[3] = $uri_visited_full_url_port;
    $replacements[4] = $uri_visited_full_url_user;
    $replacements[5] = $uri_visited_full_url_pass;
    $replacements[6] = $uri_visited_full_url_path;
    $replacements[7] = $uri_visited_full_url_query;
    $replacements[8] = (isset($uri_visited_full_url_query)) ? '?' . $uri_visited_full_url_query : '';
    $replacements[9] = "plgSystemReDJ::getMacroParamValue('querybuild', '\\1')";
    $replacements[10] = "plgSystemReDJ::getMacroParamValue('querybuildfull', '\\1')";
    $replacements[13] = "plgSystemReDJ::getMacroParamValue('queryvar', '\\1')";
    $replacements[14] = $authority;
    $replacements[15] = $this->_baseonly;
    $replacements[16] = $pathfrombase;
    $replacements[17] = "plgSystemReDJ::getMacroParamValue('pathltrim', '\\1')";
    $replacements[18] = "plgSystemReDJ::getMacroParamValue('pathrtrim', '\\1')";

    return preg_replace($patterns, $replacements, $tourl);
  }

}
