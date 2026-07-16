# New-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `newrefactor

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-Refactor -Name <String> -PromptKey <String> [[-Prompt] <String>] [[-SelectionScript] <String>] [[-SelectionPrompt] <String>] [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoAddModifiedFiles] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilesToAdd <IO.FileInfo[]>] [-KeysToSend <String[]>] [-Model <String>] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | El nombre de este nuevo conjunto de refactorización |
| `-PromptKey` | String | ✅ | — | 1 | — | La clave del prompt indica qué script de prompt usar |
| `-Prompt` | String | — | — | 2 | `''` | Texto de solicitud personalizado para anular la plantilla |
| `-SelectionScript` | String | — | — | 3 | — | Script de PowerShell para seleccionar elementos a refactorizar |
| `-SelectionPrompt` | String | — | — | 4 | — | Guía de selección de LLM |
| `-LLMQueryType` | String | — | — | 5 | `'Coding'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Seleccionar configuración según la RAM del sistema disponible |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Seleccionar configuración según la RAM de GPU disponible |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-Priority` | Int32 | — | — | Named | `0` | Prioridad para esta refactorización establecida |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions for LLM tools |
| `-FilesToAdd` | IO.FileInfo[] | — | — | Named | `@()` | Array de archivos a procesar |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-AutoAddModifiedFiles` | SwitchParameter | — | — | Named | — | Añadirá automáticamente los archivos modificados a la cola |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir archivos en Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Abrir en Visual Studio |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Keystrokes to send after opening files |

## Related Links

- [New-Refactor on GitHub](https://github.com/genXdev/genXdev)
