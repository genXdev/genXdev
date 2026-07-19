# Import-GenXdevModules

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `reloadgenxdev

## Synopsis

> Importiert alle GenXdev PowerShell-Module in den globalen Gültigkeitsbereich.

## Description

Durchsucht das übergeordnete Verzeichnis nach GenXdev-Modulen und importiert jedes in den globalen Gültigkeitsbereich. Verwendet eine Standortverwaltung, um das Arbeitsverzeichnis zu erhalten, und bietet visuelles Feedback für erfolgreiche und fehlgeschlagene Importe. Verfolgt Änderungen der Funktionsanzahl während des Importprozesses.

## Syntax

```powershell
Import-GenXdevModules [-DebugFailedModuleDefinitions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DebugFailedModuleDefinitions` | SwitchParameter | — | — | Named | — | Debug-Ausgabe für fehlgeschlagene Moduldefinitionen aktivieren |

## Examples

### Import-GenXdevModules -DebugFailedModuleDefinitions Imports modules with debug output for failures

```powershell
Import-GenXdevModules -DebugFailedModuleDefinitions
Imports modules with debug output for failures
```

### reloadgenxdev Imports all modules using the alias

```powershell
reloadgenxdev
Imports all modules using the alias
```

## Related Links

- [Import-GenXdevModules on GitHub](https://github.com/genXdev/genXdev)
