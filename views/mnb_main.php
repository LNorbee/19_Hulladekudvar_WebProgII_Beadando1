<form action="" method="post">
    <label>Egy adott devizapár adott napján lévő árfolyam:</label><br>

    <input type="date" name="on_date" value="<?php echo date('Y-m-d');?>" required>
    <input type="number" name="sum" value="1" required>
    <select name="from_deviza">
        <option value="EUR">EUR - Euro</option>
        <option value="HUF">HUF - Magyar forint</option>
        <option value="USD">USD - Amerikai dollár</option>
        <option value="GBP">GBP - Angol font</option>
        <option value="AUD">AUD - Ausztrál dollár</option>
        <option value="BGN">BGN - Bolgár leva</option>
        <option value="CAD">CAD - Kanadai dollár</option>
        <option value="CHF">CHF - Svájci frank</option>
        <option value="CNY">CNY - Kínai juan</option>
        <option value="CZK">CZK - Cseh korona</option>
        <option value="DKK">DKK - Dán korona</option>
        <option value="HRK">HRK - Horvát kuna</option>
        <option value="JPY">JPY - Japán yen</option>
    </select>

    <select name="to_deviza">
        <option value="HUF">HUF - Magyar forint</option>
        <option value="JPY">JPY - Japán yen</option>
        <option value="CAD">CAD - Kanadai dollár</option>
        <option value="EUR">EUR - Euro</option>
        <option value="USD">USD - Amerikai dollár</option>
        <option value="GBP">GBP - Angol font</option>
        <option value="AUD">AUD - Ausztrál dollár</option>
        <option value="BGN">BGN - Bolgár leva</option>
        <option value="CHF">CHF - Svájci frank</option>
        <option value="CNY">CNY - Kínai juan</option>
        <option value="CZK">CZK - Cseh korona</option>
        <option value="DKK">DKK - Dán korona</option>
        <option value="HRK">HRK - Horvát kuna</option>

    </select>
    
    <input class="btn btn-info" type="submit" name="get_currency_on_day" value="Árfolyam"><br><br>
</form>
<div><?php echo $viewData['on_date']." napon: ".$viewData['sum']." ".$viewData['from_deviza']." = ".number_format($viewData['eredmeny'], 2)." ".$viewData['to_deviza']; ?></div>

<!--EGy adott hónap árfolyma-->
<br>
<br>
<form action="" method="post">
    <label>Egy devizapárnak egy adott hónap napjai szerinti árfolyama :</label><br>

    <input type="month" name="on_month" value="<?php echo date('Y-m');?>" required>
    <select name="from_deviza_month">
        <option value="EUR">EUR - Euro</option>
        <option value="USD">USD - Amerikai dollár</option>
        <option value="GBP">GBP - Angol font</option>
        <option value="AUD">AUD - Ausztrál dollár</option>
        <option value="BGN">BGN - Bolgár leva</option>
        <option value="CAD">CAD - Kanadai dollár</option>
        <option value="CHF">CHF - Svájci frank</option>
        <option value="CNY">CNY - Kínai juan</option>
        <option value="CZK">CZK - Cseh korona</option>
        <option value="DKK">DKK - Dán korona</option>
        <option value="HRK">HRK - Horvát kuna</option>
        <option value="JPY">JPY - Japán yen</option>
    </select>

    <select name="to_deviza_month">
        
        <option value="JPY">JPY - Japán yen</option>
        <option value="CAD">CAD - Kanadai dollár</option>
        <option value="EUR">EUR - Euro</option>
        <option value="USD">USD - Amerikai dollár</option>
        <option value="GBP">GBP - Angol font</option>
        <option value="AUD">AUD - Ausztrál dollár</option>
        <option value="BGN">BGN - Bolgár leva</option>
        <option value="CHF">CHF - Svájci frank</option>
        <option value="CNY">CNY - Kínai juan</option>
        <option value="CZK">CZK - Cseh korona</option>
        <option value="DKK">DKK - Dán korona</option>
        <option value="HRK">HRK - Horvát kuna</option>

    </select>
    
    <input class="btn btn-info" type="submit" name="get_currency_on_month" value="Árfolyam"><br><br>
</form>

<table class="table table-dark">
    <thead>
        <tr>
            <th scope="col">Dátum</th>
            <th>Devizapár</th>
            <th>Árfolyam</th>
        </tr>
    </thead>
    <tbody>
        <?php
       // foreach($viewData['month_currency'] as $eredmeny){
        
        if(isset($viewData['date'])) {
        $y = (count($viewData['date']) -1);
        for ($x = 0; $x <= $y; $x++) {
            if(isset($viewData['unit2_month'][$x]) && isset($viewData['to_deviza_month'][$x]) &&
            isset($viewData['value_of_currency2_month'][$x]) ){
        ?>
        <tr>        
                <th scope="row"><?php echo $viewData['date'][$x]; ?></th>
                <td><?php echo $viewData['from_deviza_month'][$x]." / ".$viewData['to_deviza_month'][$x]; ?></td>
                <td><?php echo number_format((($viewData['value_of_currency1_month'][$x] /
                $viewData['unit1_month'][$x]) / 
                ($viewData['value_of_currency2_month'][$x] / 
                $viewData['unit2_month'][$x])),4); ?></td>
                
               
                
        </tr>
        <?php } } } ?>
    </tbody>
</table>