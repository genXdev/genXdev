# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Generiert MAML-XML-Hilfedateien für jedes PowerShell-Modul.

## Description

Generiert MAML-XML-Hilfedateien für jedes PowerShell-Modul, indem Metadaten aus allen Cmdlets eines Moduls mithilfe von Get-CmdletMetaData extrahiert werden und sowohl ModuleName.dll-Help.xml (für C#-Cmdlets) als auch ModuleName-help.xml (für

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Der Name des PowerShell-Moduls, für das Hilfe generiert werden soll |
| `-Language` | String | — | — | Named | `'en-US'` | de-DE |
| `-Force` | SwitchParameter | — | — | Named | — | Vorhandene Hilfe-XML-Dateien überschreiben, ohne nachzufragen |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | {
  "json_schema": {
    "strict": true,
    "name": "text_transformation_response",
    "schema": {
      "required": ["response"],
      "properties": {
        "response": {
          "description": "The transformed text output",
          "type": "string"
        }
      },
      "type": "object"
    }
  },
  "type": "json_schema"
} |

## Examples

### New-GenXdevXmlHelp -ModuleName 'Pester'

```powershell
New-GenXdevXmlHelp -ModuleName 'Pester'
```

Generiert englische Hilfe-XML für das Pester-Modul in en-US.

### New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Generiert niederländische Hilfe-XML für GenXdev und überschreibt vorhandene Dateien.

### New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

Zeigt an, welche Dateien erstellt würden, ohne sie tatsächlich zu schreiben.

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
