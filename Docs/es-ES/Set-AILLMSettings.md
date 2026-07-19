# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Establece la configuración del LLM para las operaciones de IA en GenXdev.AI.

## Description

Este f        [int] $TimeoutSeconds,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Si el endpoint no admite el formato de respuesta json_schema'
        )]
        [switch] $NoSupportForJsonSchema,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Si el endpoint no admite la funcionalidad de carga de imágenes'
        )]
        [switch] $NoSupportForImageUpload,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Si el endpoint no admite la funcionalidad de llamada a herramientas'
        )]
        [switch] $NoSupportForToolCalls,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Almacenar la configuración solo en la sesión actual sin ' +
                'persistir')
        )]
        [switch] $SessionOnly,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Limpiar la configuración alternativa almacenada en sesión para las ' +
                'preferencias de IA')
        )]
        [switch] $ClearSession,es la configuración del LLM (Modelo de Lenguaje Grande) utilizada por el
módulo GenXdev.AI para varias operaciones de IA. La configuración se puede almacenar de forma persistente
en las preferencias (predeterminado), solo en la sesión actual (usando -SessionOnly), o
limpiarse de la sesión (usando -ClearSession). La función valida que se proporcione al menos
un parámetro de configuración a menos que se estén limpiando los ajustes de sesión.

## Syntax

```powershell
Set-AILLMSettings -LLMQueryType <String> [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [-ClearSession] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | ✅ | — | 0 | — | El tipo de consulta de LLM |
| `-Model` | String | — | — | 1 | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | 7 | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | 8 | — | La clave API para operaciones de IA autenticadas |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | yes |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Si el endpoint no soporta la funcionalidad de carga de imágenes |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support tool calling functionality |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"

```powershell
Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"
```

Configura de forma persistente los ajustes de LLM para el tipo de consulta de codificación en las preferencias.

### Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly

```powershell
Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly
```

Establece la configuración del LLM solo para SimpleIntelligence en la sesión actual.

### Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession

```powershell
Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession
```

Borra la configuración de LLM de sesión para el tipo de consulta Imágenes sin afectar las preferencias persistentes.

### Set-AILLMSettings "Coding" "*Qwen*14B*"

```powershell
Set-AILLMSettings "Coding" "*Qwen*14B*"
```

Establece la configuración del LLM para el tipo de consulta de Codificación usando parámetros posicionales.
##############################################################################

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
