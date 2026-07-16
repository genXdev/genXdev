# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | El directorio, la ruta de archivo, o directorio+máscara de búsqueda |
| `-FindText` | String | ✅ | — | 1 | — | El texto a buscar (el control de mayúsculas y minúsculas se determina mediante el parámetro CaseInsensitive) |
| `-ReplacementText` | String | ✅ | — | 2 | — | El texto para reemplazar coincide con |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
