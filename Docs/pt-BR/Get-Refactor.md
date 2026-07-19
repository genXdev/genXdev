# Get-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `refactors

## Synopsis

> Recupera definições de refatoração das preferências do GenXdev com base em padrões de nome.

## Description

Procura e carrega conjuntos de definição de refatoração armazenados nas preferências do GenXdev.
Cada conjunto de refatoração é armazenado como uma string JSON em uma preferência com nome iniciado
com 'refactor_set_'. A função desserializa os conjuntos correspondentes em objetos.

## Syntax

```powershell
Get-Refactor [[-Name] <String[]>] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Padrão(ões) para pesquisar definições de refatoração 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-DefaultValue` | String | — | — | Named | — | O valor padrão caso a preferência não seja encontrada |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilize configurações alternativas armazenadas na sessão para preferências de Dados, como Idioma, caminhos de Banco de Dados, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Não use configurações alternativas armazenadas na sessão para preferências de dados, como idioma, caminhos de banco de dados, etc. |

## Examples

### Get-Refactor -Name "CodeStyle*" Returns refactor definitions matching pattern "CodeStyle*"

```powershell
Get-Refactor -Name "CodeStyle*"
Returns refactor definitions matching pattern "CodeStyle*"
```

### refactor "UnitTest" Uses alias to find refactor definitions containing "UnitTest"

```powershell
refactor "UnitTest"
Uses alias to find refactor definitions containing "UnitTest"
```

## Outputs

- `GenXdev.Helpers.RefactorDefinition[]`

## Related Links

- [Get-Refactor on GitHub](https://github.com/genXdev/genXdev)
