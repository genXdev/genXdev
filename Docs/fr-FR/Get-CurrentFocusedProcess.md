# Get-CurrentFocusedProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Récupère l'objet processus de la fenêtre qui a actuellement le focus clavier.

## Description

* Cette cmdlet utilise des appels API Windows via P/Invoke pour identifier et
  renvoyer l'objet Process associé à la fenêtre actuellement active.
* Elle exploite les fonctions User32.dll GetForegroundWindow et
  GetWindowThreadProcessId pour déterminer quelle fenêtre a le focus et obtenir
  son ID de processus associé.

## Syntax

```powershell
Get-CurrentFocusedProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$focusedProcess = Get-CurrentFocusedProcess
Write-Host "Active window process: $($focusedProcess.ProcessName)"
```

Récupère l'objet processus pour la fenêtre qui a actuellement le focus clavier.

## Related Links

- [Get-CurrentFocusedProcess on GitHub](https://github.com/genXdev/genXdev)
