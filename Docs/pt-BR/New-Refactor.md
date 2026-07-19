# New-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `newrefactor

## Synopsis

> Cria um novo conjunto de refatoração para tarefas de transformação de código.

## Description

Cria e configura uma nova definição de refatoração com configurações especificadas para transformações de código baseadas em LLM. A função trata de:
- Configuração da refatoração
- Configuração de critérios de seleção e prompts
- Gerenciamento de configurações do modelo LLM
- Integração com ambientes de desenvolvimento
- Persistência de definições de refatoração

## Syntax

```powershell
New-Refactor -Name <String> -PromptKey <String> [[-Prompt] <String>] [[-SelectionScript] <String>] [[-SelectionPrompt] <String>] [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoAddModifiedFiles] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilesToAdd <IO.FileInfo[]>] [-KeysToSend <String[]>] [-Model <String>] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | O nome deste novo conjunto de refatoração |
| `-PromptKey` | String | ✅ | — | 1 | — | A chave prompt indica qual script de prompt usar |
| `-Prompt` | String | — | — | 2 | `''` | Texto de prompt personalizado para substituir o modelo |
| `-SelectionScript` | String | — | — | 3 | — | Script do PowerShell para selecionar itens para refatorar |
| `-SelectionPrompt` | String | — | — | 4 | — | Guia de seleção de LLM |
| `-LLMQueryType` | String | — | — | 5 | `'Coding'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Selecionar configuração com base na RAM disponível do sistema |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Selecione a configuração pela RAM de GPU disponível |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-Priority` | Int32 | — | — | Named | `0` | Prioridade para este conjunto de refatoração |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Matriz de definições de comandos do PowerShell para ferramentas LLM |
| `-FilesToAdd` | IO.FileInfo[] | — | — | Named | `@()` | Array de arquivos para processar |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-AutoAddModifiedFiles` | SwitchParameter | — | — | Named | — | Adicionará automaticamente arquivos modificados à fila |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir arquivos no Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Abrir no Visual Studio |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Toques de tecla a serem enviados após abrir arquivos |

## Examples

### New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `     -SelectionScript "Get-LoggingMethods" -Priority 1 `     -Code

```powershell
New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `
    -SelectionScript "Get-LoggingMethods" -Priority 1 `
    -Code
```

### newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c

```powershell
newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c
```

## Related Links

- [New-Refactor on GitHub](https://github.com/genXdev/genXdev)
