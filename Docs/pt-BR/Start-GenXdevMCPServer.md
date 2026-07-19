# Start-GenXdevMCPServer

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-GenXdevMCPServer [[-Port] <Int32>] [[-ExposedCmdLets] <GenXdev.Helpers.ExposedCmdletDefinition[]>] [[-NoConfirmationToolFunctionNames] <String[]>] [[-MaxOutputLength] <Int32>] [[-Token] <String>] [-StopExisting] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Port` | Int32 | — | — | 0 | `2175` | A porta na qual o servidor MCP irá escutar (padrão: 2175) |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | Matriz de definições de comandos PowerShell para expor como ferramentas MCP |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | Array de nomes de comandos que podem executar sem confirmação do usuário |
| `-StopExisting` | SwitchParameter | — | — | Named | — | Pare qualquer servidor MCP existente em execução na porta especificada antes de iniciar um novo |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | Tamanho máximo da saída da ferramenta em caracteres antes de truncar (padrão: 75000) |
| `-Token` | String | — | — | 4 | `$null` | Token de autenticação necessário para que os clientes se conectem ao servidor MCP |

## Related Links

- [Start-GenXdevMCPServer on GitHub](https://github.com/genXdev/genXdev)
