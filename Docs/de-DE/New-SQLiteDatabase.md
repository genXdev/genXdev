# New-SQLiteDatabase

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-SQLiteDatabase -DatabaseFilePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwinge eine Zustimmungsaufforderung, auch wenn eine Präferenz für die SQLite-Paketinstallation festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch der Installation von Drittanbieter-Software zustimmen und persistentes Flag für SQLite-Paket setzen. |

## Related Links

- [New-SQLiteDatabase on GitHub](https://github.com/genXdev/genXdev)
