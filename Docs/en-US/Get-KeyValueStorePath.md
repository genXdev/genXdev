# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gets the file path for a key-value store.

## Description

* Constructs the file path for a key-value store based on the
  synchronization key, store name, and base directory.

## Syntax

```powershell
Get-KeyValueStorePath [-SynchronizationKey] <string> [-StoreName] <string> [-BasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | The synchronization key used to identify the store |
| `-StoreName` | String | ✅ | — | 1 | — | The name of the key-value store |
| `-BasePath` | String | — | — | Named | — | The base directory path for store files |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

Get the path for a local key-value store.

## Related Links

- [Get-KeyValueStorePath on GitHub](https://github.com/genXdev/genXdev)
