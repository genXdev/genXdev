# EnsurePython

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Zorgt ervoor dat Python is geïnstalleerd en beschikbaar is in het systeem-PATH.

## Description

Controleert of Python is geïnstalleerd en toegankelijk is via het systeem-PATH. Als Python
niet wordt gevonden, probeert het te installeren met winget (Windows Package Manager).
Ondersteunt specifieke versievereisten en biedt voortgangsfeedback tijdens de
installatie. Retourneert het pad naar het Python uitvoerbare bestand bij succes; veroorzaakt
Write-Error bij fout.

Deze functie geeft prioriteit aan bestaande Python-installaties, maar kan
herinstallatie afdwingen wanneer nodig. Het valideert Python-functionaliteit door het
controleren van de versie-uitvoer en zorgt ervoor dat de installatie correct toegankelijk is.

## Syntax

```powershell
EnsurePython [[-Version] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Version` | String | — | — | 0 | `"3.12"` | Python-versie die gegarandeerd geïnstalleerd moet zijn |
| `-Timeout` | Int32 | — | — | Named | `600` | Time-out in secondi per l'installazione di Python |
| `-Force` | SwitchParameter | — | — | Named | — | Dwingt herinstallatie van Python af |

## Examples

### EnsurePython

```powershell
EnsurePython
```

Zorgt dat Python 3.12 is geïnstalleerd met standaardinstellingen.

### $pythonPath = EnsurePython -Version "3.11" -Timeout 900

```powershell
$pythonPath = EnsurePython -Version "3.11" -Timeout 900
```

Installs Python 3.11 with extended timeout and returns the executable path.

### EnsurePython -Force -Verbose

```powershell
EnsurePython -Force -Verbose
```

Dwingt herinstallatie van Python 3.12 af met gedetailleerde voortgangsinformatie.

### EnsurePython -Version "3.10" -Force

```powershell
EnsurePython -Version "3.10" -Force
```

Dwingt installatie van Python 3.10 af, zelfs als een andere versie bestaat.

## Related Links

- [EnsurePython on GitHub](https://github.com/genXdev/genXdev)
