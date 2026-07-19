# Get-PowershellMainWindowProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Renvoie l'objet processus pour la fenêtre hébergeant le terminal PowerShell.

## Description

* Parcourt l'arborescence des processus en partant du processus PowerShell actuel pour localiser la fenêtre parente responsable de l'hébergement du terminal.
* Si le processus parent immédiat n'a pas de handle de fenêtre principale, il recherche des processus similaires qui ont des fenêtres principales.
* Utile pour identifier le processus de fenêtre de terminal réel (comme Windows Terminal, ConHost, etc.) qui contient la session PowerShell.

## Syntax

```powershell
Get-PowershellMainWindowProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hostProcess = Get-PowershellMainWindowProcess
Write-Host "PowerShell is hosted in: $($hostProcess.ProcessName)"
```

Renvoie le processus hébergeant la session PowerShell en cours et affiche son nom.

## Related Links

- [Get-PowershellMainWindowProcess on GitHub](https://github.com/genXdev/genXdev)
