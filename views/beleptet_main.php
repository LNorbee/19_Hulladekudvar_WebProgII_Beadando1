<h2 class="" ><br><?= $viewData['uzenet']?><br></h2>

<?php if($_SESSION["felhasznaloId"] != "") { ?>
    <a href="<?php echo SITE_ROOT."hulladekudvarkereso"?>" 
class="btn btn-info" role="button">Milyen szemetet szeretne kidobni?</a>
<?php } else {?>
    <h3>Regisztrálja magát, ha még nem felhasználó!</h3>
<a href="<?php echo SITE_ROOT."regisztracio"?>" class="btn btn-info" role="button">Regisztráció</a>
<a href="<?php echo SITE_ROOT."belepes"?>" class="btn btn-info" role="button">Vissza a belépéshez</a>
<?php } ?>
