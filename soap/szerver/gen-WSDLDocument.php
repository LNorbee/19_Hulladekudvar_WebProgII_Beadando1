<?php
	require 'hulladekudvarok.php';
	require 'WSDLDocument/WSDLDocument.php';
	$wsdl = new WSDLDocument('Hulladekudvarok', 
	"http://localhost/19_Hulladekudvar_WebProgII_Beadando1/soap/szerver/szerver.php",
	"http://localhost/19_Hulladekudvar_WebProgII_Beadando1/soap/szerver/");
	$wsdl->formatOutput = true;
	$wsdlfile = $wsdl->saveXML();
	echo $wsdlfile;
	file_put_contents ("hulladekudvarok.wsdl" , $wsdlfile);
?>
