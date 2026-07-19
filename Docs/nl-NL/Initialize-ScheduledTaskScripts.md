# Initialize-ScheduledTaskScripts

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Maakt geplande taken die PowerShell-scripts uitvoeren met opgegeven tussenpozen.

## Description

Maakt en configureert geplande taken die PowerShell-scripts uitvoeren op verschillende intervallen, waaronder:
- Systeemopstart
- Gebruikersaanmelding
- Elk uur op specifieke dagen (bijv. maandag om 13:00)
- Dagelijks op specifieke uren (bijv. elke dag om 15:00)
Elke taak wordt uitgevoerd met verhoogde bevoegdheden in de context van de huidige gebruiker.

## Syntax

```powershell
Initialize-ScheduledTaskScripts [[-FilePath] <String>] [[-Prefix] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | — | — | 0 | `''` | Het mappad waar taakscripts worden aangemaakt |
| `-Prefix` | String | — | — | 1 | `'PS'` | Prefix voor de namen van de geplande taken |

## Examples

### Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"

```powershell
Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"
```

### Initialize-ScheduledTaskScripts

```powershell
Initialize-ScheduledTaskScripts
```

## Related Links

- [Initialize-ScheduledTaskScripts on GitHub](https://github.com/genXdev/genXdev)
