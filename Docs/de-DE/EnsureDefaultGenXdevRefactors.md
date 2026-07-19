# EnsureDefaultGenXdevRefactors

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Stellt sicher, dass die standardmäßigen GenXdev-Refactoring-Definitionen verfügbar sind.

## Description

Diese Funktion erstellt und verwaltet standardmäßige Refactoring-Definitionen für GenXdev PowerShell-Module. Sie richtet Refactorings für Dokumentation und Formatierung, C#-Konvertierung sowie Installationszustimmungsaufforderungen ein.

## Syntax

```powershell
EnsureDefaultGenXdevRefactors [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Forces recreation of existing refactor definitions |

## Examples

### EnsureDefaultGenXdevRefactors

```powershell
EnsureDefaultGenXdevRefactors
```

### EnsureDefaultGenXdevRefactors -Force

```powershell
EnsureDefaultGenXdevRefactors -Force
```

## Related Links

- [EnsureDefaultGenXdevRefactors on GitHub](https://github.com/genXdev/genXdev)
