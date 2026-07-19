# Get-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtient le handle de la fenêtre d'avant-plan actuellement active.

## Description

* Cette cmdlet récupère le handle de fenêtre (HWND) de la fenêtre qui est
  actuellement au premier plan et qui a le focus clavier.
* Elle utilise les fonctions de l'API Windows via P/Invoke pour interagir avec la
  bibliothèque User32.dll.

## Syntax

```powershell
Get-ForegroundWindow [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ForegroundWindow
```

Récupère et retourne le handle IntPtr de la fenêtre active actuelle.

### Example 2

```powershell
$windowHandle = Get-ForegroundWindow
Write-Host "Active window handle: $windowHandle"
```

Stocke le handle de la fenêtre au premier plan dans une variable et l'affiche.

## Related Links

- [Get-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
