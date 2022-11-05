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
if (isset($_POST['fajta']) && trim($_POST['fajta']) != "")
  $hulladeklerakohelyek = $client->getHuladekudvarHely($_POST['fajta']);


?>

<body>
  <h1 class="text-center">Hulladékudvarok hulladék fajta szerint</h1>

  <form name="hulladekfajtak" method="POST">
    <div class="form-row align-items-center">
      <div class="col-auto my-1">
        <label>Hulladék fajta:</label>
        <select name="fajta" class="custom-select mr-sm-2" onchange="javascript:hulladekfajtak.submit();">
          <option value="">Válasszon egy hulladék fajtát</option>
          <?php
          foreach ($fajtak->hulladekfajtak  as $value) {
            echo '<option value="' . $value['id'] . '">' . $value['nev'] . '</option>';
          }
          ?>
        </select>
      </div>
    </div>
  </form>
  <?php
  if (isset($hulladeklerakohelyek)) {
    echo '<table class="table table-dark mt-4"><thead>';
    echo '<tr><th scope="col">Hulladékudvar címe</th></tr></thead>
  <tbody>';


    foreach ($hulladeklerakohelyek->helyek as $hulladeklerakohely) {
      echo "<tr><td>" . $hulladeklerakohely['kerulet'] . ' ' . $hulladeklerakohely['cim'] . "</td></tr>";
    }
    echo "</tbody></table>";
  }
  ?>