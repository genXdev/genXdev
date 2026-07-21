# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Convierte texto a voz utilizando el motor TTS neuronal de Microsoft Edge.

## Description

Utiliza el motor TTS neuronal de Microsoft Edge (a través de EdgeTTS.DotNet) para convertir texto
a voz con voces de sonido natural. Esta función proporciona capacidades flexibles
de conversión de texto a voz con soporte para diferentes voces, configuraciones regionales,
ajustes de prosodia (velocidad, volumen, tono) y opciones de reproducción síncrona/asíncrona.
Puede manejar tanto cadenas individuales como matrices de texto.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Texto a ser hablado *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Nombre de la voz que se usará para el habla |
| `-Locale` | String | — | — | Named | `$null` | El identificador de configuración regional a usar, por ejemplo, 'es-ES' |
| `-Rate` | String | — | — | Named | `$null` | Ritmo del habla, por ejemplo, «+0 %», «-20 %», «+50 %» |
| `-Volume` | String | — | — | Named | `$null` | Nivel de volumen, p. ej. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Cambio de tono, ej. "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Envía el texto que se está leyendo a la canalización |
| `-Wait` | SwitchParameter | — | — | Named | — | Esperar a que se complete el habla antes de continuar |

## Examples

### Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait

```powershell
Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait
```

### "Hello World" | say

```powershell
"Hello World" | say
```

### say "Hello World" -Rate "+50%" -Pitch "-5Hz"

```powershell
say "Hello World" -Rate "+50%" -Pitch "-5Hz"
```

## Parameter Details

### `-Lines <String[]>`

> Texto a ser hablado

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | strings |

<hr/>
### `-VoiceName <String>`

> Nombre de la voz que se usará para el habla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Locale <String>`

> El identificador de configuración regional a usar, por ejemplo, 'es-ES'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Rate <String>`

> Ritmo del habla, por ejemplo, «+0 %», «-20 %», «+50 %»

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Volume <String>`

> Nivel de volumen, p. ej. "+0%", "-25%", "+100%"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Pitch <String>`

> Cambio de tono, ej. "+0Hz", "-10Hz", "+20Hz"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Envía el texto que se está leyendo a la canalización

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Wait`

> Esperar a que se complete el habla antes de continuar

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/UtcNow.md)
