<?php if ($_SESSION["felhasznaloId"] != "") { ?>
    <form action="<?= SITE_ROOT ?>hirhozzaadasa" method="post">
    <div class="row">
        <div class="ml-2 text-center">
        <fieldset>
            <legend>Hír hozzáadása</legend>
            <br>
            <input type="text" name="hirCim" class="form-control" placeholder="Hír címe" required><br><br>
            <textarea rows="4" cols="50" name="cikkTartalom" class="form-control" placeholder="Tartalom" required></textarea><br>
            <input type="text" name="forrasLink" class="form-control" placeholder="Forrás link" required><br><br>
            <input type="text" name="kepLink" class="form-control" placeholder="Kép forráslink" required><br><br>
            <label>Közzététel ideje</label>
            <input type="datetime-local" name="publikalasIdo" class="form-control" required><br><br>
            <input type="submit" name="hirhozzaadasa" class="btn btn-success" value="Publikálás">
            <br>&nbsp;
        </fieldset>
        </div>
    </div>
    </form>



    <?= (isset($viewData['uzenet']) ? $viewData['uzenet'] : "") ?><br>

<?php } ?>