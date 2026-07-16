# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
ResolveInputObjectFileNames [[-InputObject] <Object>] [[-RelativeBasePath] <String>] [-AllDrives] [-File] [-IncludeAlternateFileStreams] [-NoRecurse] [-PassThru] [<CommonParameters>]

ResolveInputObjectFileNames [[-Pattern] <String>] [<CommonParameters>]

ResolveInputObjectFileNames [-Directory] [-FilesAndDirectories] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Object invoer met bestandsnamen of mappen |
| `-File` | SwitchParameter | — | — | Named | — | Return only files |
| `-Pattern` | String | — | — | 1 | — | Reguliere expressie patroon om te zoeken in inhoud *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Basispad voor het oplossen van relatieve paden in uitvoer |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Doorzoek alle beschikbare schijven |
| `-Directory` | SwitchParameter | — | — | Named | — | Zoek alleen naar mappen *(Parameter set: )* |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Inclusief zowel bestanden als mappen *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output matched items as objects |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Alternatieve gegevensstromen opnemen in zoekresultaten |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Niet recursief in subdirectories |

## Related Links

- [ResolveInputObjectFileNames on GitHub](https://github.com/genXdev/genXdev)
