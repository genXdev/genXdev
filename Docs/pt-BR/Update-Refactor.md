# Update-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `updaterefactor

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | O nome do refatorador aceita curingas *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | O conjunto de refatoração para atualizar *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | Nomes de arquivos a adicionar |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | Nomes de arquivos para remover |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | Selecione arquivos por data de modificação de |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | Selecionar arquivos por data de modificação para |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | Selecione arquivos por data de criação a partir de |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | Selecione arquivos pela data de criação para |
| `-PromptKey` | String | — | — | Named | — | A chave prompt indica qual script de prompt usar |
| `-Prompt` | String | — | — | Named | `''` | A chave prompt indica qual script de prompt usar |
| `-SelectionScript` | String | — | — | Named | — | The `-SelectionScript` parameter. |
| `-SelectionPrompt` | String | — | — | Named | — | Se fornecido, invocará o LLM para fazer a seleção com base no conteúdo do script |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-Priority` | Int32 | — | — | Named | — | Prioridade para este conjunto de refatoração |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Matriz de definições de comandos do PowerShell para usar como ferramentas durante a seleção de LLM |
| `-KeysToSend` | String[] | — | — | Named | `@()` | As teclas para invocar como toques de tecla após abrir o arquivo |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Limpar arquivos deletados |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | Chave para suprimir interação do usuário |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | Ativar a seleção de processamento de arquivos baseada em LLM |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | Mudar para processar todos os arquivos no conjunto de refatoração |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | Alternar para repetir seleções de LLM com falha |
| `-Clear` | SwitchParameter | — | — | Named | — | Limpar todos os arquivos do conjunto de refatoração |
| `-ClearLog` | SwitchParameter | — | — | Named | — | Limpar o log do conjunto de refatoração |
| `-Reset` | SwitchParameter | — | — | Named | — | Comece desde o início do conjunto de refatoração |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Reiniciar todas as seleções de LLM |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Marcar todos os arquivos como refatorados |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Refaça a última refatoração |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | Reprocessar automaticamente arquivos modificados desde a última atualização |
| `-Code` | SwitchParameter | — | — | Named | — | O IDE para abrir o arquivo |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Abrir no Visual Studio |
| `-Speak` | SwitchParameter | — | — | Named | — | Translate the following text into pt-BR. IMPORTANT TRANSLATION RULES:
1. Analyze the input format first - it could be code, markup, structured data, or plain text.
2. Preserve all syntax, structure, and technical elements like programming keywords, tags, or data format specific elements.
3. Only translate human-readable text portions like comments, string values, documentation, or natural language content.
4. Maintain exact formatting, indentation, and line breaks.
5. Never translate identifiers, function names, variables, or technical keywords.

You are a helpful assistant designed to output JSON.
## Response Format

Reply with JSON object ONLY. |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Selecionar configuração com base na RAM disponível do sistema |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Selecione a configuração pela RAM de GPU disponível |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |

## Related Links

- [Update-Refactor on GitHub](https://github.com/genXdev/genXdev)
