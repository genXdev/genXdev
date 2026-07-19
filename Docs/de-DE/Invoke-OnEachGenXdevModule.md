# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> Führt einen Skriptblock für jedes GenXdev-Modul im Arbeitsbereich aus.

## Description

Diese Funktion durchläuft GenXdev-Module im Arbeitsbereich und führt einen bereitgestellten Skriptblock für jedes Modul aus. Sie kann Module nach Namensmuster filtern, lokale Module ausschließen, nur veröffentlichte Module einschließen oder Skripte anstelle von Modulen verarbeiten. Die Funktion navigiert automatisch zum richtigen Modulverzeichnis, bevor der Skriptblock ausgeführt wird.

## Syntax

```powershell
Invoke-OnEachGenXdevModule -Script <ScriptBlock> [[-ModuleName] <String[]>] [-FromScripts] [-IncludeScripts] [-NoLocal] [-OnlyPublished] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | — | 0 | — | Der Skriptblock, der für jedes GenXdev-Modul ausgeführt werden soll |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | Filter, der auf Modulnamen angewendet werden soll 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Schließt lokale Entwicklungsmodule von der Verarbeitung aus |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Enthält nur veröffentlichte Module, die über LICENSE- und README.md-Dateien verfügen |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Prozess-Skriptverzeichnis anstelle von Modulverzeichnissen |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Enthält zusätzlich zu den regulären Modulen das Scripts-Verzeichnis |

## Examples

### Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

```powershell
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }
```

GenXdev module names include: GenXdev.Coding, GenXdev.Data, GenXdev.Financials, GenXdev.Helpers, GenXdev.IO, GenXdev.Licensing, GenXdev.Logging, GenXdev.Mobile, GenXdev.Networking, GenXdev.Serialization, GenXdev.UI, GenXdev.Web, GenXdev.WPF, and others.

### foreach-genxdev-module-do {     param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)     Get-ChildItem } -ModuleName "GenXdev.AI"

```powershell
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"
```

Verwendet Alias, um den Inhalt des GenXdev.AI-Modulverzeichnisses aufzulisten.

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
