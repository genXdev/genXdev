# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference`

## Synopsis

> Recupera un valore di preferenza dall'archivio delle preferenze di GenXdev.

## Description

* Implementa un sistema di recupero delle preferenze a due livelli.
* Prima controlla nel negozio locale un valore di preferenza.
* Se non viene trovato, ricade sul negozio predefinito.
* Se ancora non viene trovato, restituisce il valore predefinito fornito.

## Syntax

```powershell
Get-GenXdevPreference -Name <String> [[-DefaultValue] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Il nome della preferenza da recuperare |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | Il valore predefinito se la preferenza non viene trovata |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Percorso del database per i file dei dati delle preferenze |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilizza impostazioni alternative memorizzate nella sessione per preferenze dati come Lingua, percorsi database, ecc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Cancellare l'impostazione della sessione (variabile globale) prima di recuperare |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Non utilizzare impostazioni alternative memorizzate nella sessione per le preferenze dei dati come lingua, percorsi del database, ecc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

Recupera la preferenza "Tema" con fallback predefinito a "Scuro".

### Example 2

```powershell
getPreference "Theme" "Dark"
```

Utilizza l'alias e i parametri posizionali.

## Parameter Details

### `-Name <String>`

> Il nome della preferenza da recuperare

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> Il valore predefinito se la preferenza non viene trovata

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `DefaultPreference` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Percorso del database per i file dei dati delle preferenze

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Utilizza impostazioni alternative memorizzate nella sessione per preferenze dati come Lingua, percorsi database, ecc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Cancellare l'impostazione della sessione (variabile globale) prima di recuperare

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Non utilizzare impostazioni alternative memorizzate nella sessione per le preferenze dei dati come lingua, percorsi del database, ecc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevPreferencesDatabasePath.md)
