# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-ValueByKeyInStore [-StoreName] <string> [-KeyName] <string> [[-Value] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Speichername für das Schlüssel-Wert-Paar |
| `-KeyName` | String | ✅ | — | 1 | — | Name des Schlüssels, der festgelegt oder aktualisiert werden soll |
| `-Value` | String | — | — | 2 | — | Value to be stored |
| `-SynchronizationKey` | String | — | — | 3 | — | Schlüssel zur Identifizierung des Synchronisationsbereichs |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Key-Value-Speicherdatendateien |

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
