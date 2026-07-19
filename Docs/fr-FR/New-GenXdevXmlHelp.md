# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Génère des fichiers d'aide MAML pour tout module PowerShell.

## Description

Génère des fichiers d'aide XML MAML pour n'importe quel module PowerShell en extrayant les métadonnées de toutes les cmdlets d'un module à l'aide de Get-CmdletMetaData et en produisant à la fois ModuleName.dll-Help.xml (pour les cmdlets C#) et ModuleName-help.xml (pour

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Le nom du module PowerShell pour lequel générer l'aide |
| `-Language` | String | — | — | Named | `'en-US'` | fr-FR |
| `-Force` | SwitchParameter | — | — | Named | — | Écraser les fichiers d'aide XML existants sans invitation |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | Si vous devez vous déconnecter tôt, conservez cette page ouverte pendant que vous partez. |

## Examples

### New-GenXdevXmlHelp -ModuleName 'Pester'

```powershell
New-GenXdevXmlHelp -ModuleName 'Pester'
```

Génère le fichier XML d'aide en anglais pour le module Pester dans en-US.

### New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Genereert Nederlandse help-XML voor GenXdev, bestaande bestanden worden overschreven.

### New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

Affiche quels fichiers seraient créés sans réellement les écrire.

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
