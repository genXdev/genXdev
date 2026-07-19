# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say

## Synopsis

> Converte texto em fala usando o motor de TTS neural do Microsoft Edge.

## Description

Utiliza o mecanismo TTS neural do Microsoft Edge (via EdgeTTS.DotNet) para converter texto em fala com vozes com som natural. Esta função oferece capacidades flexíveis de conversão de texto em fala com suporte para diferentes vozes, locais, ajustes de prosódia (taxa, volume, tom) e opções de reprodução síncrona/assíncrona. Pode lidar tanto com strings únicas quanto com arrays de texto.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Texto a ser falado *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Nome da voz a ser usada para fala |
| `-Locale` | String | — | — | Named | `$null` | O identificador de localidade do idioma a ser usado, ex.: 'pt-BR' |
| `-Rate` | String | — | — | Named | `$null` | Taxa de fala, ex: "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Nível de volume, ex. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Deslocamento de tom, ex.: "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output the text being spoken to the pipeline |
| `-Wait` | SwitchParameter | — | — | Named | — | Aguardar a fala terminar antes de continuar |

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
