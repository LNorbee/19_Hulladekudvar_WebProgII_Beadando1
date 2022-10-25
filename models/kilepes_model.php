<?php

class Kilepes_Model
{
	public function get_data()
	{
		$retData['eredmeny'] = "OK";
		$retData['uzenet'] = "Visszontlátásra kedves ".$_SESSION['csaladNev']." ".$_SESSION['keresztNev']."!";
		$_SESSION['felhasznaloId'] =  "";
		$_SESSION['csaladNev'] =  "";
		$_SESSION['keresztNev'] =  "";
		$_SESSION['felhasznalonev'] =  "";
		$_SESSION['felhasznaloszint'] = "";

		//Menu::setMenu();
		return $retData;
	}
}

?>