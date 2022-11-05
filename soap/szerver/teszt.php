<!DOCTYPE HTML>
<html>

<head>
  <meta charset="utf-8">
  <title>Teszt Hulladekudvar</title>
</head>

<body>
  <?php
  $options = array(

    'keep_alive' => false,
    //'trace' =>true,
    //'connection_timeout' => 5000,
    //'cache_wsdl' => WSDL_CACHE_NONE,
  );
  $client = new SoapClient(
    'http://localhost/19_Hulladekudvar_WebProgII_Beadando1/soap/szerver/hulladekudvarok.wsdl',
    $options
  );

  $fajtak = $client->getHulladekFajtak();
  echo "<pre>";
  print_r($fajtak);
  echo "</pre>";

  $helyekFajtaIdszerint = $client->getHuladekudvarHely(1);
  echo "<pre>";
  print_r($helyekFajtaIdszerint);
  echo "</pre>";
  ?>

</body>

</html>