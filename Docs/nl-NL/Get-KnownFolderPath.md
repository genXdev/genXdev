# Get-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `folder

## Synopsis

> Haalt het pad op van een bekende Windows-map via de Windows Shell32 API.

## Description

Haalt het pad op van een opgegeven Windows-bekende map met behulp van de Shell32 API's SHGetKnownFolderPath-functie. Deze methode is betrouwbaarder dan het gebruik van omgevingsvariabelen omdat het consistent werkt in verschillende Windows-versies en taalinstellingen. Ondersteunt alle standaard Windows-bekende mappen zoals Documenten, Downloads, AppData, enz.

## Syntax

```powershell
Get-KnownFolderPath -KnownFolder <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | De Windows bekende mapnaam om het pad voor op te halen |

## Examples

### Get-KnownFolderPath -KnownFolder 'Documents' Returns: C:\Users\Username\Documents

```powershell
Get-KnownFolderPath -KnownFolder 'Documents'
Returns: C:\Users\Username\Documents
```

### folder Downloads Returns: C:\Users\Username\Downloads using the alias

```powershell
folder Downloads
Returns: C:\Users\Username\Downloads using the alias
```

### cd (folder Desktop) Changes to the Desktop folder using the alias

```powershell
cd (folder Desktop)
Changes to the Desktop folder using the alias
```

## Related Links

- [Get-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)
