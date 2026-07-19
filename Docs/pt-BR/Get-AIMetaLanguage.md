# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> Obtém o idioma padrão configurado para operações de metadados de imagem.

## Description

* Este cmdlet recupera o idioma padrão usado pelo módulo GenXdev.AI para operações de metadados de imagem.
* Ele verifica primeiro as variáveis Globais (a menos que SkipSession seja especificado), depois recorre às preferências persistentes e, finalmente, usa os padrões do sistema.

## Syntax

```powershell
Get-AIMetaLanguage [[-Language] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | O idioma padrão para operações de metadados de imagem |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |

## Examples

### Example 1

```powershell
Get-AIMetaLanguage
```

Obter o idioma atualmente configurado a partir de variáveis globais ou preferências.

### Example 2

```powershell
Get-AIMetaLanguage -SkipSession
```

Obter o idioma configurado das preferências persistentes, ignorando a sessão.

### Example 3

```powershell
Get-AIMetaLanguage -ClearSession
```

Limpe a configuração da sessão e obtenha o idioma das preferências persistentes.

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
