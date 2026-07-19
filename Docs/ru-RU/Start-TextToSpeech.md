# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say

## Synopsis

> Преобразует текст в речь с помощью нейронного TTS-движка Microsoft Edge.

## Description

Использует нейронный TTS-движок Microsoft Edge (через EdgeTTS.DotNet) для преобразования текста в речь с естественным звучанием голосов. Эта функция предоставляет гибкие возможности преобразования текста в речь с поддержкой различных голосов, языковых стандартов, регулировки просодии (темп, громкость, высота тона) и синхронного/асинхронного воспроизведения. Она может обрабатывать как отдельные строки, так и массивы текста.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Text to be spoken *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Название голоса для синтеза речи |
| `-Locale` | String | — | — | Named | `$null` | Используемый идентификатор языкового стандарта, например 'ru-RU' |
| `-Rate` | String | — | — | Named | `$null` | Скорость речи, например: «+0%», «-20%», «+50%». |
| `-Volume` | String | — | — | Named | `$null` | Уровень громкости, например, "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Pitch shift, e.g. "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output the text being spoken to the pipeline |
| `-Wait` | SwitchParameter | — | — | Named | — | Подождите завершения речи, прежде чем продолжить |

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
