# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> Retrieves a value from a JSON-based key-value store.

## Description

* Retrieves a value for a specified key from a JSON file-based key-value
  store.
* Supports optional default values and synchronization across different
  scopes.
* Provides automatic directory initialization and synchronization.

## Syntax

```powershell
Get-ValueByKeyFromStore [-StoreName] <string> [-KeyName] <string> [[-DefaultValue] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name of the store to retrieve the key from |
| `-KeyName` | String | ✅ | — | 1 | — | Key to retrieve from the specified store |
| `-DefaultValue` | String | — | — | 2 | — | A optional default value |
| `-SynchronizationKey` | String | — | — | 3 | — | Key to identify synchronization scope |
| `-DatabasePath` | String | — | — | Named | — | Database path for key-value store data files |

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

Retrieves the "Theme" value from "AppSettings", returning "Dark" if not
found.

### Example 2

```powershell
getvalue AppSettings Theme
```

Uses the 'getvalue' alias to retrieve a value.

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
