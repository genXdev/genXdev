# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Exporta los marcadores del navegador a un archivo JSON.

## Description

El cmdlet Export-BrowserBookmarks exporta los marcadores de un navegador web especificado (Microsoft Edge, Google Chrome o Mozilla Firefox) a un archivo JSON. Solo se puede especificar un tipo de navegador a la vez. Los marcadores se exportan con preservación completa de su estructura y metadatos.

## Syntax

```powershell
Export-BrowserBookmarks -OutputFile <String> [-Chrome] [-Edge] [<CommonParameters>]

Export-BrowserBookmarks [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OutputFile` | String | ✅ | — | 0 | — | Ruta al archivo JSON donde se guardarán los marcadores |
| `-Chrome` | SwitchParameter | — | — | Named | — | Exportar marcadores de Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Exportar marcadores de Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Exportar marcadores desde Mozilla Firefox *(Parameter set: )* |

## Examples

### Export-BrowserBookmarks -OutputFile "C:\MyBookmarks.json" -Edge

```powershell
Export-BrowserBookmarks -OutputFile "C:\MyBookmarks.json" -Edge
```

### Export-BrowserBookmarks "C:\MyBookmarks.json" -Chrome

```powershell
Export-BrowserBookmarks "C:\MyBookmarks.json" -Chrome
```

## Related Links

- [Export-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
