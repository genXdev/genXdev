# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference`

## Synopsis

> Remove um valor de preferência do repositório de preferências do GenXdev.

## Description

* Remove um valor de preferência do repositório local e, opcionalmente, do repositório padrão.
* Fornece dois conjuntos de parâmetros - um para remoção apenas local e outro para remoção dos repositórios local e padrão.
* Garante sincronização adequada ao modificar o repositório padrão.

## Syntax

```powershell
Remove-GenXdevPreference -Name <String> [-ClearSession] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O nome da preferência a ser removida |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Mude para também remover a preferência dos padrões |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use configurações alternativas armazenadas na sessão para preferências de dados como Idioma, caminhos de banco de dados, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não usar configurações alternativas armazenadas na sessão para preferências de dados como Idioma, caminhos de banco de dados, etc. |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Remove a preferência "Tema" apenas do armazenamento local.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Remove a preferência "Tema" dos repositórios local e padrão.

## Parameter Details

### `-Name <String>`

> O nome da preferência a ser removida

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveDefault`

> Mude para também remover a preferência dos padrões

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-SkipSession`

> Não usar configurações alternativas armazenadas na sessão para preferências de dados como Idioma, caminhos de banco de dados, etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-GenXdevPreferencesDatabasePath.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-GenXdevPreferencesDatabasePath.md)
