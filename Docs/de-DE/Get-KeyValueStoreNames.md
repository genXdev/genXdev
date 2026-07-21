# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Ruft die Namen der verfügbaren Schlüssel-Wert-Speicher ab.

## Description

* Durchsucht das Schlüssel-Wert-Speicherverzeichnis nach JSON-Dateien und extrahiert eindeutige
  Speichernamen basierend auf dem angegebenen Synchronisierungsschlüsselmuster.
* Stellt sicher, dass das Speicherverzeichnis existiert, und synchronisiert bei Bedarf nicht-lokale Speicher.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Schlüssel zur Identifizierung des Synchronisierungsbereichs, standardmäßig alle |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Schlüssel-Wert-Speicherdatendateien |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Ruft alle Speichernamen vom Standardspeicherort ab.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Ruft Speichernamen für den Synchronisierungsbereich 'Lokal' ab.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Ruft alle Geschäftsnamen aus einem benutzerdefinierten Datenbankpfad mithilfe des Alias ab.

## Parameter Details

### `-SynchronizationKey <String>`

> Schlüssel zur Identifizierung des Synchronisierungsbereichs, standardmäßig alle

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> Datenbankpfad für Schlüssel-Wert-Speicherdatendateien

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/de-DE/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Sync-KeyValueStore.md)
