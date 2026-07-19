# Start-NextRefactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `nextrefactor

## Synopsis

> Continua ou reinicia uma sessão de refatoração de código.

## Description

Gerencia operações de refatoração de código processando definições de refatoração em ordem de prioridade. Lida com seleção de arquivos, acompanhamento de progresso, tratamento de erros e fornece controle interativo do usuário sobre o processo de refatoração.

## Syntax

```powershell
Start-NextRefactor [[-Name] <String[]>] [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-CleanUpDeletedFiles] [-MarkAllCompleted] [-RedoLast] [-Reset] [-ResetLMSelections] [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | O nome do refatorador aceita curingas 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | Nomes de arquivos a adicionar |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | Nomes de arquivos para remover |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Limpar arquivos deletados |
| `-Reset` | SwitchParameter | — | — | Named | — | Comece desde o início do conjunto de refatoração |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Reiniciar todas as seleções de LLM |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Marcar todos os arquivos como refatorados |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Refaça a última refatoração |
| `-Speak` | SwitchParameter | — | — | Named | — | Translate the following text into pt-BR. IMPORTANT TRANSLATION RULES:
1. Analyze the input format first - it could be code, markup, structured data, or plain text.
2. Preserve all syntax, structure, and technical elements like programming keywords, tags, or data format specific elements.
3. Only translate human-readable text portions like comments, string values, documentation, or natural language content.
4. Maintain exact formatting, indentation, and line breaks.
5. Never translate identifiers, function names, variables, or technical keywords.

You are a helpful assistant designed to output JSON.
## Response Format

Reply with JSON object ONLY. |

## Examples

### Start-NextRefactor -Name "RefactorProject" -Reset -CleanUpDeletedFiles Restarts refactoring for "RefactorProject" and removes deleted files.

```powershell
Start-NextRefactor -Name "RefactorProject" -Reset -CleanUpDeletedFiles
Restarts refactoring for "RefactorProject" and removes deleted files.
```

### nextrefactor -Name "*Test*" -Speak Processes all refactor sets matching "*Test*" pattern with speech enabled.

```powershell
nextrefactor -Name "*Test*" -Speak
Processes all refactor sets matching "*Test*" pattern with speech enabled.
```

## Related Links

- [Start-NextRefactor on GitHub](https://github.com/genXdev/genXdev)
