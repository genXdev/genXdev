# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> Genereert een gedetailleerd rapport van refactoringbewerkingen en hun status.

## Description

Analyseert en rapporteert de voortgang van refactoringoperaties door hun huidige status, voltooiingsstatus en getroffen functies te onderzoeken. Geeft uitvoer in gestructureerde hashtabelindeling of leesbare uitgelijnde tekstkolommen. Het rapport omvat refactornaam, promptcode, prioriteit, status, functietelling en voltooiingspercentage.

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | De naam van de refactor, accepteert wildcards 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Specificeert het pad naar het voorkeurendatabasebestand. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Indien ingesteld, gebruik dan alleen de sessie-cache voor refactor-gegevens. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Indien ingesteld, leeg de sessiecache voor het uitvoeren. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Indien ingesteld, sla het laden van de sessie-cache over. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Output report in text format instead of Hashtable |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

Genereert een tekstrapport voor refactors die overeenkomen met "DatabaseRefactor".

### Example 2

```powershell
refactorreport "*"
```

Genereert hashtabelrapport voor alle refactors met alias.

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
