# Move-ToRecycleBin

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Verplaatst bestanden en mappen veilig naar de Windows Prullenbak.

## Description

* Verplaatst bestanden of mappen veilig naar de prullenbak met behulp van de Windows Shell API, zelfs als ze momenteel in gebruik zijn.
* De functie gebruikt het Shell.Application COM-object om de bewerking uit te voeren, wat zorgt voor correct recyclinggedrag en ongedaanmaakmogelijkheden.

## Syntax

```powershell
Move-ToRecycleBin [-Path] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Geef het pad/de paden op om naar de prullenbak te verplaatsen |

## Examples

### Example 1

```powershell
Move-ToRecycleBin -Path "C:\temp\old-report.txt"
```

Verplaats een enkel bestand naar de prullenbak.

### Example 2

```powershell
"file1.txt","file2.txt" | recycle
```

Verplaats meerdere bestanden naar de prullenbak met behulp van pijplijn en alias.

## Related Links

- [Move-ToRecycleBin on GitHub](https://github.com/genXdev/genXdev)
