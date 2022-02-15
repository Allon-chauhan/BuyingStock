    $xApple = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/AAPL/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select companyName, latestPrice, latestTime |ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesA.json' | Get-Date
    $xTesla = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/TSLA/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select companyName, latestPrice |ConvertTo-Json |Out-File 'C:\Users\Administrator\Desktop\Final _Project\lastpricesT.json'
    $xGoogle = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/GOOGL/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select companyName, latestPrice |ConvertTo-Json |Out-File 'C:\Users\Administrator\Desktop\Final _Project\lastpricesG.json'
    $xFacebook = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/FB/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select companyName, latestPrice |ConvertTo-Json |Out-File 'C:\Users\Administrator\Desktop\Final _Project\lastpricesF.json'

    #Write-Host $xApple, $xTesla, $xGoogle, $xFacebook | Out-File 'C:\Users\Administrator\Desktop\Final _Project\lastprices.json'

$createtable = 'CREATE TABLE atable (
                companyName int NOT NULL IDENTITY PRIMARY KEY,
                latestPrice INT
                );'

