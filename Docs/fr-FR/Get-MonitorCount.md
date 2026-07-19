# Get-MonitorCount

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtient le nombre total de moniteurs d'affichage connectés au système.

## Description

* Utilise la classe d'aide Screen de Windows Presentation Foundation (WPF) pour déterminer avec précision le nombre de moniteurs d'affichage physiques actuellement connectés au système.
* Cela inclut les moniteurs à la fois actifs et détectés mais désactivés.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Retourne le nombre total de moniteurs connectés (par exemple 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Retourne le nombre de moniteurs avec affichage détaillé du processus de détection.

## Related Links

- [Get-MonitorCount on GitHub](https://github.com/genXdev/genXdev)
