<?php
class Hiroldal_Controller
{
	public $baseName = 'hiroldal';
	public function main(array $vars)
	{
		

        if($_SESSION['felhasznaloId'] != ""){
            $hiroldalModel = new Hiroldal_Model;
            $retData = $hiroldalModel->get_data($vars);
            $this->baseName = "hiroldal";
            $view = new View_Loader($this->baseName.'_main');

            foreach($retData as $name => $value)
            $view->assign($name, $value);
        } else {
            echo "Hírek megtekintéséhez kérem jelentkezzen be!";
        }
	}
}
?>