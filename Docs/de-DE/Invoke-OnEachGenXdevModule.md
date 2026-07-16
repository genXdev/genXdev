# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
