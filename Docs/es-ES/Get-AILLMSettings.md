# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Obtiene la configuración de LLM para operaciones de IA en GenXdev.AI.

## Description

Esta función recupera la configuración del LLM (Large Language Model) utilizada por el módulo GenXdev.AI para diversas operaciones de IA. La configuración se recupera de variables de sesión, preferencias persistentes o el archivo JSON de configuración predeterminada, en ese orden de precedencia. La función admite la selección automática de configuración basada en los recursos de memoria del sistema disponibles.

La estrategia de selección de memoria se determina automáticamente según los parámetros Gpu y Cpu proporcionados:
- Si se especifican ambos parámetros Gpu y Cpu: Utiliza memoria combinada de CPU + GPU
- Si solo se especifica el parámetro Gpu: Prefiere memoria de GPU (con respaldo de RAM del sistema)
- Si solo se especifica el parámetro Cpu: Utiliza solo RAM del sistema
- Si no se especifica ningún parámetro: Utiliza memoria combinada de CPU + GPU (valor predeterminado)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | El tipo de consulta LLM para obtener la configuración |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del punto de conexión de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Indica si el endpoint no admite el formato de respuesta json_schema |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Si el punto final no admite la funcionalidad de carga de imágenes |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Si el endpoint no admite la funcionalidad de llamada a herramientas |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice configuraciones alternativas almacenadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Borrar la configuración de la sesión (variable global) antes de recuperarla |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Omitir la configuración de sesión y obtener solo de preferencias o valores predeterminados |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

Obtiene la configuración de LLM para el tipo de consulta SimpleIntelligence (predeterminado).

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

Obtiene la configuración de LLM para el tipo de consulta de Codificación.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

Obtiene la configuración de LLM solo de preferencias o valores predeterminados, ignorando la configuración de la sesión.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Parameter Details

### `-LLMQueryType <String>`

> El tipo de consulta LLM para obtener la configuración

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'SimpleIntelligence'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> El identificador o patrón de modelo a utilizar para operaciones de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> La URL del punto de conexión de la API para operaciones de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> La clave API para operaciones de IA autenticadas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema`

> Indica si el endpoint no admite el formato de respuesta json_schema

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForImageUpload`

> Si el punto final no admite la funcionalidad de carga de imágenes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForToolCalls`

> Si el endpoint no admite la funcionalidad de llamada a herramientas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Utilice configuraciones alternativas almacenadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Borrar la configuración de la sesión (variable global) antes de recuperarla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Ruta de base de datos para archivos de datos de preferencias

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Omitir la configuración de sesión y obtener solo de preferencias o valores predeterminados

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Test-DeepLinkImageFile.md)
