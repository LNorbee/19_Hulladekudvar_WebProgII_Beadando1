<?php if ($_SESSION["felhasznaloId"] != "") { ?>
    <form action="<?= SITE_ROOT ?>hirhozzaadasa" method="post">
        <fieldset>
            <legend>Hír hozzáadása</legend>
            <br>
            <input type="text" name="hirCim" placeholder="Hír címe" required><br><br>
            <textarea rows="4" cols="50" name="cikkTartalom" placeholder="Tartalom" required></textarea><br>
            <input type="text" name="forrasLink" placeholder="Forrás link" required><br><br>
            <input type="text" name="kepLink" placeholder="Kép forráslink" required><br><br>
            <label>Közzététel ideje</label>
            <input type="datetime-local" name="publikalasIdo" required><br><br>
            <input type="submit" name="hirhozzaadasa" value="Publikálás">
            <br>&nbsp;
        </fieldset>
    </form>



    <?= (isset($viewData['uzenet']) ? $viewData['uzenet'] : "") ?><br>

<?php } ?>