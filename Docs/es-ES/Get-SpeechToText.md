# Get-SpeechToText

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Convierte archivos de audio a texto usando el modelo de reconocimiento de voz Whisper de OpenAI.

## Description

Procesa archivos de audio y convierte el habla en texto utilizando la biblioteca Whisper.NET, que implementa el sistema de reconocimiento automático del habla (ASR) Whisper de OpenAI. Admite varios idiomas, capacidades de traducción y diversas configuraciones de calidad de transcripción.

## Syntax

```powershell
Get-SpeechToText -Input <Object> [-AudioContextSize <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-LanguageIn <String>] [-LengthPenalty <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-LogProbThreshold <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-MaxDuration <Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-MaxInitialTimestamp <Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-MaxLastTextTokens <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-MaxSegmentLength <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-MaxTokensPerSegment <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModelFileDirectoryPath <String>] [-ModelType <Whisper.net.Ggml.GgmlType>] [-NoContext] [-NoSpeechThreshold <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-Offset <Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-Passthru] [-PrintSpecialTokens] [-Prompt <String>] [-SingleSegmentOnly] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-TemperatureInc <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-TokenTimestampsSumThreshold <Single>] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [-WithTranslate] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Ruta al directorio del archivo del modelo |
| `-Input` | Object | ✅ | ✅ (ByValue) | 0 | — | Ruta de archivo de audio, objeto FileInfo o cualquier formato de audio compatible con Whisper. |
| `-LanguageIn` | String | — | — | Named | — | Establece el idioma de entrada a detectar, cuyo valor predeterminado es 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Establece el idioma de salida |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperatura para la detección de voz |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incremento de temperatura |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Sin umbral de voz |
| `-Prompt` | String | — | — | Named | — | Indicación a utilizar para el modelo |
| `-SuppressRegex` | String | — | — | Named | — | Expresión regular para suprimir tokens de la salida |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Umbral de suma para marcas de tiempo de tokens, valor predeterminado 0.5 |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Número máximo de tokens por segmento |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Tamaño del contexto de audio |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Duración máxima del audio |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Desplazamiento para el audio |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Número máximo de los últimos tokens de texto |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Longitud máxima de segmento |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Iniciar marcas de tiempo en este momento |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Penalización por longitud |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Umbral de entropía |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Umbral de probabilidad logarítmica |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Tipo de modelo Whisper a usar, por defecto LargeV3Turbo |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Devuelve objetos en lugar de cadenas |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Si incluir marcas de tiempo de los tokens |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Si dividir por límites de palabras |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Si traducir el resultado |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Si mostrar el progreso |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Si NO suprimir líneas en blanco |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Si se debe usar solo un segmento |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Si mostrar los tokens especiales |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | .SYNOPSIS
    The Get-Item cmdlet gets the item at the specified location.
    
    For example, Get-Item . gets the current directory object. 
    Get-Item C: gets the C: drive object. 
    Get-Item C:\\Windows gets the C:\\Windows object. 
    
    Get-Item works with wildcards in the Path but only returns the item at the end of the path. 
    To get child items, use Get-ChildItem. 
    
    Get-Item can be configured to get items from other providers, such as the registry, 
    certificate store, or environment variables.

.DESCRIPTION
    The Get-Item cmdlet gets the item at the specified location. 
    It does not get the contents of the item at the location unless you use a wildcard character 
    to request all the contents of the item.
    
    The provider used by Get-Item determines the type of item that is returned. 
    For example, in the file system, Get-Item gets files and folders. 
    In the registry, Get-Item gets registry keys. 
    
    To get the items in a location, such as the files in a folder, use Get-ChildItem.

.EXAMPLE
    PS C:> Get-Item .
    
    Description
    -----------
    This command gets the current directory. 
    The dot (.) represents the item at the current location (not its contents).

.EXAMPLE
    PS C:> Get-Item *
    
    Description
    -----------
    This command gets all the items in the current directory. 
    The wildcard character (*) represents all the contents of the current item.

.EXAMPLE
    PS C:> Get-Item -Path C:\\Windows\\*.* -Exclude w*
    
    Description
    -----------
    This command gets items in the C:\\Windows directory whose names include a dot (.) 
    but do not start with w.

.EXAMPLE
    PS C:> Get-Item -Path HKLM:\\Software\\Microsoft\\Windows\\CurrentVersion\\App Paths
    
    Description
    -----------
    This command gets the specified registry key. It does not get registry entries 
    or other registry keys because the Path parameter specifies only one key. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Utilice la estrategia de muestreo por haz |

## Examples

### Example 1

```powershell
Get-SpeechToText -Input "C:\audio\recording.wav"
```

Transcribe un archivo de audio a texto usando la configuración predeterminada.

### Example 2

```powershell
Get-ChildItem "C:\audio\*.wav" | Get-SpeechToText
```

Transcribe todos los archivos WAV en un directorio.

### Example 3

```powershell
Get-SpeechToText -Input "audio.mp3" -LanguageIn "es" -WithTranslate
```

Transcribe audio en español y lo traduce al inglés.

### Example 4

```powershell
Get-SpeechToText -Input "recording.wav" -Passthru -WithTokenTimestamps
```

Devuelve objetos SegmentData con información de tiempo precisa.

## Parameter Details

### `-ModelFileDirectoryPath <String>`

> Ruta al directorio del archivo del modelo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Input <Object>`

> Ruta de archivo de audio, objeto FileInfo o cualquier formato de audio compatible con Whisper.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | `WaveFile` |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> Establece el idioma de entrada a detectar, cuyo valor predeterminado es 'en'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Establece el idioma de salida

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Temperatura para la detección de voz

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureInc <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Incremento de temperatura

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Sin umbral de voz

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> Indicación a utilizar para el modelo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Expresión regular para suprimir tokens de la salida

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TokenTimestampsSumThreshold <Single>`

> Umbral de suma para marcas de tiempo de tokens, valor predeterminado 0.5

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxTokensPerSegment <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Número máximo de tokens por segmento

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Tamaño del contexto de audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDuration <Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Duración máxima del audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Offset <Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Desplazamiento para el audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastTextTokens <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Número máximo de los últimos tokens de texto

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSegmentLength <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Longitud máxima de segmento

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxInitialTimestamp <Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Iniciar marcas de tiempo en este momento

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Penalización por longitud

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Umbral de entropía

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Umbral de probabilidad logarítmica

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <Whisper.net.Ggml.GgmlType>`

> Tipo de modelo Whisper a usar, por defecto LargeV3Turbo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `Tiny` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Passthru`

> Devuelve objetos en lugar de cadenas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithTokenTimestamps`

> Si incluir marcas de tiempo de los tokens

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SplitOnWord`

> Si dividir por límites de palabras

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithTranslate`

> Si traducir el resultado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithProgress`

> Si mostrar el progreso

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSuppressBlank`

> Si NO suprimir líneas en blanco

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleSegmentOnly`

> Si se debe usar solo un segmento

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PrintSpecialTokens`

> Si mostrar los tokens especiales

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> .SYNOPSIS
    The Get-Item cmdlet gets the item at the specified location.
    
    For example, Get-Item . gets the current directory object. 
    Get-Item C: gets the C: drive object. 
    Get-Item C:\\Windows gets the C:\\Windows object. 
    
    Get-Item works with wildcards in the Path but only returns the item at the end of the path. 
    To get child items, use Get-ChildItem. 
    
    Get-Item can be configured to get items from other providers, such as the registry, 
    certificate store, or environment variables.

.DESCRIPTION
    The Get-Item cmdlet gets the item at the specified location. 
    It does not get the contents of the item at the location unless you use a wildcard character 
    to request all the contents of the item.
    
    The provider used by Get-Item determines the type of item that is returned. 
    For example, in the file system, Get-Item gets files and folders. 
    In the registry, Get-Item gets registry keys. 
    
    To get the items in a location, such as the files in a folder, use Get-ChildItem.

.EXAMPLE
    PS C:> Get-Item .
    
    Description
    -----------
    This command gets the current directory. 
    The dot (.) represents the item at the current location (not its contents).

.EXAMPLE
    PS C:> Get-Item *
    
    Description
    -----------
    This command gets all the items in the current directory. 
    The wildcard character (*) represents all the contents of the current item.

.EXAMPLE
    PS C:> Get-Item -Path C:\\Windows\\*.* -Exclude w*
    
    Description
    -----------
    This command gets items in the C:\\Windows directory whose names include a dot (.) 
    but do not start with w.

.EXAMPLE
    PS C:> Get-Item -Path HKLM:\\Software\\Microsoft\\Windows\\CurrentVersion\\App Paths
    
    Description
    -----------
    This command gets the specified registry key. It does not get registry entries 
    or other registry keys because the Path parameter specifies only one key.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Utilice la estrategia de muestreo por haz

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AILLMSettings.md)
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
