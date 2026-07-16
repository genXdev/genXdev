# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
