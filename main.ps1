$Font = "com_sen_" #for a full listings https://artii.herokuapp.com/fonts_list
$TextToEncode = [uri]::EscapeDataString("POWER")
$url = "http://artii.herokuapp.com/make?text=$TextToEncode&font=$Font"
$ouput = Invoke-Restmethod -Uri $url -DisableKeepAlive -ErrorAction Stop
Write-Host -ForegroundColor red $ouput -BackgroundColor Black
