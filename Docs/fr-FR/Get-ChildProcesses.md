# Get-ChildProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Récupère tous les processus qui sont des descendants du processus PowerShell actuel.

## Description

* Examine tous les processus en cours et identifie ceux dont le processus PowerShell actuel est un ancêtre dans leur chaîne de processus parent.
* Cela inclut à la fois les processus enfants directs et leurs descendants (petits-enfants, etc.).

## Syntax

```powershell
Get-ChildProcesses [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ChildProcesses
```

Obtenez tous les processus enfants de la session PowerShell actuelle.

### Example 2

```powershell
Get-ChildProcesses -Verbose
```

Obtenir les processus enfants avec sortie détaillée montrant les informations de détection de processus.

## Related Links

- [Get-ChildProcesses on GitHub](https://github.com/genXdev/genXdev)
