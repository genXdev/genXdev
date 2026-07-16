# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Start-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)
