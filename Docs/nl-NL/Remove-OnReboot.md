# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Markeert bestanden of mappen voor verwijdering tijdens de volgende systeemopstart.

## Description

* Maakt gebruik van de Windows API om bestanden te markeren voor verwijdering bij de volgende start.
* Verwerkt vergrendelde bestanden door ze eerst te hernoemen naar tijdelijke
  namen en houdt alle verplaatsingen bij om de bestandssysteemintegriteit te behouden.
* Als hernoemen mislukt, kan de parameter -MarkInPlace worden gebruikt om bestanden
  op hun oorspronkelijke locatie te markeren.

## Syntax

```powershell
Remove-OnReboot [-Path] <string[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | Pad(en) naar bestanden/mappen om te markeren voor verwijdering |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | Markeert bestanden voor verwijdering zonder hernoeming |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

Markeert een vergrendeld bestand voor verwijdering tijdens de volgende systeemstart.

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

Markeert meerdere bestanden voor verwijdering, met MarkInPlace voor bestanden die niet hernoemd kunnen worden.

## Related Links

- [Remove-OnReboot on GitHub](https://github.com/genXdev/genXdev)
