<?php

Class Menu {
    public static $menu = array(
        "nyitolap" => array("Nyitólap", "", 'menun' => array(1,1)),    
        "hiroldal" => array("Híroldal", "", 'menun' => array(0,1)),    
        "linkek" => array("Linkek", "", 'menun' => array(1,1)),    
        "mnb" => array("MNB Árfolyamok", "", 'menun' => array(1,1)),    
        "regisztracio" => array("Regisztráció", "",'menun' => array(1,0)),    
        "belepes" => array("Belépés", "", 'menun' =>array(1,0)),    
        "kilepes" => array("Kilépés", "", 'menun' =>array(0,1))
    );

    public static function getMenu($sItems) {
       
        
        $menu = '<ul class="navbar-nav">';
        foreach(self::$menu as $menuindex => $menuitem)       
        {
            if( $_SESSION['felhasznaloszint']=="" && $menuitem['menun'][0]  )
            { $menu.= '<li class="nav-item"><a class="nav-link '.($menuindex==$sItems[0]? 'class="active"':"").' " href="'.SITE_ROOT.$menuindex.'" >'.$menuitem[0].'</a></li>'; }
            
            if(  $_SESSION['felhasznaloszint'] != "" && $menuitem['menun'][1])
            { $menu.= '<li class="nav-item"><a class="nav-link '.($menuindex==$sItems[0]? 'class="active"':"").' " href="'.SITE_ROOT.$menuindex.'" >'.$menuitem[0].'</a></li>'; }
        }
        $menu.="</ul>";
        
       
        return $menu;
    }

    public static function setPageTitlebyMenuItem($sItems) {
        return self::$menu[$sItems[0]][0];
    }

}
?>
