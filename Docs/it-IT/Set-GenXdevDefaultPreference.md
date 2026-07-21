# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault`

## Synopsis

> Imposta un valore di preferenza predefinito nell'archivio delle preferenze di GenXdev.

## Description

* Gestisce le preferenze predefinite nel sistema di preferenze GenXdev.
* Gestisce l'archiviazione dei valori, la rimozione delle preferenze quando i valori sono vuoti e
  garantisce che le modifiche vengano sincronizzate in tutto il sistema.
* Supporta valori nulli rimuovendo completamente la preferenza in tali casi.

## Syntax

```powershell
Set-GenXdevDefaultPreference -Name <String> [[-Value] <String>] [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | Il nome della preferenza da impostare in defaults |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Il valore da memorizzare per la preferenza |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Percorso del database per i file dei dati delle preferenze |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilizza impostazioni alternative memorizzate nella sessione per preferenze dati come Lingua, percorsi database, ecc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Cancellare l'impostazione della sessione (variabile globale) prima di recuperare |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Non utilizzare impostazioni alternative memorizzate nella sessione per le preferenze dei dati come lingua, percorsi del database, ecc. |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

Imposta la preferenza tema predefinita su "Scuro".

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

Utilizza l'alias per disabilitare le notifiche email nelle impostazioni predefinite.

## Parameter Details

### `-Name <String>`

> Il nome della preferenza da impostare in defaults

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> Il valore da memorizzare per la preferenza

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Percorso del database per i file dei dati delle preferenze

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-GenXdevPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevPreferencesDatabasePath.md)
