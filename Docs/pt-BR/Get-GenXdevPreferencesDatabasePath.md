# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtém o caminho do banco de dados configurado para arquivos de dados de preferência usados em operações do GenXdev.Data.

## Description

* Recupera o caminho global do banco de dados usado pelo módulo GenXdev.Data para
  armazenamento de preferências e diversas operações de dados.
* Verifica primeiro as variáveis Globais (a menos que SkipSession seja especificado), em seguida,
  recorre a preferências persistentes e, finalmente, usa os padrões do sistema.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Substituição opcional do caminho do banco de dados |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilize configurações alternativas armazenadas na sessão para preferências de Dados, como Idioma, caminhos de Banco de Dados, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não use configurações alternativas armazenadas na sessão para preferências de dados, como idioma, caminhos de banco de dados, etc. |

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

## Related Links

- [Get-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
