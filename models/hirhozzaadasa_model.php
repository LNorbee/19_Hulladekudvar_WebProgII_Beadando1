<?php
class Hirhozzaadasa_Model
{

    public function hirhozzaadasa($vars)
    {
        $retData['eredmeny'] = "";
        $retData['uzenet'] = "";

        try {
            $connection = Database::getConnection();
            $sqlSelect = "INSERT INTO `hirek`(`hirCim`, `cikkTartalom`, `forrasLink`, `kepLink`, `publikalasIdo`)
            VALUES (:hirCim, :cikkTartalom, :forrasLink, :kepLink, :publikalasIdo)";

            $sth = $connection->prepare($sqlSelect);
            $sth->execute(array(
                ':hirCim' => $vars['hirCim'], ':cikkTartalom' => $vars['cikkTartalom'],
                ':forrasLink' => $vars['forrasLink'], ':kepLink' => $vars['kepLink'], ':publikalasIdo' => $vars['publikalasIdo']
            ));

            if ($sth->rowCount()) {
                $newid = $connection->lastInsertId();
                $retData['uzenet'] = "A hír publikálása sikeres.<br>Azonosítója: {$newid}";
                $retData['eredmeny'] = "OK";
            } else {
                $retData['uzenet']  = "A hír publikálása nem sikerült.";
                $retData['eredmeny'] = "ERROR";
            }

            return $retData;
        } catch (PDOException $e) {
            $retData['eredmeny'] = "ERROR";
            $retData['uzenet'] = "Adatbázis hiba: " . $e->getMessage() . "!";
        }
    }
}
