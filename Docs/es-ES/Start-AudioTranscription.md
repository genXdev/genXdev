# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile`, `transcribe`

## Synopsis

> Transcribe un archivo de audio, un archivo de video o un dispositivo de grabación a texto

## Description

Transcribe un archivo de audio, un archivo de video o un dispositivo de grabación a texto utilizando el modelo de IA Whisper. La función puede manejar varios formatos de audio y video, convertirlos al formato adecuado para la transcripción y, opcionalmente, traducir la salida a un idioma diferente. Admite la salida en formato de subtítulos SRT y varios parámetros de procesamiento de audio para ajustar la calidad de la transcripción.

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | La ruta del archivo de audio o video a transcribir. Si no se proporciona, graba desde el micrófono. |
| `-AudioDevice` | String | — | — | Named | — | Nombre o GUID del dispositivo de audio (admite comodines, selecciona la primera coincidencia) |
| `-LanguageIn` | String | — | — | 1 | — | El idioma que se espera en el audio. |
| `-LanguageOut` | String | — | — | 2 | `$null` | Establece el idioma al que traducir. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Umbral de suma para marcas de tiempo de tokens, valor predeterminado 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | Número máximo de tokens por segmento |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Duración máxima de silencio antes de detener automáticamente la grabación |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Umbral de detección de silencio (0..32767, por defecto 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Número de hilos de CPU a usar, por defecto 0 (automático) |
| `-Temperature` | Single | — | — | Named | `0.5` | Temperatura para el reconocimiento de voz |
| `-TemperatureInc` | Single | — | — | Named | — | Incremento de temperatura |
| `-Prompt` | String | — | — | Named | — | Indicación a utilizar para el modelo |
| `-SuppressRegex` | String | — | — | Named | `$null` | Expresión regular para suprimir tokens de la salida |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio |
| `-MaxDuration` | Object | — | — | Named | — | Duración máxima del audio |
| `-Offset` | Object | — | — | Named | — | Desplazamiento para el audio |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Número máximo de los últimos tokens de texto |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Longitud máxima de segmento |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Iniciar marcas de tiempo en este momento |
| `-LengthPenalty` | Single | — | — | Named | — | Penalización por longitud |
| `-EntropyThreshold` | Single | — | — | Named | — | Umbral de entropía |
| `-LogProbThreshold` | Single | — | — | Named | — | Umbral de probabilidad logarítmica |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Sin umbral de voz |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Si se deben incluir marcas de tiempo de los tokens en la salida |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Si dividir por límites de palabras |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Si ignorar el silencio (afectará las marcas de tiempo) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Si mostrar el progreso |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Si NO suprimir líneas en blanco |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Si se debe usar solo un segmento |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Si mostrar los tokens especiales |
| `-NoContext` | SwitchParameter | — | — | Named | — | .SYNOPSIS
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
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Utilice la estrategia de muestreo por haz |
| `-ModelType` | String | — | — | Named | — | Tipo de modelo Whisper a usar, por defecto LargeV3Turbo |
| `-SRT` | SwitchParameter | — | — | Named | — | Salida en formato SRT. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve objetos en lugar de cadenas |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Si usar la captura de audio del escritorio en lugar de la entrada del micrófono |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Utilice tanto el escritorio como el dispositivo de grabación |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice configuraciones alternativas almacenadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Borrar configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No use configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc. |
| `-VOX` | SwitchParameter | — | — | Named | — | Usa la detección de silencio para detener la grabación automáticamente |

## Examples

### Start-AudioTranscription -Input "C:\path\to\audio.wav" `     -LanguageIn "English" -LanguageOut "French" -SRT

```powershell
Start-AudioTranscription -Input "C:\path\to\audio.wav" `
    -LanguageIn "English" -LanguageOut "French" -SRT
```

### transcribefile "C:\video.mp4" "English"

```powershell
transcribefile "C:\video.mp4" "English"
```

### Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"

```powershell
Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"
```

### Start-AudioTranscription  # Records from microphone when no file specified ##############################################################################

```powershell
Start-AudioTranscription  # Records from microphone when no file specified
##############################################################################
```

## Parameter Details

### `-Input <Object>`

> La ruta del archivo de audio o video a transcribir. Si no se proporciona, graba desde el micrófono.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | `WaveFile`, `FilePath`, `MediaFile` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioDevice <String>`

> Nombre o GUID del dispositivo de audio (admite comodines, selecciona la primera coincidencia)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> El idioma que se espera en el audio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageOut <String>`

> Establece el idioma al que traducir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `$null` |
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
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxTokensPerSegment <Int32>`

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
### `-MaxDurationOfSilence <Object>`

> Duración máxima de silencio antes de detener automáticamente la grabación

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> Umbral de detección de silencio (0..32767, por defecto 30)

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

> Número de hilos de CPU a usar, por defecto 0 (automático)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Single>`

> Temperatura para el reconocimiento de voz

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureInc <Single>`

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
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

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
### `-MaxDuration <Object>`

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
### `-Offset <Object>`

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
### `-MaxLastTextTokens <Int32>`

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
### `-MaxSegmentLength <Int32>`

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
### `-MaxInitialTimestamp <Object>`

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
### `-LengthPenalty <Single>`

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
### `-EntropyThreshold <Single>`

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
### `-LogProbThreshold <Single>`

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
### `-NoSpeechThreshold <Single>`

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
### `-WithTokenTimestamps`

> Si se deben incluir marcas de tiempo de los tokens en la salida

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoreSilence`

> Si ignorar el silencio (afectará las marcas de tiempo)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <String>`

> Tipo de modelo Whisper a usar, por defecto LargeV3Turbo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SRT`

> Salida en formato SRT.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Devuelve objetos en lugar de cadenas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Si usar la captura de audio del escritorio en lugar de la entrada del micrófono

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAndRecordingDevice`

> Utilice tanto el escritorio como el dispositivo de grabación

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

> Borrar configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> No use configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VOX`

> Usa la detección de silencio para detener la grabación automáticamente

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Show-FoundImagesInBrowser.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Update-AllImageMetaData.md)
