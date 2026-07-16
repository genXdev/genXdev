# Invoke-CommandFromToolCall

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-CommandFromToolCall -ToolCall <Collections.Hashtable> [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ForceAsText] [-Functions <Collections.Hashtable[]>] [-NoConfirmationToolFunctionNames <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ToolCall` | Collections.Hashtable | ✅ | — | 0 | — | Objeto de chamada de ferramenta contendo detalhes da função e argumentos |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array de definições de funções |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array de definições de comandos PowerShell para usar como ferramentas |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array de nomes de comandos que não requerem confirmação |
| `-ForceAsText` | SwitchParameter | — | — | Named | — | Forçar saída como texto |

## Related Links

- [Invoke-CommandFromToolCall on GitHub](https://github.com/genXdev/genXdev)
