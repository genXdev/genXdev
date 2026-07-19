# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> Manages key-value pairs in a JSON file-based store.

## Description

Provides persistent storage for key-value pairs using JSON files. Handles both insertion of new entries and updates to existing ones. Supports optional synchronization for non-local stores. This function implements an upsert operation that either inserts new key-value pairs or updates existing ones based on the combination of synchronization key, store name, and key name.

## Syntax

```powershell
Set-ValueByKeyInStore [-StoreName] <string> [-KeyName] <string> [[-Value] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Store name for the key-value pair |
| `-KeyName` | String | ✅ | — | 1 | — | Name of the key to set or update |
| `-Value` | String | — | — | 2 | — | Value to be stored |
| `-SynchronizationKey` | String | — | — | 3 | — | Key to identify synchronization scope |
| `-DatabasePath` | String | — | — | Named | — | Database path for key-value store data files |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

Set an API endpoint in the ConfigStore.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

Use the alias to set a value.

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
