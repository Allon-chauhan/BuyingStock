$x = Invoke-RestMethod https://sandbox.iexapis.com/stable/stock/AAPL/quote?token=Tpk_9d4114a93fdb4edbbeca84220537179b | select -expand latestPrice

AddPrice([decimal]$x)
{
 $cmd = 'INSERT INTO atable (latestPrice) VALUES $($x)'

Invoke-Sqlcmd -ServerInstance "GROUP6\SQLEXPRESS01" -Database "bot" -Query $cmd

}