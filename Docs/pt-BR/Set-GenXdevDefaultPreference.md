# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> Define um valor de preferência padrão no armazenamento de preferências do GenXdev.

## Description

* Gerencia preferências padrão no sistema de preferências GenXdev.
* Trata armazenamento de valores, remoção de preferências quando os valores estão vazios e
  garante que as alterações sejam sincronizadas em todo o sistema.
* Suporta valores nulos removendo completamente a preferência nesses casos.

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

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

Define a preferência de tema padrão como "Dark".

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

Usa o alias para desabilitar notificações por e-mail nos defaults.

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)
