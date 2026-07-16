# Remove-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-RemoveDefault] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O nome do refatorador aceita curingas 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | 1 | — | Alterne para remover também o conjunto de refatoração padrão |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | O valor padrão caso a preferência não seja encontrada |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilize configurações alternativas armazenadas na sessão para preferências de Dados, como Idioma, caminhos de Banco de Dados, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Não use configurações alternativas armazenadas na sessão para preferências de dados, como idioma, caminhos de banco de dados, etc. |

## Related Links

- [Remove-Refactor on GitHub](https://github.com/genXdev/genXdev)
