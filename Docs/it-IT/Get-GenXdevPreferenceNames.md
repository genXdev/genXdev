# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> Ottiene tutti i nomi delle preferenze dall'archivio della sessione e dai database.

## Description

* Recupera un elenco univoco di nomi di preferenza combinando le chiavi della memoria della sessione (variabili globali) e dei repository di preferenze locale e predefinito.
* Rispetta i parametri di gestione della sessione per controllare quali origini vengono interrogate.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilizza impostazioni alternative memorizzate nella sessione per preferenze dati come Lingua, percorsi database, ecc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Cancellare l'impostazione della sessione (variabile globale) prima di recuperare |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Percorso del database per i file dei dati delle preferenze |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Non utilizzare impostazioni alternative memorizzate nella sessione per le preferenze dei dati come lingua, percorsi del database, ecc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Restituisce un array ordinato di nomi di preferenze univoci dalla sessione di archiviazione e da entrambi gli store utilizzando il percorso di database specificato.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Restituisce solo i nomi delle preferenze dall'archivio di sessione.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Restituisce solo i nomi delle preferenze dagli store del database.

## Parameter Details

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
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevPreferencesDatabasePath.md)
