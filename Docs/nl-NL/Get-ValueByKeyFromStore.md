# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> Haalt een waarde op uit een JSON-gebaseerde sleutelwaardeopslag.

## Description

* Haalt een waarde op voor een opgegeven sleutel uit een JSON-bestandsgebaseerde sleutel-waardeopslag.
* Ondersteunt optionele standaardwaarden en synchronisatie over verschillende scopes.
* Biedt automatische directory-initialisatie en synchronisatie.

## Syntax

```powershell
Get-ValueByKeyFromStore [-StoreName] <string> [-KeyName] <string> [[-DefaultValue] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Naam van de winkel om de sleutel uit op te halen |
| `-KeyName` | String | ✅ | — | 1 | — | Sleutel om op te halen uit de opgegeven winkel |
| `-DefaultValue` | String | — | — | 2 | — | Een optionele standaardwaarde |
| `-SynchronizationKey` | String | — | — | 3 | — | Sleutel om synchronisatiebereik te identificeren |
| `-DatabasePath` | String | — | — | Named | — | Databasepad voor data-bestanden van key-value-opslag |

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

Haalt de 'Theme'-waarde op uit 'AppSettings', geeft 'Dark' terug als deze niet wordt gevonden.

### Example 2

```powershell
getvalue AppSettings Theme
```

Gebruikt het alias 'getvalue' om een waarde op te halen.

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
