# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtém o caminho do banco de dados configurado para arquivos de dados de preferência usados em operações GenXdev.Data.

## Description

* Recupera o caminho global do banco de dados usado pelo módulo GenXdev.Data para armazenamento de várias preferências e operações de dados.
* Verifica primeiro as variáveis Globais (a menos que SkipSession seja especificado) e, em seguida, recorre às preferências persistentes e, finalmente, usa os padrões do sistema.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Substituição de caminho de banco de dados opcional |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use configurações alternativas armazenadas na sessão para preferências de dados como Idioma, caminhos de banco de dados, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não usar configurações alternativas armazenadas na sessão para preferências de dados como Idioma, caminhos de banco de dados, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

Recupera o caminho do banco de dados das variáveis globais ou preferências.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

Ignora a variável de sessão e usa preferências persistentes.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Limpa a configuração da sessão antes de recuperar o caminho.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Substituição de caminho de banco de dados opcional

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-GenXdevPreferencesDatabasePath.md)
