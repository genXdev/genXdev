# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> Start een proces met een opgegeven prioriteitsniveau.

## Description

* Start een uitvoerbaar bestand met een aanpasbaar prioriteitsniveau en biedt
  opties voor wachten en procesafhandeling.
* Omhult Start-Process met extra functionaliteit om processprioriteit
  en uitvoeringsgedrag te beheren.

## Syntax

```powershell
Start-ProcessWithPriority [-FilePath] <string> [[-ArgumentList] <string[]>] [[-Priority] <string>] [-NoWait] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Pad naar het uitvoerbare bestand |
| `-ArgumentList` | String[] | — | — | 1 | — | Argumenten om aan de uitvoerbare door te geven |
| `-Priority` | String | — | — | 2 | — | Procesprioriteitsniveau |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Wacht niet op voltooiing van het proces |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Geef het procesobject terug. |

## Examples

### Example 1

```powershell
Start-ProcessWithPriority -FilePath "notepad.exe" -Priority "Low" -NoWait
```

Start Kladblok met lage prioriteit en keert onmiddellijk terug.

### Example 2

```powershell
nice notepad.exe -Priority High
```

Gebruikt het alias 'nice' om een proces met hoge prioriteit te starten.

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
