# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AIMetaLanguage [[-Language] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | O idioma padrão para operações de metadados de imagem |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
