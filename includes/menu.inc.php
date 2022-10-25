<?php

Class Menu {
    public static $menu = array(
        "nyitolap" => array("Nyitólap", "", "111"),    
        "elerhetoseg" => array("Elérhetőség", "", "100"),    
        "linkek" => array("Linkek", "", "111"),    
        "alapinfok" => array("Alapinfók", "elerhetoseg", "111"),    
        "kiegeszitesek" => array("Kiegészítések", "elerhetoseg", "011"),    
        "belepes" => array("Belépés", "", "100"),    
        "kilepes" => array("Kilépés", "", "011"),    
        "admin" => array("Admin", "", "001")
    );

    public static function getMenu($sItems) {
        $submenu = "";
        
        $menu = '<ul class="navbar-nav">';
        foreach(self::$menu as $menuindex => $menuitem)       
        {
            if($menuitem[1] == "")
            { $menu.= '<li class="nav-item"><a class="nav-link '.($menuindex==$sItems[0]? 'class="active"':"").' " href="'.SITE_ROOT.$menuindex.'" >'.$menuitem[0].'</a></li>'; }
            else if($menuitem[1] == $sItems[0])
            { $submenu .= "<li><a href='".SITE_ROOT.$sItems[0]."/".$menuindex."' ".($menuindex==$sItems[1]? "class='selected'":"").">".$menuitem[0]."</a></li>"; }
        }
        $menu.="</ul>";
        
        if($submenu != "")
            $submenu = "<ul>".$submenu."</ul>";
        
        return $menu.$submenu;
    }

    public static function setPageTitlebyMenuItem($sItems) {
        return self::$menu[$sItems[0]][0];
    }

}
?>
