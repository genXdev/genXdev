# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Obtiene la configuración de LLM para operaciones de IA en GenXdev.AI.

## Description

Esta función recupera la configuración del LLM (Modelo de Lenguaje Grande) utilizada por el módulo GenXdev.AI para varias operaciones de IA. La configuración se recupera de variables de sesión, preferencias persistentes o el archivo de configuración predeterminado JSON, en ese orden de precedencia. La función admite la selección automática de configuración basada en los recursos de memoria del sistema disponibles.

La estrategia de selección de memoria se determina automáticamente según los parámetros Gpu y Cpu proporcionados:
- Si se especifican ambos parámetros Gpu y Cpu: Utiliza memoria combinada CPU + GPU
- Si solo se especifica el parámetro Gpu: Prefiere memoria GPU (con respaldo de RAM del sistema)
- Si solo se especifica el parámetro Cpu: Utiliza solo RAM del sistema
- Si no se especifica ningún parámetro: Utiliza memoria combinada CPU + GPU (predeterminado)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | El tipo de consulta LLM para obtener la configuración |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | yes |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Si el endpoint no soporta la funcionalidad de carga de imágenes |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support tool calling functionality |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa configuraciones alternativas guardadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Omitir configuración de sesión y obtener solo de preferencias o valores predeterminados |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

Obtiene la configuración de LLM para el tipo de consulta SimpleIntelligence (por defecto).

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

Obtiene la configuración de LLM para el tipo de consulta Coding.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

Obtiene la configuración del LLM desde las preferencias o valores predeterminados únicamente, ignorando la configuración de la sesión.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
