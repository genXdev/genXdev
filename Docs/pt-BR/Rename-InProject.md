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
| `-Source` | String | — | — | 0 | — | O diretório, caminho do arquivo ou diretório+máscara de pesquisa |
| `-FindText` | String | ✅ | — | 1 | — | O texto a ser encontrado (a sensibilidade a maiúsculas/minúsculas é controlada pelo parâmetro CaseInsensitive) |
| `-ReplacementText` | String | ✅ | — | 2 | — | O texto a ser substituído corresponde a |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
