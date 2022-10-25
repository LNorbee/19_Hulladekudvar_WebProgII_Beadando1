<?php

//echo phpinfo();


//Alkalmazas gyoker konyvtar a szerveren
define('SERVER_ROOT', $_SERVER['DOCUMENT_ROOT'].'/19_Hulladekudvar_WebProgII_Beadando1/');

//URL cim az alkalmazas gyokerehez
define('SITE_ROOT', 'http://localhost/19_Hulladekudvar_WebProgII_Beadando1/');


require_once(SERVER_ROOT.'controllers/'.'router.php');


?>