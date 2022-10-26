<?php

class Hiroldal_Model
{
	public function get_data($vars)
	{
		$retData['eredmeny'] = "";
        $retData['tartalom'] = "";
		try {
			$connection = Database::getConnection();

			$sqlSelect = "SELECT * from hirek ORDER BY publikalasIdo DESC";
            $dbh = $connection ->prepare($sqlSelect);
            $dbh->execute();

            $sqlSelectComment = "SELECT hozzaszolas.felhasznalokID, hozzaszolas.hirekID, hozzaszolas.publikalasIdo, hozzaszolas.tartalom
            , felhasznalok.felhasznalonev FROM `hozzaszolas`, felhasznalok WHERE hozzaszolas.felhasznalokID = felhasznalok.id
             ORDER BY hozzaszolas.publikalasIdo DESC";
            $dbhComment = $connection ->prepare($sqlSelectComment);
            $dbhComment->execute();
            //$retData['uzenet'] = $dbh->fetch(PDO::FETCH_ASSOC);
            $rowCommnet2 = $dbhComment->fetchAll(PDO::FETCH_ASSOC);
            //var_dump($rowCommnet);

            for($i=0; $row = $dbh->fetch(); $i++){
                $retData['tartalom'] .= '<div class="col-md-12" id="'.$row['id'].'">';
                $retData['tartalom'] .= '<h2>'.$row['hirCim'].'</h2>';
                $retData['tartalom'] .= '<img class="rounded mx-auto d-block" style="width: 100%;height:auto;" src="'.$row['kepLink'].'">';
                $retData['tartalom'] .= '<span>'.$row['publikalasIdo'].'</span>';
                $retData['tartalom'] .= '<p>'.$row['cikkTartalom'].'</p>';                
                $retData['tartalom'] .= 'Forrás URL: <a href="'.$row['forrasLink'].'">'.$row['forrasLink'].'</a>';
                foreach ($rowCommnet2 as $row2 => $rowCommnet) {
                    if($row['id'] ==  $rowCommnet['hirekID']){
                       
                        $retData['tartalom'] .= '<div class="rounded bg-dark comment mt-4 p-2 text-white text-justify">';
                        $retData['tartalom'] .= '<h4>'.$rowCommnet['felhasznalonev'].'</h4>';
                        $retData['tartalom'] .= '<span>'.$rowCommnet['publikalasIdo'].'</span>';
                        $retData['tartalom'] .= '<br>';
                        $retData['tartalom'] .= '<p>'.$rowCommnet['tartalom'].'</p>';
                        $retData['tartalom'] .= '</div>';
                    }
                }
                $retData['tartalom'] .= '<form action="" method="post"> 
                <input name="hirID" type="hidden" value='.$row['id'].'>
                <textarea class="mt-4 form-control" rows="5" id="comment" name="hozzaszolas"
                placeholder="Hozzászólás" required></textarea><br>
                <input type="submit" class="btn btn-info" value="Küldés">
                </form>';

                $retData['tartalom'] .= '<hr class="bg-dark mt-5 mb-5">';
                $retData['tartalom'] .= '</div>';
            

            }

		}
		catch (PDOException $e) {
					$retData['eredmeny'] = "ERROR";
					$retData['uzenet'] = "Adatbázis hiba: ".$e->getMessage()."!";
		}
        if (isset($_POST['hozzaszolas'])) {
            try {
                $date = date("Y-m-d H:i:s");
                $sqlSelect = "INSERT INTO `hozzaszolas`(`felhasznalokID`, `hirekID`, `publikalasIdo`, `tartalom`) 
                VALUES (:felhasznalokID,:hirekID, :publikalasIdo, :tartalom )";
                $dbh = $connection ->prepare($sqlSelect);
               
                $dbh->execute(array(':felhasznalokID' => $_SESSION['felhasznaloId'], ':hirekID' => $_POST['hirID'],
                 ':publikalasIdo' => $date, ':tartalom' => $_POST['hozzaszolas']));

                if($dbh->rowCount()) {
                    header("Location: ".SITE_ROOT."hiroldal#".$_POST['hirID']);
                }



            } catch (PDOException $e) {
                echo "Hiba: " . $e->getMessage();
            }
        }



		return $retData;
        
	}
}

?>