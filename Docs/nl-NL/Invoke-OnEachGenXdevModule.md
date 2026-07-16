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
| `-Script` | ScriptBlock | ✅ | — | 0 | — | Het scriptblok dat moet worden uitgevoerd voor elke GenXdev-module |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | Filter om toe te passen op modulenamen 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Sluit lokale ontwikkelingsmodules uit van verwerking |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Bevat alleen gepubliceerde modules die een LICENSE- en README.md-bestand bevatten |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Verwerk scripts directory in plaats van module directories |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Bevat de scripts-directory naast reguliere modules |

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
