# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> Voert een scriptblok uit op elke GenXdev-module in de werkruimte.

## Description

Deze functie doorloopt GenXdev-modules in de werkruimte en voert een opgegeven scriptblok uit voor elke module. Het kan modules filteren op naampatroon, lokale modules uitsluiten, alleen gepubliceerde modules opnemen of scripts verwerken in plaats van modules. De functie navigeert automatisch naar de juiste moduledirectory voordat het scriptblok wordt uitgevoerd.

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

## Examples

### Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

```powershell
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }
```

GenXdev modules include: GenXdev.Graphics, GenXdev.IO, GenXdev.Networking, GenXdev.UI, GenXdev.Math, GenXdev.Data, GenXdev.Audio, GenXdev.System, GenXdev.Security, GenXdev.Utilities.

### foreach-genxdev-module-do {     param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)     Get-ChildItem } -ModuleName "GenXdev.AI"

```powershell
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"
```

Gebruikt alias om de inhoud van de GenXdev.AI-moduledirectory weer te geven.

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
