# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt metadata op voor een opgegeven GenXdev-cmdlet, met optioneel vertaling van helptekst naar een andere taal.

## Description

Haalt en retourneert uitgebreide metadata over een GenXdev-cmdlet, inclusief de synopsis, beschrijving, parameters, voorbeelden en andere helpinformatie. Wanneer een doeltaal wordt opgegeven via de parameter -Language, kan de helptekst worden vertaald met behulp van AI-gebaseerde vertaaldiensten. Aangepaste vertaalinstructies kunnen worden verstrekt om de vertaaloutput te verfijnen.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | De naam van de cmdlet om metadata op te halen |
| `-Language` | String | — | — | 1 | — | nl-NL |
| `-TranslationInstructions` | String | — | — | 2 | — | Aangepaste instructies voor het AI-vertaalmodel. Overschrijft de standaard cmdlet-metadata-bewuste vertaalinstructies. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Haalt de metagegevens op voor de Find-Item cmdlet in de standaardtaal.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Haalt metagegevens op voor de cmdlet Find-Item met Nederlandse vertalingen.

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
