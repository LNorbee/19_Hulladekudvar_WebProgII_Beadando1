<form action="" method="post">
    <label>Egy adott devizapár adott napján lévő árfolyam:</label><br>

    <input type="date" name="on_date" value="2022-11-02" required>
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
<table>
    <thead>
        <tr>
            <th>Dátum</th>
            <th>Egység</th>
            <th>Deviza</th>
            <th>Árfolyam</th>
            <th>Egység</th>
            <th>Deviza</th>
            <th>Árfolyam</th>
        </tr>
    </thead>
    <tbody>
        
        <tr>        
                <td><?php  ?></td>
                <td><?php  ?></td>
                <td><?php  ?></td>
                <td><?php  ?></td>
                <td><?php  ?></td>
                <td><?php  ?></td>
                <td><?php  ?></td>
                
        </tr>
        
    </tbody>
</table>