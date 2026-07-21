# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference`

## Synopsis

> Recupera um valor de preferência do armazenamento de preferências do GenXdev.

## Description

* Implementa um sistema de recuperação de preferências em dois níveis.
* Primeiro verifica no armazenamento local um valor de preferência.
* Se não for encontrado, recorre ao armazenamento padrão.
* Se ainda não for encontrado, retorna o valor padrão fornecido.

## Syntax

```powershell
Get-GenXdevPreference -Name <String> [[-DefaultValue] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O nome da preferência a ser recuperada |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | O valor padrão se a preferência não for encontrada |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use configurações alternativas armazenadas na sessão para preferências de dados como Idioma, caminhos de banco de dados, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não usar configurações alternativas armazenadas na sessão para preferências de dados como Idioma, caminhos de banco de dados, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

Recupera a preferência "Tema" com fallback para o padrão "Escuro".

### Example 2

```powershell
getPreference "Theme" "Dark"
```

Usa o alias e parâmetros posicionais.

## Parameter Details

### `-Name <String>`

> O nome da preferência a ser recuperada

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> O valor padrão se a preferência não for encontrada

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `DefaultPreference` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Caminho do banco de dados para arquivos de dados de preferência

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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

- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-GenXdevPreferencesDatabasePath.md)
