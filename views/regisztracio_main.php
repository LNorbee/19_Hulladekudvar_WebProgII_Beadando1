    <form action="<?= SITE_ROOT ?>regisztracio" method="post">
        <fieldset>
            <legend>Regisztráció</legend>
            <br>
            <input type="text" name="csaladNev" placeholder="vezetéknév" required><br><br>
            <input type="text" name="keresztNev" placeholder="utónév" required><br><br>
            <input type="text" name="felhasznalonev" placeholder="felhasználói név" required><br><br>
            <input type="password" name="jelszo" placeholder="jelszó" required><br><br>
            <input type="submit" name="regisztracio" value="Regisztráció">
            <br>&nbsp;
        </fieldset>
    </form>

    <?= (isset($viewData['uzenet']) ? $viewData['uzenet'] : "") ?><br>