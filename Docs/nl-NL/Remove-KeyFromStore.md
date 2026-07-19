# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey

## Synopsis

> Verwijdert een sleutel uit een sleutel-waarde opslag.

## Description

Deze functie verwijdert een opgegeven sleutel uit een benoemde sleutel-waarde opslag. Voor lokale opslag wordt de sleutel permanent verwijderd. Voor gesynchroniseerde opslag wordt de sleutel gemarkeerd als verwijderd om synchronisatie mogelijk te maken.

## Syntax

```powershell
Remove-KeyFromStore [-StoreName] <string> [-KeyName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Naam van de winkel |
| `-KeyName` | String | ✅ | — | 1 | — | Sleutel om te verwijderen |
| `-SynchronizationKey` | String | — | — | 2 | — | Sleutel om synchronisatiebereik te identificeren |
| `-DatabasePath` | String | — | — | Named | — | Databasepad voor data-bestanden van key-value-opslag |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

Verwijder de sleutel "MyKey" uit de opslag "MyStore".

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

Verwijder een sleutel met behulp van het alias.

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)
