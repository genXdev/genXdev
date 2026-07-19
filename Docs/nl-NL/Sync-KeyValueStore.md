# Sync-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Synchroniseert lokale en OneDrive JSON-bestanden voor sleutel-waardearchieven.

## Description

Voert tweerichtingssynchronisatie uit tussen lokale en OneDrive-schaduw-JSON-bestanden met behulp van een strategie op basis van laatste wijzigingstijdstempels. Records worden samengevoegd op basis van hun laatste wijzigingstijd, waarbij nieuwere versies voorrang krijgen.

## Syntax

```powershell
Sync-KeyValueStore [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Sleutel om synchronisatiebereik te identificeren |
| `-DatabasePath` | String | — | — | Named | — | Databasepad voor data-bestanden van key-value-opslag |

## Examples

### Example 1

```powershell
Sync-KeyValueStore
```

### Example 2

```powershell
Sync-KeyValueStore -SynchronizationKey "UserSettings"
```

## Related Links

- [Sync-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
