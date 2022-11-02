<?php
class Mnb_Model
{
    public function mnb_currency($vars){
        $retData['eredmeny'] = 0;
        //$retData['currency'] = "";
        //$retData['value_of_currency'] = "";

        if (isset($_POST['get_currency_on_day'])) {
            if (isset($_POST["from_deviza"]) && ($_POST["to_deviza"]) && ($_POST["on_date"]) && ($_POST["sum"])) {
                $from_deviza = $_POST["from_deviza"];
                $to_deviza = $_POST["to_deviza"];
                $on_date = $_POST["on_date"];
                $sum = $_POST["sum"];
                

                unset($currates);

                $options = array(
                    //'keep_alive' => false,
                    'trace' => true,
                    //'connection_timeout' => 5000,
                    //'cache_wsdl' => WSDL_CACHE_NONE,
                );

                $client = new SoapClient("http://www.mnb.hu/arfolyamok.asmx?WSDL", $options);
                $currates = $client->GetExchangeRates(array('startDate' => $on_date, 'endDate' => $on_date, 'currencyNames' => "$from_deviza"));
                

                $dom_root = new DOMDocument();
                $dom_root->loadXML($currates->GetExchangeRatesResult);

                $searchNode = $dom_root->getElementsByTagName("Day");

                foreach ($searchNode as $searchNode) {

                    $rates = $searchNode->getElementsByTagName("Rate");

                    foreach ($rates as $rate) {
                        $unit_1 = "\t" . $rate->getAttribute('unit') . " ";
                        $currency_1 = $rate->getAttribute('curr');
                        $dev_rate = $rate->nodeValue;
                        $value_of_currency_1 = number_format(str_replace(",", ".", $dev_rate),2);
           
                    }
                }

                $currates2 = $client->GetExchangeRates(array('startDate' => $on_date, 'endDate' => $on_date, 'currencyNames' => "$to_deviza"))->GetExchangeRatesResult;

                $dom_root = new DOMDocument();
                $dom_root->loadXML($currates2);

                $searchNode = $dom_root->getElementsByTagName("Day");

                foreach ($searchNode as $searchNode) {

                    $rates = $searchNode->getElementsByTagName("Rate");

                    foreach ($rates as $rate) {
                        $unit_2 = "\t" . $rate->getAttribute('unit') . " ";
                        $currency_2 = $rate->getAttribute('curr');
                        $dev_rate2 = $rate->nodeValue;
                        $value_of_currency_2 = number_format(str_replace(",", ".", $dev_rate2),2);
                    }
                }
               
                if (isset($value_of_currency_1) or isset($value_of_currency_2)) {
                    $mnbDefaultCurrency = "HUF";
                    if ($currency_1 == $mnbDefaultCurrency and $currency_2 !== $mnbDefaultCurrency ) {   // HUF - Deviza
                        $retData['eredmeny'] = ($sum / $value_of_currency_2) * $unit_2;
                    }
                    if ($currency_1 !== $mnbDefaultCurrency and $currency_2 == $mnbDefaultCurrency ) {  // Deviza - HUF
                        $retData['eredmeny'] = ($value_of_currency_1 * $sum) / $unit_1;
                    }
                    if ($currency_1 !== $mnbDefaultCurrency and $currency_2 !== $mnbDefaultCurrency) {   // Deviza - Deviza
                        number_format($retData['eredmeny'] = number_format((number_format(($value_of_currency_1 * $unit_1),2)) / (number_format(($value_of_currency_2 * $unit_2),2)) 
                        * $sum,2),2);
                    }
                    if ($currency_1 == $mnbDefaultCurrency and $currency_2 == $mnbDefaultCurrency) {   // HUF - HUF
                        $retData['eredmeny'] = $sum;
                    }
                }

                
            }
        }

        return $retData;
    }
}































