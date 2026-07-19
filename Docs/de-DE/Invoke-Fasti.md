# Invoke-Fasti

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fasti

## Synopsis

> Extrahiert Archivdateien im aktuellen Verzeichnis in ihre eigenen Ordner und löscht sie anschließend.

## Description

Extrahiert automatisch gängige Archivformate (zip, 7z, tar usw.), die im aktuellen Verzeichnis gefunden werden, in einzelne Ordner, die nach jedem Archiv benannt sind. Nach erfolgreicher Extraktion werden die ursprünglichen Archivdateien gelöscht. Erfordert die Installation von 7-Zip auf dem System.

## Syntax

```powershell
Invoke-Fasti [[-Password] <String>] [-ExtractOutputToo] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Password` | String | — | — | 0 | — | Geben Sie das Passwort für das/die verschlüsselte(n) Archiv(e) ein |
| `-ExtractOutputToo` | SwitchParameter | — | — | Named | — | Archivdateien in extrahierten Ordnern rekursiv extrahieren |

## Examples

### PS C:\Downloads> Invoke-Fasti

```powershell
PS C:\Downloads> Invoke-Fasti
```

### PS C:\Downloads> fasti

```powershell
PS C:\Downloads> fasti
```

## Related Links

- [Invoke-Fasti on GitHub](https://github.com/genXdev/genXdev)
