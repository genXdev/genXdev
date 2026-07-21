# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue`

## Synopsis

> Verwaltet Schlüssel-Wert-Paare in einem auf JSON-Dateien basierenden Speicher.

## Description

Stellt persistenten Speicher für Schlüssel-Wert-Paare mithilfe von JSON-Dateien bereit. Behandelt sowohl das Einfügen neuer Einträge als auch Aktualisierungen vorhandener. Unterstützt optionale Synchronisation für nicht-lokale Speicher. Diese Funktion implementiert einen Upsert-Vorgang, der entweder neue Schlüssel-Wert-Paare einfügt oder vorhandene basierend auf der Kombination aus Synchronisationsschlüssel, Speichernamen und Schlüsselnamen aktualisiert.

## Syntax

```powershell
Set-ValueByKeyInStore -StoreName <String> -KeyName <String> [[-Value] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Speichername für das Schlüssel-Wert-Paar |
| `-KeyName` | String | ✅ | — | 1 | — | Name des festzulegenden oder zu aktualisierenden Schlüssels |
| `-Value` | String | — | — | 2 | — | Wert, der gespeichert werden soll |
| `-SynchronizationKey` | String | — | — | 3 | — | Schlüssel zur Identifizierung des Synchronisierungsumfangs |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Schlüssel-Wert-Speicherdatendateien |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

Legen Sie einen API-Endpunkt im ConfigStore fest.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

Verwenden Sie den Alias, um einen Wert festzulegen.

## Parameter Details

### `-StoreName <String>`

> Speichername für das Schlüssel-Wert-Paar

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeyName <String>`

> Name des festzulegenden oder zu aktualisierenden Schlüssels

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> Wert, der gespeichert werden soll

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> Schlüssel zur Identifizierung des Synchronisierungsumfangs

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/de-DE/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-KeyValueStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/de-DE/Sync-KeyValueStore.md)
