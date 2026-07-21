# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ottiene il percorso del database configurato per i file di dati delle preferenze utilizzati nelle operazioni di GenXdev.Data.

## Description

* Recupera il percorso del database globale utilizzato dal modulo GenXdev.Data per
  vari archivi di preferenze e operazioni sui dati.
* Controlla prima le variabili Global (a meno che non sia specificato SkipSession), poi
  ricade sulle preferenze persistenti e infine utilizza le impostazioni predefinite di sistema.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Override del percorso del database opzionale |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilizza impostazioni alternative memorizzate nella sessione per preferenze dati come Lingua, percorsi database, ecc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Cancellare l'impostazione della sessione (variabile globale) prima di recuperare |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Non utilizzare impostazioni alternative memorizzate nella sessione per le preferenze dei dati come lingua, percorsi del database, ecc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

Recupera il percorso del database dalle variabili globali o dalle preferenze.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

Salta la variabile di sessione e utilizza le preferenze permanenti.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Cancella l'impostazione della sessione prima di recuperare il percorso.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Override del percorso del database opzionale

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevPreferencesDatabasePath.md)
