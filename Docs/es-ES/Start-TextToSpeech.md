# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say

## Synopsis

> Convierte texto a voz usando el motor neuronal TTS de Microsoft Edge.

## Description

Utiliza el motor de TTS neuronal de Microsoft Edge (a través de EdgeTTS.DotNet) para convertir texto a voz con voces de sonido natural. Esta función proporciona capacidades flexibles de texto a voz con soporte para diferentes voces, configuraciones regionales, ajustes de prosodia (velocidad, volumen, tono) y opciones de reproducción síncrona/asíncrona. Puede manejar tanto cadenas individuales como matrices de texto.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Texto a ser hablado *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Nombre de la voz a utilizar para el habla |
| `-Locale` | String | — | — | Named | `$null` | El identificador de configuración regional a utilizar, por ejemplo, 'es-ES' |
| `-Rate` | String | — | — | Named | `$null` | Velocidad del habla, p. ej. "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Nivel de volumen, ej. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Desplazamiento de tono, p. ej., "+0 Hz", "-10 Hz", "+20 Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output the text being spoken to the pipeline |
| `-Wait` | SwitchParameter | — | — | Named | — | Espera a que el discurso termine antes de continuar |

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

## Related Links

- [Start-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)
