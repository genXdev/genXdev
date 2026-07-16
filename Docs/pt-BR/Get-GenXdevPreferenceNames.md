# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-GenXdevPreferenceNames [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilize configurações alternativas armazenadas na sessão para preferências de Dados, como Idioma, caminhos de Banco de Dados, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não use configurações alternativas armazenadas na sessão para preferências de dados, como idioma, caminhos de banco de dados, etc. |

## Related Links

- [Get-GenXdevPreferenceNames on GitHub](https://github.com/genXdev/genXdev)
