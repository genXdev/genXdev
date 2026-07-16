# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
