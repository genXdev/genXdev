# Get-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Obtém o diretório configurado para arquivos de imagem de rosto usados em operações do GenXdev.AI.

## Description

Esta função recupera o diretório global de faces utilizado pelo módulo GenXdev.AI para diversas operações de reconhecimento facial e IA. Ela verifica primeiro as variáveis globais (a menos que SkipSession seja especificado), em seguida recorre às preferências persistentes e, por fim, utiliza os padrões do sistema.

## Syntax

```powershell
Get-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Caminho do diretório para arquivos de imagem facial |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Não use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |

## Examples

### Get-AIKnownFacesRootpath

```powershell
Get-AIKnownFacesRootpath
```

Obtém o diretório de faces atualmente configurado a partir de variáveis globais ou preferências.

### Get-AIKnownFacesRootpath -SkipSession

```powershell
Get-AIKnownFacesRootpath -SkipSession
```

Obtém apenas o diretório de faces configurado das preferências persistentes, ignorando qualquer configuração de sessão.

### Get-AIKnownFacesRootpath -ClearSession

```powershell
Get-AIKnownFacesRootpath -ClearSession
```

Limpa a configuração do diretório de faces da sessão e, em seguida, obtém o diretório das preferências persistentes.

### Get-AIKnownFacesRootpath "C:\MyFaces"

```powershell
Get-AIKnownFacesRootpath "C:\MyFaces"
```

Retorna o diretório especificado após expandir o caminho.

## Related Links

- [Get-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
