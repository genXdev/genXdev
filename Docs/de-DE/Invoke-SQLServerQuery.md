# Invoke-SQLServerQuery

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLServerQuery [[-Queries] <String[]>] [[-DatabaseName] <String>] [[-Server] <String>] [[-Transaction] <Object>] [[-ConnectionString] <String>] [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Die auszuführende(n) Abfrage(n). |
| `-DatabaseName` | String | — | — | 1 | `'master'` | Der Name der SQL Server-Datenbank. |
| `-Server` | String | — | — | 2 | `'.'` | Der Name der SQL Server-Instanz. |
| `-Transaction` | Object | — | — | 3 | — | Eine vorhandene SQL Server-Transaktion, die für die Abfragen verwendet werden soll. |
| `-ConnectionString` | String | — | — | 4 | — | Die Verbindungszeichenfolge zur SQL-Datenbank. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | Abfrageparameter als Hashtabellen. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Der zu verwendende Isolationsgrad. Standard ist ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwingen einer Zustimmungsaufforderung, auch wenn für die SQL Server-Paketinstallation eine Einstellung festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Drittanbieter-Softwareinstallation automatisch zustimmen und persistentes Flag für SQL Server-Paket setzen. |

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)
