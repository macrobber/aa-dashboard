<?php

//
// Open Web Analytics - An Open Source Web Analytics Framework
//
// Copyright 2006 Peter Adams. All rights reserved.
//
// Licensed under GPL v2.0 http://www.gnu.org/copyleft/gpl.html
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// $Id$
//

/**
 * OWA Configuration
 *
 * @author      Peter Adams <peter@openwebanalytics.com>
 * @copyright   Copyright &copy; 2006 Peter Adams <peter@openwebanalytics.com>
 * @license     http://www.gnu.org/copyleft/gpl.html GPL v2.0
 * @category    owa
 * @package     owa
 * @version        $Revision$
 * @since        owa 1.0.0
 */

/**
 * DATABASE CONFIGURATION
 *
 * Connection info for databases that will be used by OWA.
 *
 */

define('OWA_DB_TYPE', 'mysql'); // options: mysql
define('OWA_DB_NAME', getenv('OWA_DB_NAME') ?: 'owa'); // name of the database
define('OWA_DB_HOST', getenv('OWA_DB_HOST') ?: 'localhost'); // host name of the server housing the database
define('OWA_DB_USER', getenv('OWA_DB_USER') ?: 'mack'); // database user
define('OWA_DB_PORT', '3306'); // port of database
define('OWA_DB_PASSWORD', getenv('OWA_DB_PASSWORD') ?: 'K!llo555'); // database user's password

/**
 * AUTHENTICATION KEYS AND SALTS
 *
 * Change these to different unique phrases.
 */
define('OWA_NONCE_KEY', ':N>r-Xe].LdHG&Wk#n]x1,_C2-N-(Y|dU]e cCC1aMCIY_tS}_6=q?;-BOvV;+;.');
define('OWA_NONCE_SALT', 'l7Y 9I^=iaR5zPyh#4ImA>#bFG!@<QwlF3(iO@>&Li[t6Xfa@MhWPgEsF98bVWWn');
define('OWA_AUTH_KEY', 'Sr]5&0+FruZR`pl7H[>KJ,tS)SL5`YCb[71)B,u+yx*cPiWoZ4y@t&f6/2if?/l.');
define('OWA_AUTH_SALT', 'rbRGpx28:ku&jq<e,oab7:m>qb/DO*C@j=2/o<9wF]3gYwp,j/^#EpqP&^5l~op@');

/**
 * PUBLIC URL
 *
 * Define the URL of OWA's base directory e.g. http://www.domain.com/path/to/owa/
 * Don't forget the slash at the end.
 */
define('OWA_PUBLIC_URL', getenv('OWA_PUBLIC_URL') ?: 'https://primenumberdesigns.com/dashboard/');

/**
 * OWA ERROR HANDLER
 *
 * Overide OWA error handler. This should be done through the admin GUI, but
 * can be handy during install or development.
 *
 * Choices are:
 *
 * 'production' - will log only critical errors to a log file.
 * 'development' - logs al sorts of useful debug to log file.
 */

//define('OWA_ERROR_HANDLER', 'development');

/**
 * LOG PHP ERRORS
 *
 * Log all php errors to OWA's error log file. Only do this to debug.
 */

//define('OWA_LOG_PHP_ERRORS', true);

/**
 * OBJECT CACHING
 *
 * Override setting to cache objects. Caching will increase performance.
 */

//define('OWA_CACHE_OBJECTS', true);

/**
 * CONFIGURATION ID
 *
 * Override to load an alternative user configuration
 */

//define('OWA_CONFIGURATION_ID', '1');


?>
