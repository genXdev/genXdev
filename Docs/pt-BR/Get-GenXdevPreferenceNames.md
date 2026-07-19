# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames

## Synopsis

> Obtém todos os nomes de preferências do armazenamento de sessão e dos bancos de dados.

## Description

* Recupera uma lista única de nomes de preferência combinando chaves do
  armazenamento de sessão (variáveis globais) e das lojas de preferência
  local e padrão.
* Respeita os parâmetros de gerenciamento de sessão para controlar quais
  fontes são consultadas.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilize configurações alternativas armazenadas na sessão para preferências de Dados, como Idioma, caminhos de Banco de Dados, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não use configurações alternativas armazenadas na sessão para preferências de dados, como idioma, caminhos de banco de dados, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Retorna um array ordenado de nomes de preferência únicos do armazenamento de sessão e de ambos os armazenamentos usando o caminho de banco de dados especificado.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Retorna apenas nomes de preferências do armazenamento de sessão.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Retorna apenas nomes de preferências do banco de dados de lojas.

## Related Links

- [Get-GenXdevPreferenceNames on GitHub](https://github.com/genXdev/genXdev)
