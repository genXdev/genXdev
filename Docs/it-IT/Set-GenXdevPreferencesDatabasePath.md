# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Imposta il percorso del database per le preferenze utilizzate nelle operazioni di GenXDev.Data.

## Description

* Configura il percorso del database globale utilizzato dal modulo GenXdev.Data per
  vari archivi di preferenze e operazioni sui dati.
* Le impostazioni vengono memorizzate nella sessione corrente (utilizzando variabili Globali) e
  possono essere cancellate dalla sessione (utilizzando -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Un percorso del database in cui si trovano i file dei dati delle preferenze |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Non utilizzare impostazioni alternative memorizzate nella sessione per le preferenze dei dati come lingua, percorsi del database, ecc. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Se specificato, salva l'impostazione solo nella sessione corrente (variabile globale) senza persisterla nelle preferenze. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Se specificato, cancella solo l'impostazione della sessione (variabile globale) senza influenzare le preferenze permanenti |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Imposta il percorso del database nella sessione corrente (variabile globale).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Imposta il percorso del database utilizzando il parametro posizionale.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Imposta il percorso solo per la sessione corrente senza renderlo persistente.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Cancella la variabile globale per il percorso del database.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Un percorso del database in cui si trovano i file dei dati delle preferenze

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
### `-SessionOnly`

> Se specificato, salva l'impostazione solo nella sessione corrente (variabile globale) senza persisterla nelle preferenze.

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

> Se specificato, cancella solo l'impostazione della sessione (variabile globale) senza influenzare le preferenze permanenti

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-GenXdevPreference.md)
