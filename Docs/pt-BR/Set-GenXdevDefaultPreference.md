# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-GenXdevDefaultPreference [-Name] <string> [[-Value] <string>] [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | O nome da preferência a ser definida em defaults |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | O valor a ser armazenado para a preferência |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilize configurações alternativas armazenadas na sessão para preferências de Dados, como Idioma, caminhos de Banco de Dados, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não use configurações alternativas armazenadas na sessão para preferências de dados, como idioma, caminhos de banco de dados, etc. |

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)
