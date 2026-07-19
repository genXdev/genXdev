# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Breidt invoerobjecten uit tot bestands- en mapnamen, met ondersteuning voor verschillende filters en uitvoeropties.

## Description

Deze functie verwerkt invoerobjecten (bestanden, mappen of verzamelingen) en breidt ze uit tot bestands- en mapnamen. Het ondersteunt filteren, patroonherkenning en kan resultaten als objecten uitvoeren. De functie is ontworpen om te werken met pijplijninvoer en biedt opties voor recursie, alternatieve datastromen en meer.

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

## Examples

### ResolveInputObjectFileNames -Input "C:\Temp" -File

```powershell
ResolveInputObjectFileNames -Input "C:\Temp" -File
```

## Related Links

- [ResolveInputObjectFileNames on GitHub](https://github.com/genXdev/genXdev)
