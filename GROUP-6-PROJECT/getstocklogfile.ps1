   function Get-TimeStamp {
    
    return "[{0:MM/dd/yy} {0:HH:mm:ss}]" -f (Get-Date)
    
}
    Write-Output "$(Get-TimeStamp) Retrived: " | ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesA.json' 
    $xApple = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/AAPL/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select companyName, latestPrice, latestTime |ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesA.json' 

    Write-Output "$(Get-TimeStamp) Retrived: " | ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesT.json'
    $xTesla = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/TSLA/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select companyName, latestPrice, latestTime |ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesT.json'

    Write-Output "$(Get-TimeStamp) Retrived: " | ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesG.json'
    $xGoogle = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/GOOGL/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select companyName, latestPrice, latestTime |ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesG.json'

    Write-Output "$(Get-TimeStamp) Retrived: " | ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesF.json'
    $xFacebook = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/FB/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select companyName, latestPrice, latestTime |ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesF.json'

