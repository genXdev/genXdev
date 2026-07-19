# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> Breidt elke opgegeven bestandsverwijzing uit naar een volledig pad.

## Description

Breidt elk gegeven bestandsreferentie uit naar een volledig pad, met betrekking tot de huidige map van de gebruiker. Kan optioneel garanderen dat mappen of bestanden bestaan.

## Syntax

```powershell
Expand-Path -FilePath <String> [-CreateDirectory] [-CreateFile] [-DeleteExistingFile] [-DirectoryMustExist] [-FileMustExist] [-ForceDrive <Char>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Pad uitbreiden |
| `-CreateDirectory` | SwitchParameter | — | — | Named | — | Maakt de map aan als deze nog niet bestaat |
| `-CreateFile` | SwitchParameter | — | — | Named | — | Maakt een leeg bestand aan als het nog niet bestaat |
| `-DeleteExistingFile` | SwitchParameter | — | — | Named | — | Verwijdert het bestand als het al bestaat |
| `-ForceDrive` | Char | — | — | Named | `'*'` | Dwingt het gebruik van een specifieke schijf |
| `-FileMustExist` | SwitchParameter | — | — | Named | — | Zal een fout geven als het bestand niet bestaat |
| `-DirectoryMustExist` | SwitchParameter | — | — | Named | — | Gooit een fout als de map niet bestaat |

## Examples

### Expand-Path -FilePath ".\myfile.txt" -CreateFile

```powershell
Expand-Path -FilePath ".\myfile.txt" -CreateFile
```

### ep ~\documents\test.txt -CreateFile

```powershell
ep ~\documents\test.txt -CreateFile
```

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)
