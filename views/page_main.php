<!DOCTYPE html>
<html>
    <head>
        <title><?php echo Menu::setPageTitlebyMenuItem($viewData['selectedItems']);?></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js@3.9.1/dist/chart.min.js"></script>
    </head>
    <body>
        <div class="jumbotron text-center" style="margin-bottom:0">
            <h1>Hulladék udvar</h1>
        </div>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="#">
            <?php if($_SESSION['felhasznaloId']) {?>Bejelentkezett: </br>
                <strong><?= $_SESSION['csaladNev']." ".$_SESSION['keresztNev']." 
                ".$_SESSION['felhasznalonev']."" ?></strong><?php } ?>
            
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">                
                <?php echo Menu::getMenu($viewData['selectedItems']); ?>
            </div>
            
            
            
        </nav>
        <div class="container" style="margin-top:30px">
            <div class="row">
                <div class="col-sm-12">
                    <?php include($viewData['render']); ?>
                </div>
            </div>
        </div>

            
        </section>
        <div class="jumbotron text-center" style="margin-bottom:0">
            &copy; NJE - GAMF - Informatika Tanszék <?= date("Y") ?>
        </div>
    </body>
</html>
