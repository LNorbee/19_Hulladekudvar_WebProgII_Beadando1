<?php
class Hirhozzaadasa_Controller
{
	public $baseName = 'hirhozzaadasa';
	public function main(array $vars)
	{
		$hirhozzaadasaModel = new Hirhozzaadasa_Model;
        if(!empty($vars)){
		$retData = $hirhozzaadasaModel->hirhozzaadasa($vars);	
        if($retData['eredmeny'] == "ERROR")
			$this->baseName = "hirhozzaadasa";}
		$view = new View_Loader($this->baseName.'_main');
        if(!empty($vars))
		foreach($retData as $name => $value)
			$view->assign($name, $value);	
	}
}
?>