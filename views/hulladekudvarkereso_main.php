<?php 

	$options = array(
    
    'keep_alive' => false,
      //'trace' =>true,
      //'connection_timeout' => 5000,
      //'cache_wsdl' => WSDL_CACHE_NONE,
    );
    $client = new SoapClient(
      'http://localhost/19_Hulladekudvar_WebProgII_Beadando1/soap/szerver/hulladekudvarok.wsdl',$options);
    
	
	$fajtak = $client->getHulladekFajtak();
	if(isset($_POST['fajta']) && trim($_POST['fajta']) != "")		
	$hulladeklerakohelyek = $client->getHuladekudvarHely($_POST['fajta']);


  ?>
    
  <body>
    <h1>Hulladékudvarok hulladék fajta szerint</h1>
    
	<form name="hulladekfajtak" method="POST">
      <select name="fajta" onchange="javascript:hulladekfajtak.submit();">
        <option value="">Válasszon egy hulladék fajtát</option>
        <?php
          foreach($fajtak->hulladekfajtak  as $value) 
          {		
            echo '<option value="'.$value['id'].'">'.$value['nev'].'</option>';
          }
        ?>
      </select> 
	   
	  
	  
        <?php
          if(isset($hulladeklerakohelyek))
          {
            echo "<fieldset>";
            
			
            foreach($hulladeklerakohelyek->helyek as $hulladeklerakohely)
            {
              echo $hulladeklerakohely['kerulet'].' '.$hulladeklerakohely['cim']."<br>";
            }
            echo "</fieldset>";
          }
        ?>
    </form>