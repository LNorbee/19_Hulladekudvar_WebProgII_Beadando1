<?php
class Hulladekudvarok {
  
  /**
    *  @return Fajtak
    */
  public function getHulladekFajtak(){
  
    $eredmeny = array("hibakod" => 0,
              "uzenet" => "",
              "hulladekfajtak" => Array());
    
    try {
      $dbh = new PDO('mysql:host=localhost;dbname=hulladekudvar','root', '',
            array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
      $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
    
      $sql = "SELECT * FROM `fajta` ORDER BY `fajta`.`nev` ASC";
      $sth = $dbh->prepare($sql);
      $sth->execute(array());
      $eredmeny['hulladekfajtak'] = $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    catch (PDOException $e) {
      $eredmeny["hibakod"] = 1;
      $eredmeny["uzenet"] = $e->getMessage();
    }
    
    return $eredmeny;
  }

  /**
    *  @param integer $fajtaid
    *  @return Helyek
    */
  function getHuladekudvarHely($fajtaid){
  
    $eredmeny = array("hibakod" => 0,
              "uzenet" => "",
              "fajtaid" => "",
              "helyek" => Array());
    
    try {
      $dbh = new PDO('mysql:host=localhost;dbname=hulladekudvar','root', '',
            array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
      $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
    
      $eredmeny["fajtaid"] = $fajtaid;
    
      $sql = "SELECT hely.kerulet, hely.cim FROM ((`gyujt` 
      INNER JOIN fajta ON gyujt.fajtaid = fajta.id)
      INNER JOIN hely ON gyujt.helyid = hely.id) 
      WHERE gyujt.fajtaid = :fajtaid 
      ORDER BY `hely`.`kerulet` ASC";

      $sth = $dbh->prepare($sql);
      $sth->execute(array(":fajtaid" => $fajtaid));
      $eredmeny["helyek"] = $sth->fetchAll(PDO::FETCH_ASSOC); 
      
    }
    catch (PDOException $e) {
      $eredmeny["hibakod"] = 1;
      $eredmeny["uzenet"] = $e->getMessage();
    }
    
    return $eredmeny;
  }
}

class Fajta {
  /**
   * @var integer
   */
  public $id;
  /**
   * @var string
   */
  public $nev;  

}

class Fajtak {
  /**
   * @var integer
   */
  public $hibakod;

  /**
   * @var string
   */
  public $uzenet;  

  /**
   * @var Fajta[]
   */
  public $hulladekfajtak;  
}

class Hely {

  /**
   * @var string
   */
  public $kerulet;
  /**
   * @var string
   */
  public $cim;  

}


class Helyek {
  /**
   * @var integer
   */
  public $hibakod;

  /**
   * @var string
   */
  public $uzenet;  

  /**
   * @var string
   */
  public $fajtaid;

  /**
   * @var Hely[]
   */
  public $helyek;  
}
