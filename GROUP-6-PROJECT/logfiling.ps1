function Get-TimeStamp {
    
    return "[{0:MM/dd/yy} {0:HH:mm:ss}]" -f (Get-Date)
    
}
    #Apple Stock
    Write-Output "Retrived on: $(Get-TimeStamp)" | ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesA.json' 
    $appleprice = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/AAPL/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select -ExpandProperty latestPrice
    Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/AAPL/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select companyName, latestPrice, latestTime |ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesA.json' 

    if ($appleprice -le 135.00)
    {
        Add-Content -path 'C:\Users\Administrator\Desktop\Final _Project\lastpricesA.json' -Value "Bought One Share"
    }elseif ($appleprice -gt 137.00) 
    {
    
        Add-Content -path 'C:\Users\Administrator\Desktop\Final _Project\lastpricesA.json' -Value "Sold one share"
    }

    #Google Stock
    Write-Output "Retrived on: $(Get-TimeStamp)" | ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesG.json' 
    $googleprice = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/GOOGL/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select -ExpandProperty latestPrice
    Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/GOOGL/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select companyName, latestPrice, latestTime |ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesG.json' 

    if ($googleprice -le 2390.00)
    {
        Add-Content -path 'C:\Users\Administrator\Desktop\Final _Project\lastpricesG.json' -Value "Bought One Share"
    }elseif ($googleprice -gt 2430.00) 
    {
    
        Add-Content -path 'C:\Users\Administrator\Desktop\Final _Project\lastpricesG.json' -Value "Sold one share"
    }

    #Facebook Stock
    Write-Output "Retrived on: $(Get-TimeStamp)" | ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesF.json' 
    $facebookprice = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/FB/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select -ExpandProperty latestPrice
    Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/FB/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select companyName, latestPrice, latestTime |ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesF.json' 

    if ($facebookprice -le 330.00)
    {
        Add-Content -path 'C:\Users\Administrator\Desktop\Final _Project\lastpricesF.json' -Value "Bought One Share"
    }elseif ($facebookprice -gt 338.00) 
    {
    
        Add-Content -path 'C:\Users\Administrator\Desktop\Final _Project\lastpricesF.json' -Value "Sold one share"
    }

    #Tesla Stock
    Write-Output "Retrived on: $(Get-TimeStamp)" | ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesT.json' 
    $teslaprice = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/TSLA/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select -ExpandProperty latestPrice
    Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/TSLA/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select companyName, latestPrice, latestTime |ConvertTo-Json |Add-Content 'C:\Users\Administrator\Desktop\Final _Project\lastpricesT.json' 

    if ($teslaprice -le 680.00)
    {
        Add-Content -path 'C:\Users\Administrator\Desktop\Final _Project\lastpricesF.json' -Value "Bought One Share"
    }elseif ($teslaprice -gt 700.00) 
    {
    
        Add-Content -path 'C:\Users\Administrator\Desktop\Final _Project\lastpricesF.json' -Value "Sold one share"
    }