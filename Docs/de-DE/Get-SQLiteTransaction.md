# Get-SQLiteTransaction

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `getsqltx, `newsqltx

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTransaction -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTransaction [-ConsentToThirdPartySoftwareInstallation] [-CreateDatabaseIfNotExists <Boolean>] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Transaktionsisolationsstufe. |
| `-CreateDatabaseIfNotExists` | Boolean | — | — | Named | `$true` | Ob die Datenbankdatei erstellt werden soll, falls sie nicht existiert. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwinge eine Zustimmungsaufforderung, auch wenn eine Präferenz für die SQLite-Paketinstallation festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch der Installation von Drittanbieter-Software zustimmen und persistentes Flag für SQLite-Paket setzen. |

## Related Links

- [Get-SQLiteTransaction on GitHub](https://github.com/genXdev/genXdev)
