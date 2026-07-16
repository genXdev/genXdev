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
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | The name of the refactor, accepts wildcards *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | El conjunto de refactorización a actualizar *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | Nombres de archivos a añadir |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | Nombres de archivos a eliminar |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | Seleccionar archivos por fecha de modificación desde |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | Seleccionar archivos por fecha de modificación para |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | Seleccionar archivos por fecha de creación desde |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | Select files by creation date to |
| `-PromptKey` | String | — | — | Named | — | La clave del prompt indica qué script de prompt usar |
| `-Prompt` | String | — | — | Named | `''` | La clave del prompt indica qué script de prompt usar |
| `-SelectionScript` | String | — | — | Named | — | Script de PowerShell para la función de seleccionar elementos a refactorizar |
| `-SelectionPrompt` | String | — | — | Named | — | If provided, will invoke LLM to do the selection based on the content of the script |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-Priority` | Int32 | — | — | Named | — | Prioridad para esta refactorización establecida |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools during LLM selection |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Las teclas para invocar como pulsaciones de teclas después de abrir el archivo |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Limpiar archivos eliminados |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | Interruptor para suprimir la interacción del usuario |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | Switch to enable LLM-based file selection processing |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | Switch to process all files in the refactor set |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | Cambiar a reintentar selecciones fallidas de LLM |
| `-Clear` | SwitchParameter | — | — | Named | — | Limpiar todos los archivos del conjunto de refactorización |
| `-ClearLog` | SwitchParameter | — | — | Named | — | Limpiar el registro del conjunto de refactorización |
| `-Reset` | SwitchParameter | — | — | Named | — | Empieza desde el principio del conjunto de refactorización |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Reiniciar todas las selecciones de LLM |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Mark all files as refactored |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Repite la última refactorización |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | Reprocesar automáticamente los archivos modificados desde la última actualización |
| `-Code` | SwitchParameter | — | — | Named | — | El IDE para abrir el archivo en |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Abrir en Visual Studio |
| `-Speak` | SwitchParameter | — | — | Named | — | The next refactor will focus on extracting the payment processing logic into a separate service class. This will involve moving the payment validation, gateway interaction, and receipt generation out of the OrderController into a new PaymentService. The controller will then delegate these responsibilities, improving separation of concerns and testability. |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Seleccionar configuración según la RAM del sistema disponible |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Seleccionar configuración según la RAM de GPU disponible |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Update-Refactor on GitHub](https://github.com/genXdev/genXdev)
