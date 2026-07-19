# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Obtiene todas las configuraciones predeterminadas disponibles del modelo de lenguaje para operaciones de IA en GenXdev.AI.

## Description

Recupera el conjunto completo de configuraciones predeterminadas del Modelo de Lenguaje Grande (LLM) configuradas para operaciones de IA. Los resultados se pueden filtrar por tipo de consulta, identificador de modelo, punto final de API o clave de API. Admite la recuperación basada en sesión y en preferencias persistentes, con opciones para borrar el estado de la sesión u omitirlo por completo para leer directamente desde las preferencias almacenadas.

## Syntax

```powershell
Get-AIDefaultLLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | El tipo de consulta LLM para obtener la configuración |
| `-Model` | String | — | — | Named | — | Filtrar configuraciones por identificador o patrón de modelo |
| `-ApiEndpoint` | String | — | — | Named | — | Filtrar configuraciones por URL de endpoint de API |
| `-ApiKey` | String | — | — | Named | — | Filtrar configuraciones por clave API |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa configuraciones alternativas guardadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Omitir configuración de sesión y obtener solo de preferencias o valores predeterminados |

## Examples

### Get-AIDefaultLLMSettings -LLMQueryType "Coding"

```powershell
Get-AIDefaultLLMSettings -LLMQueryType "Coding"
```

Obtiene todas las configuraciones predeterminadas disponibles para el tipo de consulta de codificación.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)
