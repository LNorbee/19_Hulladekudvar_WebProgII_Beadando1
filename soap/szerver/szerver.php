<?php
	require("hulladekudvarok.php");
	$server = new SoapServer("hulladekudvarok.wsdl");
	$server->setClass('Hulladekudvarok');
	$server->handle();
?>
