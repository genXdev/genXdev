# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault`

## Synopsis

> Define um valor de preferência padrão no armazenamento de preferências do GenXdev.

## Description

* Gerencia as preferências padrão no sistema de preferências GenXdev.
* Lida com o armazenamento de valores, remoção de preferências quando os valores estão vazios e
  garante que as alterações sejam sincronizadas no sistema.
* Suporta valores nulos removendo a preferência inteira nesses casos.

## Syntax

```powershell
Set-GenXdevDefaultPreference -Name <String> [[-Value] <String>] [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | O nome da preferência a ser definida em defaults |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | O valor a ser armazenado para a preferência |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use configurações alternativas armazenadas na sessão para preferências de dados como Idioma, caminhos de banco de dados, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não usar configurações alternativas armazenadas na sessão para preferências de dados como Idioma, caminhos de banco de dados, etc. |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

Define a preferência de tema padrão como "Escuro".

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

Usa o alias para desabilitar notificações por email nos padrões.

## Parameter Details

### `-Name <String>`

> O nome da preferência a ser definida em defaults

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> O valor a ser armazenado para a preferência

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Caminho do banco de dados para arquivos de dados de preferência

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Use configurações alternativas armazenadas na sessão para preferências de dados como Idioma, caminhos de banco de dados, etc

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Limpe a configuração da sessão (variável global) antes de recuperar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Não usar configurações alternativas armazenadas na sessão para preferências de dados como Idioma, caminhos de banco de dados, etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-GenXdevPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-GenXdevPreferencesDatabasePath.md)
