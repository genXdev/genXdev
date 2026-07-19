# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Define o caminho do banco de dados para as preferências usadas nas operações do GenXdev.Data.

## Description

* Configura o caminho global do banco de dados usado pelo módulo GenXdev.Data para
  várias operações de armazenamento de preferências e dados.
* As configurações são armazenadas na sessão atual (usando variáveis Globais) e
  podem ser limpas da sessão (usando -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Um caminho de banco de dados onde os arquivos de dados de preferência estão localizados |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não use configurações alternativas armazenadas na sessão para preferências de dados, como idioma, caminhos de banco de dados, etc. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Quando especificado, armazena a configuração apenas na sessão atual (variável global) sem persistir nas preferências |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Quando especificado, limpa apenas a configuração da sessão (variável global) sem afetar preferências persistentes |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Define o caminho do banco de dados na sessão atual (Variável global).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Define o caminho do banco de dados usando o parâmetro posicional.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Define o caminho apenas para a sessão atual sem persistir.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Limpa a variável global para o caminho do banco de dados.

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
