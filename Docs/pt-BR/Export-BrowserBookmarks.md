# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Exporta favoritos do navegador para um arquivo JSON.

## Description

O cmdlet Export-BrowserBookmarks exporta favoritos de um navegador da web especificado (Microsoft Edge, Google Chrome ou Mozilla Firefox) para um arquivo JSON. Apenas um tipo de navegador pode ser especificado por vez. Os favoritos são exportados com preservação total de sua estrutura e metadados.

## Syntax

```powershell
Export-BrowserBookmarks -OutputFile <String> [-Chrome] [-Edge] [<CommonParameters>]

Export-BrowserBookmarks [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OutputFile` | String | ✅ | — | 0 | — | Caminho para o arquivo JSON onde os marcadores serão salvos |
| `-Chrome` | SwitchParameter | — | — | Named | — | Exportar favoritos do Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Exportar favoritos do Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Exportar favoritos do Mozilla Firefox *(Parameter set: )* |

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
