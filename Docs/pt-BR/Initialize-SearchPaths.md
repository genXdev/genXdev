# Initialize-SearchPaths

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Inicializa e configura os caminhos de pesquisa do sistema para gerenciamento de pacotes.

## Description

* Constrói uma lista abrangente de caminhos de pesquisa combinando locais padrão do sistema, caminhos do chocolatey, caminhos de ferramentas de desenvolvimento e caminhos de pacotes personalizados.
* Atualiza a variável de ambiente PATH do sistema com esses caminhos consolidados.

## Syntax

```powershell
Initialize-SearchPaths [[-WorkspaceFolder] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WorkspaceFolder` | String | — | — | 0 | — | O caminho da pasta do workspace a ser usado para módulos node e caminhos do PowerShell. |

## Examples

### Example 1

```powershell
Initialize-SearchPaths
```

Inicializa os caminhos de pesquisa usando a pasta de trabalho padrão.

### Example 2

```powershell
Initialize-SearchPaths -WorkspaceFolder "C:\workspace"
```

Inicializa os caminhos de pesquisa usando uma pasta de espaço de trabalho específica.

## Related Links

- [Initialize-SearchPaths on GitHub](https://github.com/genXdev/genXdev)
