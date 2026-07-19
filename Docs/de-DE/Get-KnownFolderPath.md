# Get-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `folder

## Synopsis

> Ruft den Pfad eines bekannten Windows-Ordners mithilfe der Windows Shell32-API ab.

## Description

Ruft den Pfad eines bestimmten Windows-Bekannten Ordners mithilfe der Shell32-API-Funktion SHGetKnownFolderPath ab. Diese Methode ist zuverlässiger als die Verwendung von Umgebungsvariablen, da sie konsistent über verschiedene Windows-Versionen und Spracheinstellungen hinweg funktioniert. Unterstützt alle standardmäßigen Windows-Bekannten Ordner wie Dokumente, Downloads, AppData usw.

## Syntax

```powershell
Get-KnownFolderPath -KnownFolder <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | Der Name des bekannten Windows-Ordners, für den der Pfad abgerufen werden soll |

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
