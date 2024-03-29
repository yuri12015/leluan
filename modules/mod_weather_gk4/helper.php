<?php
/**
* Gavick Weather GK4 - helper class
* @package Joomla!
* @ Copyright (C) 2009-2011 Gavick.com
* @ All rights reserved
* @ Joomla! is Free Software
* @ Released under GNU/GPL License : http://www.gnu.org/copyleft/gpl.html
* @version $Revision: GK4 1.0 $
**/
// no direct access
defined('_JEXEC') or die('Restricted access');
// Main class
class GKWHelper {
	var $config;
	var $content;
	var $error;
	var $icons;
	var $parsedData;
    var $translation;
    var $cond_tmp;
	/**
	 *	INITIALIZATION 
	 **/
	function __construct($params) {		
		// importing JFile class 
		jimport('joomla.filesystem.file');
		// configuration array
		$this->config = array(
			'module_unique_id' => '',				            
            'city' => '',
			'fcity' => '',
            'language' => 'en',
			'latitude' => 'null',
			'longitude' => 'null',
			'timezone' => 0,
			'showCity' => 1,
			'showHum' => 1,
			'showWind' => 1,
			'tempUnit' => 'c',
			'nextDays' => 1,
			'amountDays' => 4,
			'current_icon_size' => 64,
			'forecast_icon_size' => 32,
			'useCSS' => 1,
			'useCache' => 1,
			'cacheTime' => 5,
			'source' => 'yahoo',
			'WOEID' => '',
			'yahoo_icons' => 0,
            't_offset' => '0'
		); 
		// error text
		$this->error = '';
		// icons array
		$this->icons = array(
			"/ig/images/weather/chance_of_snow.gif"  => array('chance_of_snow.png', 'chance_of_snow_night.png'),
			"/ig/images/weather/flurries.gif"        => array('flurries.png'),
			"/ig/images/weather/snow.gif"            => array('snow.png'),
			"/ig/images/weather/sleet.gif"           => array('sleet.png'),
			"/ig/images/weather/chance_of_rain.gif"  => array('chance_of_rain.png','chance_of_rain_night.png'),
			"/ig/images/weather/chance_of_storm.gif" => array('chance_of_storm.png','chance_of_storm_night.png'),
			"/ig/images/weather/mist.gif"            => array('mist.png','mist_night.png'),
			"/ig/images/weather/showers.gif"         => array('showers.png','showers_night.png'),
			"/ig/images/weather/rain.gif"            => array('rain.png'),
			"/ig/images/weather/storm.gif"           => array('storm.png','storm_night.png'),
			"/ig/images/weather/thunderstorm.gif"    => array('thunderstorm.png'),
			"/ig/images/weather/rain_snow.gif"       => array('rain_and_snow.png'),
			"/ig/images/weather/sunny.gif"           => array('sunny.png','sunny_night.png'),
			"/ig/images/weather/mostly_sunny.gif"    => array('sunny.png','sunny_night.png'),
			"/ig/images/weather/partly_cloudy.gif"   => array('partly_cloudy.png','partly_cloudy_night.png'),
			"/ig/images/weather/mostly_cloudy.gif"   => array('mostly_cloudy.png','mostly_cloudy_night.png'),
			"/ig/images/weather/cloudy.gif"          => array('cloudy.png'),
			"/ig/images/weather/fog.gif"             => array('foggy.png','foggy_night.png'),
			"/ig/images/weather/foggy.gif"           => array('foggy.png','foggy_night.png'),
			"/ig/images/weather/smoke.gif"           => array('smoke.png','smoke_night.png'),
			"/ig/images/weather/hazy.gif"            => array('hazy.png','hazy_night.png'),
            "/ig/images/weather/haze.gif"            => array('hazy.png','hazy_night.png'),
			"/ig/images/weather/dusty.gif"           => array('dusty.png','dusty_night.png'),
            "/ig/images/weather/dust.gif"           => array('dusty.png','dusty_night.png'),
			"/ig/images/weather/icy.gif"             => array('icy.png','icy_night.png'),
            "/ig/images/weather/jp_chance_of_snow.gif"  => array('chance_of_snow.png', 'chance_of_snow_night.png'),
			"/ig/images/weather/jp_flurries.gif"        => array('flurries.png'),
			"/ig/images/weather/jp_snow.gif"            => array('snow.png'),
			"/ig/images/weather/jp_sleet.gif"           => array('sleet.png'),
			"/ig/images/weather/jp_chance_of_rain.gif"  => array('chance_of_rain.png','chance_of_rain_night.png'),
			"/ig/images/weather/jp_chance_of_storm.gif" => array('chance_of_storm.png','chance_of_storm_night.png'),
			"/ig/images/weather/jp_mist.gif"            => array('mist.png','mist_night.png'),
			"/ig/images/weather/jp_showers.gif"         => array('showers.png','showers_night.png'),
			"/ig/images/weather/jp_rain.gif"            => array('rain.png'),
			"/ig/images/weather/jp_storm.gif"           => array('storm.png','storm_night.png'),
			"/ig/images/weather/jp_thunderstorm.gif"    => array('thunderstorm.png'),
			"/ig/images/weather/jp_rain_snow.gif"       => array('rain_and_snow.png'),
			"/ig/images/weather/jp_sunny.gif"           => array('sunny.png','sunny_night.png'),
			"/ig/images/weather/jp_mostly_sunny.gif"    => array('sunny.png','sunny_night.png'),
			"/ig/images/weather/jp_partly_cloudy.gif"   => array('partly_cloudy.png','partly_cloudy_night.png'),
			"/ig/images/weather/jp_mostly_cloudy.gif"   => array('mostly_cloudy.png','mostly_cloudy_night.png'),
			"/ig/images/weather/jp_cloudy.gif"          => array('cloudy.png'),
			"/ig/images/weather/jp_fog.gif"             => array('foggy.png','foggy_night.png'),
			"/ig/images/weather/jp_foggy.gif"           => array('foggy.png','foggy_night.png'),
			"/ig/images/weather/jp_smoke.gif"           => array('smoke.png','smoke_night.png'),
            "/ig/images/weather/jp_rainy.gif"           => array('rain.png'),
			"/ig/images/weather/jp_hazy.gif"            => array('hazy.png','hazy_night.png'),
            "/ig/images/weather/jp_rainysometimescloudy.gif" => array('rain.png'),
			"/ig/images/weather/jp_dusty.gif"           => array('dusty.png','dusty_night.png'),
			"/ig/images/weather/jp_icy.gif"            => array('rain.png'),
            "/ig/images/weather/jp_weatherdrizzle.gif"             => array('rain.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_drizzle.gif"  => array('rain.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_sleet-40.gif"                  => array('sleet.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_scatteredshowers-40.gif"       => array('chance_of_rain.png','chance_of_rain_night.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_scatteredthunderstorms-40.gif" => array('chance_of_storm.png','chance_of_storm_night.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_rain-40.gif"                   => array('rain.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_thunderstorms-40.gif"          => array('thunderstorm.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_snowflurries-40.gif"           => array('rain_and_snow.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_sunny-40.gif"                  => array('sunny.png','sunny_night.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_partlycloudy-40.gif"           => array('partly_cloudy.png','partly_cloudy_night.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_mostlycloudy-40.gif"           => array('mostly_cloudy.png','mostly_cloudy_night.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_cloudy-40.gif"                 => array('cloudy.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_overcast-40.gif"               => array('cloudy.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_fog-40.gif"                    => array('foggy.png','foggy_night.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_smoke-40.gif"                  => array('smoke.png','smoke_night.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_haze-40.gif"                   => array('hazy.png','hazy_night.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_dust-40.gif"                   => array('dusty.png','dusty_night.png'),
			"http://g0.gstatic.com/images/icons/onebox/weather_icy-40.gif"                    => array('icy.png','icy_night.png'),
            "http://g0.gstatic.com/images/icons/onebox/weather_drizzle-40.gif"                => array('rain.png'),
            "http://g0.gstatic.com/images/icons/onebox/weather_windy-40.gif"                => array('cloudy.png'),
            "http://g0.gstatic.com/images/icons/onebox/ weather_scatteredsnowshowers-40.gif"                => array('showers.png'),
            "0"                                  => array('other.png'),
            "1"                                  => array('storm.png','storm_night.png'),
            "2"                                  => array('storm.png','storm_night.png'),
            "3"                                  => array('chance_of_storm.png','chance_of_storm_night.png'),
            "4"                                  => array('thunderstorm.png'),          
            "5"                                  => array('rain_and_snow.png'),
            "6"                                  => array('sleet.png'),
            "7"                                  => array('sleet.png'),     
            "8"                                  => array('rain.png'),    
            "9"                                  => array('rain.png'),     
            "10"                                 => array('rain.png'),
            "11"                                 => array('rain.png'),
            "12"                                 => array('rain.png'),
            "13"                                 => array('chance_of_snow.png', 'chance_of_snow_night.png'),                               
            "14"                                 => array('snow.png'),
            "15"                                 => array('snow.png'),
            "16"                                 => array('snow.png'),
            "17"                                 => array('chance_of_storm.png','chance_of_storm_night.png'),  
            "18"                                 => array('rain.png'),
            "19"                                 => array('dusty.png'),
            "20"                                 => array('foggy.png','foggy_night.png'),
            "21"                                 => array('hazy.png','hazy_night.png'),
            "22"                                 => array('smoke.png','smoke_night.png'),
            "23"                                 => array('cloudy.png'),
            "24"                                 => array('cloudy.png'),      
            "25"                                 => array('snow.png'),
            "26"                                 => array('cloudy.png'),
            "27"                                 => array('mostly_cloudy.png','mostly_cloudy_night.png'), 
            "28"                                 => array('mostly_cloudy.png','mostly_cloudy_night.png'), 
            "29"                                 => array('partly_cloudy.png','partly_cloudy_night.png'),
            "30"                                 => array('partly_cloudy.png','partly_cloudy_night.png'),
            "31"                                 => array('sunny.png','sunny_night.png'),
            "32"                                 => array('sunny.png','sunny_night.png'),
            "33"                                 => array('sunny.png','sunny_night.png'),
            "34"                                 => array('partly_cloudy.png','partly_cloudy_night.png'),
            "35"                                 => array('thunderstorm.png'),
            "36"                                 => array('sunny.png','sunny_night.png'),
            "37"                                 => array('thunderstorm.png'),
            "38"                                 => array('chance_of_storm.png','chance_of_storm_night.png'),
            "39"                                 => array('chance_of_storm.png','chance_of_storm_night.png'),
            "40"                                 => array('rain.png'),
            "41"                                 => array('snow.png'),
            "42"                                 => array('snow.png'),
            "43"                                 => array('snow.png'),
            "44"                                 => array('partly_cloudy.png','partly_cloudy_night.png'),
            "45"                                 => array('chance_of_storm.png','chance_of_storm_night.png'),
            "46"                                 => array('chance_of_snow.png', 'chance_of_snow_night.png'),
            "47"                                 => array('chance_of_storm.png','chance_of_storm_night.png'),
            "3200"                               => array('other.png')
 		);
        // translation table
        $this->translation = array(
            "Tornado"                           => JText::_('MOD_WEATHER_GK4_TORNADO'),
            "Tropical Storm"                    => JText::_('MOD_WEATHER_GK4_TROPICAL_STORM'),
            "Hurricane"                         => JText::_('MOD_WEATHER_GK4_HURRICANE'),
            "Severe Thunderstorms"              => JText::_('MOD_WEATHER_GK4_SEVERE_THUNDERSTORMS'),
            "Thunderstorms"                     => JText::_('MOD_WEATHER_GK4_THUNDERSTORMS'),
            "Mixed Rain and Snow"               => JText::_('MOD_WEATHER_GK4_MIXED_RAIN_AND_SNOW'),
            "Mixed Rain and Sleet"              => JText::_('MOD_WEATHER_GK4_MIXED_RAIN_AND_SLEET'),
            "Mixed Snow and Sleet"              => JText::_('MOD_WEATHER_GK4_MIXED_SNOW_AND_SLEET'),
            "Freezing Drizzle"                  => JText::_('MOD_WEATHER_GK4_FREEZING_DRIZZLE'),
            "Drizzle"                           => JText::_('MOD_WEATHER_GK4_DRIZZLE'),
            "Freezing Rain"                     => JText::_('MOD_WEATHER_GK4_FREEZING_RAIN'),
            "Showers"                           => JText::_('MOD_WEATHER_GK4_SHOWERS'),
            "Snow Flurries"                     => JText::_('MOD_WEATHER_GK4_SNOW_FLURRIES'),
            "Light Snow Showers"                => JText::_('MOD_WEATHER_GK4_LIGHT_SNOW_SHOWERS'),
            "Blowing Snow"                      => JText::_('MOD_WEATHER_GK4_BLOWING_SNOW'),
            "Snow"                              => JText::_('MOD_WEATHER_GK4_SNOW'),
            "Hail"                              => JText::_('MOD_WEATHER_GK4_HAIL'),
            "Sleet"                             => JText::_('MOD_WEATHER_GK4_SLEET'),
            "Dust"                              => JText::_('MOD_WEATHER_GK4_DUST'),
            "Foggy"                             => JText::_('MOD_WEATHER_GK4_FOGGY'),
            "Haze"                              => JText::_('MOD_WEATHER_GK4_HAZE'),
            "Smoky"                             => JText::_('MOD_WEATHER_GK4_SMOKY'),
            "Blustery"                          => JText::_('MOD_WEATHER_GK4_BLUSTERY'),
            "Windy"                             => JText::_('MOD_WEATHER_GK4_WINDY'),
            "Cold"                              => JText::_('MOD_WEATHER_GK4_COLD'),
            "Cloudy"                            => JText::_('MOD_WEATHER_GK4_CLOUDY'),
            "Mostly Cloudy"                     => JText::_('MOD_WEATHER_GK4_MOSTLY_CLOUDY'),
            "Partly Cloudy"                     => JText::_('MOD_WEATHER_GK4_PARTLY_CLOUDY'),
            "Clear"                             => JText::_('MOD_WEATHER_GK4_CLEAR'),
            "Sunny"                             => JText::_('MOD_WEATHER_GK4_SUNNY'),
            "Fair"                              => JText::_('MOD_WEATHER_GK4_FAIR'),
            "Mixed Rain and Hail"               => JText::_('MOD_WEATHER_GK4_MIXED_RAIN_AND_HAIL'),
            "Hot"                               => JText::_('MOD_WEATHER_GK4_HOT'),
            "Isolated Thunderstorms"            => JText::_('MOD_WEATHER_GK4_ISOLATED_THUNDERSTORMS'),
            "Scattered Thunderstorms"           => JText::_('MOD_WEATHER_GK4_SCATTERED_THUNDERSTORMS'),
            "Scattered Showers"                 => JText::_('MOD_WEATHER_GK4_SCATTERED_SHOWERS'),
            "Heavy Snow"                        => JText::_('MOD_WEATHER_GK4_HEAVY_SNOW'),
            "Scattered Snow Showers"            => JText::_('MOD_WEATHER_GK4_SCATTERED_SNOW_SHOWERS'),
            "Heavy Snow"                        => JText::_('MOD_WEATHER_GK4_HEAVY_SNOW'),
            "Partly Cloudy"                     => JText::_('MOD_WEATHER_GK4_PARTLY_CLOUDY'),
            "Thundershowers"                    => JText::_('MOD_WEATHER_GK4_THUNDERSHOWERS'),
            "Snow Showers"                      => JText::_('MOD_WEATHER_GK4_SNOW_SHOWERS'),
            "Isolated thundershowers"           => JText::_('MOD_WEATHER_GK4_ISOLATED_THUNDERSHOWERS'),
            "Not Available"                     => JText::_('MOD_WEATHER_GK4_NOT_AVAILABLE'),
            "Mostly Clear"                      => JText::_('MOD_WEATHER_GK4_MOSTLY_CLEAR')
        );
		// parsed from XML data
		$this->parsedData = array(
			'unit' => '',
			'current_condition' => '',
			'current_temp_f' => '',
			'current_temp_c' => '',
			'current_humidity' => '',
			'current_icon' => '',
			'current_wind' => '',
            'sunrise' => '',
            'sunset' => '',
			'forecast' => array()
		);
		// get the config
		$this->config['module_unique_id'] = $params->get('module_unique_id','weather1'); // unique ID
        $this->config['city'] = str_replace(' ','%20',$params->get('city',''));
		$this->config['fcity'] = $params->get('fullcity','');
        $this->config['language'] = $params->get('language','en');
        $this->config['encoding'] = $params->get('encoding', '');
		$this->config['latitude'] = $params->get('lat','null');
		$this->config['longitude'] = $params->get('lon','null');
		$this->config['timezone'] = $params->get('timezone',0);
		$this->config['moduleMode'] = $params->get('moduleMode','vertical');
		$this->config['showCity'] = $params->get('showCity',1);
		$this->config['showHum'] = $params->get('showHum',1);
		$this->config['showWind'] = $params->get('showWind',1);
		$this->config['tempUnit'] = $params->get('tempUnit','c');
		$this->config['showPresent'] = $params->get('showPresent',1);
		$this->config['nextDays'] = $params->get('nextDays',1);
		$this->config['amountDays'] = $params->get('amountDays',4);
		$this->config['current_icon_size'] = $params->get('current_icon_size',64);
		$this->config['forecast_icon_size'] = $params->get('forecast_icon_size',32);
		$this->config['useCSS'] = $params->get('useCSS',1);
		$this->config['useCache'] = $params->get('useCache',1);
		$this->config['cacheTime'] = $params->get('cacheTime',5);
		$this->config['source'] = $params->get('source', '');
		$this->config['WOEID'] = $params->get('WOEID', '');
		$this->config['yahoo_icons'] = $params->get('yahoo_icons', '0');
        $this->config['t_offset'] = $params->get('t_offset', '');
	}
	/**
	 *	GETTING DATA
	 **/	
	function getData() {
		clearstatcache();
		if($this->config['useCache'] == 1) {
			if(filesize(realpath('cache/mod_weather.xml')) == 0 || ((filemtime(realpath('cache/mod_weather.xml')) + $this->config['cacheTime'] * 60) < time())) {
				if(function_exists('curl_init')) {
					// initializing connection
					$curl = curl_init();
					// saves us before putting directly results of request
					curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
					// url to get
					$encoding_url = ($this->config['encoding'] != '') ? '&oe='.$this->config['encoding'] : '';
				    // check the source of request
				    if($this->config['source'] == 'google'){
				    	curl_setopt($curl, CURLOPT_URL, 'http://www.google.com/ig/api?weather='.$this->config['city'].'&hl='.$this->config['language'].$encoding_url);
				    } else {
				    	curl_setopt($curl, CURLOPT_URL, 'http://weather.yahooapis.com/forecastrss?w='.$this->config['WOEID']."&u=".$this->config['tempUnit']);
				    }
					// timeout in seconds
					curl_setopt($curl, CURLOPT_TIMEOUT, 20);
					// useragent
					curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
					// reading content
					$this->content = curl_exec($curl);
					// closing connection
					curl_close($curl);
				} 
                // check file_get_contents function enable and allow external url's'
                else if( file_get_contents(__FILE__) && ini_get('allow_url_fopen') && !function_exists('curl_init')) {
	                if($this->config['source'] == 'google'){
	                    $encoding_url = ($this->config['encoding'] != '') ? '&oe='.$this->config['encoding'] : '';
	                    $this->content = file_get_contents('http://www.google.com/ig/api?weather='.$this->config['city'].'&hl='.$this->config['language'].$encoding_url);
	                } else {
	                    $this->content = file_get_contents('http://weather.yahooapis.com/forecastrss?w='.$this->config['WOEID']."&u=".$this->config['tempUnit']);
	                }
                } else {
					$this->error = 'cURL extension and file_get_content method is not available on your server';
				}
				// if error doesn't exist
				if($this->error == '') {
					// saving cache
					JFile::write(realpath('modules/mod_weather_gk4/cache/mod_weather.xml'), $this->content);
				} else {
				    $this->content = JFile::read(realpath('modules/mod_weather_gk4/cache/mod_weather.backup.xml'));
				}
			} else {
				$this->content = JFile::read(realpath('modules/mod_weather_gk4/cache/mod_weather.xml'));
			}
		} else {
			if(function_exists('curl_init')) {
				// initializing connection
				$curl = curl_init();
				// saves us before putting directly results of request
				curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
				// url to get
				$encoding_url = ($this->config['encoding'] != '') ? '&oe='.$this->config['encoding'] : '';
				// check the source of query
				if($this->config['source'] == 'google'){
					$encoding_url = ($this->config['encoding'] != '') ? '&oe='.$this->config['encoding'] : '';    
					curl_setopt($curl, CURLOPT_URL, 'http://www.google.com/ig/api?weather='.$this->config['city'].'&hl='.$this->config['language'].$encoding_url);
				} else {
					curl_setopt($curl, CURLOPT_URL, 'http://weather.yahooapis.com/forecastrss?w='.$this->config['WOEID']."&u=".$this->config['tempUnit']); 
				}
				// timeout in seconds
				curl_setopt($curl, CURLOPT_TIMEOUT, 20);
				// useragent
				curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
				// reading content
				$this->content = curl_exec($curl);
				// closing connection
				curl_close($curl);
			} 
            // check file_get_contents function enable and allow external url's'
            else if( file_get_contents(__FILE__) && ini_get('allow_url_fopen') && !function_exists('curl_init')) {
                if($this->config['source'] == 'google'){
                    $this->content = file_get_contents('http://www.google.com/ig/api?weather='.$this->config['city'].'&hl='.$this->config['language'].$encoding_url);
                } else {
                    $this->content = file_get_contents('http://weather.yahooapis.com/forecastrss?w='.$this->config['WOEID']."&u=".$this->config['tempUnit'].$encoding_url);
                }
            } else {
				$this->error = 'cURL extension and file_get_content method is not available on your server';
			}
		}
	}
	/**
	 *	PARSING DATA
	 **/
	function parseData() {
		if($this->error === '') {
            // checking for 400 Bad request page
			if(strpos($this->content, '400 Bad') == FALSE) {	
				$xml =& JFactory::getXMLParser('Simple');
                if($this->config['source'] == 'google'){
					if($xml->loadString($this->content)) {
						// checking data correct
						if(!isset($xml->document->weather[0]->problem_cause[0])) {
							$problem = false;
							// preparing shortcuts
	                        $forecast_info = $xml->document->weather[0]->forecast_information[0];
							$current_conditions = $xml->document->weather[0]->current_conditions[0];
							//
							if(
								isset($forecast_info->unit_system[0]) &&
								isset($current_conditions->condition[0]) &&
								isset($current_conditions->temp_f[0]) &&
								isset($current_conditions->temp_c[0]) &&
								isset($current_conditions->humidity[0]) &&
								isset($current_conditions->icon[0]) &&
								isset($current_conditions->wind_condition[0])
							) {
								// loading data from feed
								$this->parsedData['unit'] = $forecast_info->unit_system[0]->attributes('data');
								$this->parsedData['current_condition'] = $current_conditions->condition[0]->attributes('data');
								$this->parsedData['current_temp_f'] = $current_conditions->temp_f[0]->attributes('data');
								$this->parsedData['current_temp_c'] = $current_conditions->temp_c[0]->attributes('data');
								$this->parsedData['current_humidity'] = $current_conditions->humidity[0]->attributes('data');
								$this->parsedData['current_icon'] = $current_conditions->icon[0]->attributes('data');
								$this->parsedData['current_wind'] = $current_conditions->wind_condition[0]->attributes('data');
								// parsing forecast
								for($i = 0; $i < 4; $i++) {
									$node = $xml->document->weather[0]->forecast_conditions[$i];
									$this->parsedData['forecast'][$i] = array(
										"day" => $node->day_of_week[0]->attributes('data'),
										"low" => $node->low[0]->attributes('data'),
										"high" => $node->high[0]->attributes('data'),
										"icon" => $node->icon[0]->attributes('data'),
										"condition" => $node->condition[0]->attributes('data')
									);
								}
							} else {
								$problem = true;
							}
							// if problem detected
							if($problem == true) {
								$this->error = 'An error occured during parsing XML data. Please try again.';
							} else {
							    // prepare a backup
							    JFile::write(realpath('modules/mod_weather_gk4/cache/mod_weather.backup.xml'), $this->content);
							}
						} else { // if specified location doesn't exist
							$this->error = 'An error occured - you set wrong location or data for your location are unavailable';
						}
					}
				} else if($this->config['source'] == 'yahoo'){
                        $this->content = str_replace('yweather:','', $this->content);
                        $this->content = str_replace('geo:','', $this->content);
                        // load the XML content
                        if($xml->loadString($this->content)) {
	                       	if(strpos($xml->document->channel[0]->description[0]->attributes('date'), "Error") == FALSE) {
							$problem = false;
	                        $current_info = $xml->document->channel[0];
	                        $current_info2 = $xml->document->channel[0]->item[0];
	                        $forecast_info = $xml->document->channel[0]->item[0];
	                        if(
								isset($current_info->units[0]) &&
								isset($current_info2->condition[0]) &&
								isset($current_info->atmosphere[0]) &&
								isset($current_info->image[0]) &&
	                            isset($current_info->location[0]) &&
								isset($current_info->wind[0])
							) {
	                            // loading data from feed
	                            if(isset($this->translation[$current_info2->condition[0]->attributes('text')])){
									$this->parsedData['current_condition'] = $this->translation[$current_info2->condition[0]->attributes('text')];
	                            } else {
	                           		$this->parsedData['current_condition'] =$current_info2->condition[0]->attributes('text');  
	                            }
								$this->parsedData['current_temp'] = $current_info2->condition[0]->attributes('temp')."&deg;".$current_info->units[0]->attributes('temperature');
								$this->parsedData['current_humidity'] = "Humidity: ".$current_info->atmosphere[0]->attributes('humidity')."%";
	                            $this->parsedData['current_icon'] = $current_info2->condition[0]->attributes('code');
								$this->parsedData['current_wind'] = "Wind: ".$current_info->wind[0]->attributes('speed')." ".$current_info->units[0]->attributes('speed');
	                            $this->parsedData['sunrise'] = $current_info->astronomy[0]->attributes('sunrise');
	                            $this->parsedData['sunset'] = $current_info->astronomy[0]->attributes('sunset');
	                            // parsing forecast
	                            for($i = 0; $i < 2; $i++) {
	                            	if(isset($this->translation[$forecast_info->forecast[$i]->attributes('text')])){
	                            		$this->cond_tmp = $this->translation[$forecast_info->forecast[$i]->attributes('text')];
	                            	} else {
	                            	   $this->cond_tmp = $forecast_info->forecast[$i]->attributes('text');
	                            	}
	                            	$this->parsedData['forecast'][$i] = array(
										"day" => $forecast_info->forecast[$i]->attributes('date'),
										"low" => $forecast_info->forecast[$i]->attributes('low')."&deg;".$current_info->units[0]->attributes('temperature'),
										"high" => $forecast_info->forecast[$i]->attributes('high')."&deg;".$current_info->units[0]->attributes('temperature'),
	                                    "icon" => $forecast_info->forecast[$i]->attributes('code'),
										"condition" => $this->cond_tmp,
									);
								}
							} else {
								$problem = true; // set the problem 
							}
							// if problem detected
							if($problem == true) {
								$this->error = 'An error occured during parsing XML data. Please try again.';
							} else {
							    // prepare a backup
							    JFile::write(realpath('modules/mod_weather_gk4/cache/mod_weather.backup.xml'), $this->content);
							}
						} else { // if specified location doesn't exist
							$this->error = 'An error occured - you set wrong location or data for your location are unavailable';
						}
	                } else {
						$this->error = 'Parse error in downloaded data'; // set error
					}
	        	}
	        } else {
				$this->error = 'Parse error in downloaded data (400)'; // set error
			}
		}
    }
	/** 
	 *	RENDERING LAYOUT
	 **/
	function renderLayout() {	
		// if any error exists
		if($this->error === '') {
			// create instances of basic Joomla! classes
			$document =& JFactory::getDocument();
			$uri =& JURI::getInstance();
			// add stylesheets to document header
			if($this->config["useCSS"] == 1){
				$document->addStyleSheet( $uri->root().'modules/mod_weather_gk4/style/style.css', 'text/css' );
			}
			// include necessary view
			require(JModuleHelper::getLayoutPath('mod_weather_gk4', ($this->config['source'] == 'google') ? 'googleView' : 'yahooView'));
		} else { // else - output error information
			echo $this->error;
		}
	}
	/*
     * Function to get the backup data
     */
    function useBackup() {
        $this->error = '';
        $this->content = JFile::read(realpath('modules/mod_weather_gk4/cache/mod_weather.backup.xml'));
    }
	/*
	 * Function to get correct icon
	 */
	function icon($icon, $size = 128) {
		// creating JURI instance
		$uri =& JURI::getInstance();
		$icon_path = $uri->root().'modules/mod_weather_gk4/icons/'.(($size == 128) ? '' : $size.'/');
		
		if($this->config['source'] == 'google' || ($this->config['source'] == 'yahoo' && $this->config['yahoo_icons'] == 0)) {
			// if selected icon exists
			if(is_array($this->icons[$icon])) {
	            // if user use PHP5 and google feed
				if(function_exists('date_sunrise') && function_exists('date_sunset') && $this->config['source']=='google') {
					// if user set values for his position
					if($this->config['latitude'] !== 'null' && $this->config['longitude'] !== 'null') {
						// getting informations about sunrise and sunset time
						$sunrise = date_sunrise( time(), SUNFUNCS_RET_TIMESTAMP , $this->config['latitude'], $this->config['longitude'], ini_get("date.sunrise_zenith"), $this->config['timezone'] )+$this->config['t_offset']*3600;
						$sunset = date_sunset( time(), SUNFUNCS_RET_TIMESTAMP , $this->config['latitude'], $this->config['longitude'], ini_get("date.sunrise_zenith"), $this->config['timezone'] )+$this->config['t_offset']*3600;
						// flag for night ;)
						$night = false;
						// night check ;)
						if(time() < $sunrise || time() > $sunset) {
							$night = true; // now is night! :P
						}
						// getting final icon - if selected icon has two icons - for day and night - return correct icon
						return $icon_path . $this->icons[$icon][(count($this->icons[$icon]) > 1 && $night) ? 1 : 0];
					} else {
						return $icon_path . $this->icons[$icon][0];
					}
				} 
	            // if user use yahoo feed
	            else if ($this->config['source']=='yahoo' && isset($this->parsedData['sunrise']) && isset($this->parsedData['sunset'])){
	                    $sunrise = $this->prepareTime($this->parsedData['sunrise'])+$this->config['t_offset']*3600;
	                    $sunset = $this->prepareTime($this->parsedData['sunset'])+$this->config['t_offset']*3600;
	                    // flag for night ;)
						$night = false;
						// night check ;)
						if(time() < $sunrise || time() > $sunset) {
							$night = true; // now is night! :P
						}
						// getting final icon - if selected icon has two icons - for day and night - return correct icon
						return $icon_path . $this->icons[$icon][(count($this->icons[$icon]) > 1 && $night) ? 1 : 0];
	            } else {
					return $icon_path . $this->icons[$icon][0];
				}
			} else { // else - return "?" icon
				return $icon_path . 'other.png';
			}
		} else {
			return 'http://l.yimg.com/a/i/us/we/52/'.$icon.'.gif';
		}
	}
	/*
	 * Function to get correct temperature
	 */
	function temp($temp) {
		if($this->parsedData['unit'] == 'US' && $this->config['tempUnit'] == 'c') return $this->F2Cel($temp);
		else if($this->parsedData['unit'] == 'SI' && $this->config['tempUnit'] == 'f') return $this->Cel2F($temp);
		else return $temp.(($this->config['tempUnit'] == 'c') ? '&deg;C' : '&deg;F' );		
	}
    /*
     * Function to parse sunrise/sunset time to timestamp
     */
    function prepareTime($time) {
        $f_date = date("Y-m-d")." ".$time;
        $pos = strpos($f_date, "pm");
        $f_date = preg_replace('/ [a-z][a-z]/', ':00', $f_date);
        return strtotime($f_date) + (($pos !== FALSE) ? 12*3600 : 0); // if pm add 12 hours
    }
    /*
     * function to parse Celsius to Farhenheit
     */
    function Cel2F($value) {
    	return round(32 + ((5/9) * $value)).'&deg;F';
    }
	/*
 	 * function to parse Farhenheit to Celsius
 	 */    
    function F2Cel($value) {
    	return round((5/9) * ($value - 32)).'&deg;C';
    }
}
/*eof*/