<?php

class Hulladekudvarkereso_Controller
{
	public $baseName = 'hulladekudvarkereso';
	public function main(array $vars)
	{
		if ($_SESSION['felhasznaloId'] != "") {
            $view = new View_Loader($this->baseName . "_main");
        }else{ echo "Nincs bejelentkezve!";

        }
	}
}

?>