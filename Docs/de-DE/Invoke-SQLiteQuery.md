# Invoke-SQLiteQuery

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLiteQuery [[-ConnectionString] <String>] [[-DatabaseFilePath] <String>] [[-Transaction] <Object>] -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | — | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank. |
| `-DatabaseFilePath` | String | — | — | 1 | — | Der Pfad zur SQLite-Datenbankdatei. |
| `-Transaction` | Object | — | — | 2 | — | Eine bestehende SQLite-Transaktion, die für die Abfragen verwendet werden soll. |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 3 | — | Die auszuführende(n) Abfrage(n). |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 4 | `@()` | Abfrageparameter als Hashtabellen. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Der zu verwendende Isolationsgrad. Standard ist ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwinge eine Zustimmungsaufforderung, auch wenn eine Präferenz für die SQLite-Paketinstallation festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch der Installation von Drittanbieter-Software zustimmen und persistentes Flag für SQLite-Paket setzen. |

## Related Links

- [Invoke-SQLiteQuery on GitHub](https://github.com/genXdev/genXdev)
