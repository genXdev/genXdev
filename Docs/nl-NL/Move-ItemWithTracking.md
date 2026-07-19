# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Verplaatst bestanden en mappen terwijl bestandssysteemkoppelingen en
referenties behouden blijven.

## Description

* Gebruikt de Windows MoveFileEx API om bestanden en mappen te verplaatsen met link tracking ingeschakeld, zodat bestandssysteemreferenties behouden blijven.
* Als het bronpad onder Git-beheer valt, probeert het git mv te gebruiken om de hernoeming in Git te volgen.
* Valt terug op MoveFileEx als Git niet beschikbaar is of git mv faalt.

## Syntax

```powershell
Move-ItemWithTracking [-Path] <string> [-Destination] <string> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Bronpad van het bestand/de map om te verplaatsen |
| `-Destination` | String | ✅ | — | 1 | — | Doelpad om naar te verplaatsen |
| `-Force` | SwitchParameter | — | — | Named | `False` | Schrijf over doelbestemming indien het bestaat |

## Examples

### Example 1

```powershell
Move-ItemWithTracking -Path "C:\temp\oldfile.txt" -Destination "D:\newfile.txt"
```

Verplaatst een bestand met behoud van bestandssysteemkoppelingen en Git-tracking.

### Example 2

```powershell
"C:\temp\olddir" | Move-ItemWithTracking -Destination "D:\newdir" -Force
```

Verplaatst een map, overschrijft de bestemming als deze bestaat.

## Related Links

- [Move-ItemWithTracking on GitHub](https://github.com/genXdev/genXdev)
