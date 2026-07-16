# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)
