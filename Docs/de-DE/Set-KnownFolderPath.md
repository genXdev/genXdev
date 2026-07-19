# Set-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Ändert den physischen Pfad eines bekannten Windows-Ordners.

## Description

Verwendet die Windows Shell32-API, um Systemordner wie Dokumente,
Downloads, Desktop oder andere bekannte Windows-Ordner an einen neuen Speicherort zu verschieben. Die
Funktion überprüft, ob der Zielpfad existiert, sucht die eindeutige GUID des Ordners
aus der umfassenden Registrierung bekannter Ordner und verwendet die SHSetKnownFolderPath-
API, um die Verschiebung durchzuführen. Häufige Anwendungsfälle umfassen das Verschieben von Benutzerordnern auf
ein anderes Laufwerk zur Speicherverwaltung oder Organisation. Seien Sie vorsichtig beim Verschieben von systemkritischen Ordnern, da dies die Systemstabilität beeinträchtigen kann.

## Syntax

```powershell
Set-KnownFolderPath -KnownFolder <String> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | Bekannter Ordner zum Ändern |
| `-Path` | String | ✅ | — | 1 | — | Neuer Pfad für den bekannten Ordner |

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
