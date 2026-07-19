# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference

## Synopsis

> Define um valor de preferência no armazenamento de preferências do GenXdev.

## Description

* Gerencia preferências no armazenamento local do GenXdev.
* Pode definir novas preferências, atualizar as existentes ou removê-las quando um valor nulo/vazio é fornecido.
* As preferências são armazenadas com a sincronização definida como "Local".

## Syntax

```powershell
Set-GenXdevPreference [-Name] <string> [[-Value] <string>] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O nome da preferência a ser definido |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | O valor a ser armazenado para a preferência |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilize configurações alternativas armazenadas na sessão para preferências de Dados, como Idioma, caminhos de Banco de Dados, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não use configurações alternativas armazenadas na sessão para preferências de dados, como idioma, caminhos de banco de dados, etc. |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

Define a preferência "Tema" como "Escuro" no armazenamento local.

### Example 2

```powershell
setPreference Theme Light
```

Usa o alias e os parâmetros posicionais para definir a preferência de Tema.

## Related Links

- [Set-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
