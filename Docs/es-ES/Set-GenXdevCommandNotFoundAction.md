# Set-GenXdevCommandNotFoundAction

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Configura el manejo personalizado de comandos no encontrados con asistencia opcional de IA.

## Description

Configura PowerShell para manejar comandos desconocidos navegando a directorios o usando IA para interpretar la intención del usuario. El controlador primero intenta cualquier controlador de comando no encontrado existente, luego verifica si el comando es una ruta válida para navegación. La resolución mediante IA solo se habilita cuando se especifica explícitamente el conmutador -UseAIResolve.

## Syntax

```powershell
Set-GenXdevCommandNotFoundAction [[-LLMQueryType] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-NoPrompt] [-UseAIResolve] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'Coding'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | 1 | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | 2 | — | La URL del punto de conexión de la API para operaciones de IA |
| `-ApiKey` | String | — | — | 3 | — | La clave API para operaciones de IA autenticadas |
| `-NoSupportForJsonSchema` | String | — | — | 4 | — | Indica que el LLM no tiene soporte para esquemas JSON |
| `-UseAIResolve` | SwitchParameter | — | — | Named | — | Habilita la resolución de comandos desconocidos mediante IA. |
| `-NoPrompt` | SwitchParameter | — | — | Named | — | Omita el mensaje de intención y utilice el nombre del comando directamente como consulta de IA (requiere -UseAIResolve). |

## Examples

### Set-GenXdevCommandNotFoundAction -UseAIResolve

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve
```

Habilita la resolución de IA con indicaciones interactivas para comandos desconocidos.

### Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt
```

@{response=Habilita la resolución de IA donde el comando desconocido se envía directamente a la IA sin preguntar al usuario qué quería decir.}

## Parameter Details

### `-LLMQueryType <String>`

> El tipo de consulta de LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> El identificador o patrón de modelo a utilizar para operaciones de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
| **Position?** | 2 |
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
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Indica que el LLM no tiene soporte para esquemas JSON

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseAIResolve`

> Habilita la resolución de comandos desconocidos mediante IA.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoPrompt`

> Omita el mensaje de intención y utilice el nombre del comando directamente como consulta de IA (requiere -UseAIResolve).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AILLMSettings.md)
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
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Test-DeepLinkImageFile.md)
