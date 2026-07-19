# EnsureDefaultGenXdevRefactors

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Zorgt ervoor dat standaard GenXdev-refactoringdefinities beschikbaar zijn.

## Description

Deze functie creëert en onderhoudt standaard refactoring-definities voor GenXdev PowerShell-modules. Het stelt refactors in voor documentatie en opmaak, C#-conversie en installatie-toestemmingsprompts.

## Syntax

```powershell
EnsureDefaultGenXdevRefactors [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Dwingt het opnieuw aanmaken van bestaande refactordefinities af |

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
