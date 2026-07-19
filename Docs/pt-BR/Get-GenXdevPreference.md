# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference

## Synopsis

> Recupera um valor de preferência do armazenamento de preferências do GenXdev.

## Description

* Implementa um sistema de recuperação de preferências em dois níveis.
* Primeiro, verifica o armazenamento local para um valor de preferência.
* Se não encontrado, recorre ao armazenamento padrão.
* Se ainda não encontrado, retorna o valor padrão fornecido.

## Syntax

```powershell
Get-GenXdevPreference [-Name] <string> [[-DefaultValue] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O nome da preferência a ser recuperada |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | O valor padrão caso a preferência não seja encontrada |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilize configurações alternativas armazenadas na sessão para preferências de Dados, como Idioma, caminhos de Banco de Dados, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não use configurações alternativas armazenadas na sessão para preferências de dados, como idioma, caminhos de banco de dados, etc. |

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

## Related Links

- [Get-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
