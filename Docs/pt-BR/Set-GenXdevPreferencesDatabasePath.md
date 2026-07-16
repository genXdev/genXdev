# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Um caminho de banco de dados onde os arquivos de dados de preferência estão localizados |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não use configurações alternativas armazenadas na sessão para preferências de dados, como idioma, caminhos de banco de dados, etc. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Quando especificado, armazena a configuração apenas na sessão atual (variável global) sem persistir nas preferências |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Quando especificado, limpa apenas a configuração da sessão (variável global) sem afetar preferências persistentes |

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
