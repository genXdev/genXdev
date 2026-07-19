# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Gibt Dateiinformationen mit hyperlink-versehenen Anzeigenamen für eine verbesserte Benutzererfahrung aus.

## Description

Diese Funktion verarbeitet Dateieingabeobjekte und gibt sie in einem benutzerfreundlichen Format mit hyperlinkierten Dateinamen aus, wenn sie in der Konsole angezeigt werden. Sie behandelt verschiedene Eingabetypen, darunter Zeichenfolgen, FileInfo-Objekte und andere Objekttypen. Die Funktion erkennt automatisch, ob die Ausgabe umgeleitet oder in einer Pipeline erfasst wird, und passt ihr Verhalten entsprechend an.

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | Die Aufrufinformationen von der aufrufenden Funktion |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | The input object to process, which can be a file path or object |
| `-Prefix` | String | — | — | Named | — | Ein optionaler Zeichenketten-Präfix, der der Ausgabeanzeige für zusätzlichen Kontext vorangestellt wird |
| `-RelativeBasePath` | String | — | — | Named | — | Basis-Pfad zum Generieren relativer Dateipfade in der Ausgabe |
| `-FullPaths` | SwitchParameter | — | — | Named | — | Erzwingt die Verwendung vollständiger absoluter Pfade anstelle von relativen Pfaden |

## Examples

### WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"

```powershell
WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"
```

### Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_

```powershell
Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_
```

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
