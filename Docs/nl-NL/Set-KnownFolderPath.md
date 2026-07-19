# Set-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Wijzigt het fysieke pad van een bekende Windows-map.

## Description

Maakt gebruik van de Windows Shell32 API om systeemmappen zoals Documenten, Downloads, Bureaublad of andere bekende Windows-mappen naar een nieuwe locatie te verplaatsen. De functie valideert dat het doelpad bestaat, zoekt de unieke GUID van de map op in de uitgebreide registerlijst van bekende mappen en gebruikt de SHSetKnownFolderPath API om de verplaatsing uit te voeren. Veelvoorkomende gebruiksscenario's zijn het verplaatsen van gebruikersmappen naar een andere schijf voor ruimtebeheer of organisatie. Wees voorzichtig bij het verplaatsen van systeemkritieke mappen, omdat dit de systeemstabiliteit kan beïnvloeden.

## Syntax

```powershell
Set-KnownFolderPath -KnownFolder <String> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | Bekende map om te wijzigen |
| `-Path` | String | ✅ | — | 1 | — | Nieuw pad voor de bekende map |

## Examples

### Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'

```powershell
Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'
```

### Set-KnownFolderPath Downloads 'E:\Downloads'

```powershell
Set-KnownFolderPath Downloads 'E:\Downloads'
```

## Related Links

- [Set-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)
