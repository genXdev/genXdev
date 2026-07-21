# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Преобразует текст в речь с помощью нейронного движка TTS Microsoft Edge.

## Description

Использует нейронный TTS-движок Microsoft Edge (через EdgeTTS.DotNet) для преобразования текста в речь с естественно звучащими голосами. Эта функция предоставляет гибкие возможности преобразования текста в речь с поддержкой различных голосов, локалей, настроек просодии (скорость, громкость, высота тона) и синхронных/асинхронных вариантов воспроизведения. Она может обрабатывать как одиночные строки, так и массивы текста.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Текст для произнесения *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Имя голоса для использования в речи |
| `-Locale` | String | — | — | Named | `$null` | Используемый языковой код, например 'ru-RU' |
| `-Rate` | String | — | — | Named | `$null` | Скорость речи, например: «+0%», «-20%», «+50%» |
| `-Volume` | String | — | — | Named | `$null` | Уровень громкости, например "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Сдвиг высоты тона, например "+0 Гц", "-10 Гц", "+20 Гц" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Выводит текст, произносимый в канал |
| `-Wait` | SwitchParameter | — | — | Named | — | Дождитесь завершения речи перед продолжением |

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

> Текст для произнесения

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

> Имя голоса для использования в речи

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

> Используемый языковой код, например 'ru-RU'

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

> Скорость речи, например: «+0%», «-20%», «+50%»

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

> Уровень громкости, например "+0%", "-25%", "+100%"

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

> Сдвиг высоты тона, например "+0 Гц", "-10 Гц", "+20 Гц"

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

> Выводит текст, произносимый в канал

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

> Дождитесь завершения речи перед продолжением

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/UtcNow.md)
