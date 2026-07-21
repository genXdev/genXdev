# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Перетворює текст на мовлення за допомогою нейронного движка TTS Microsoft Edge.

## Description

Використовує нейронний механізм TTS Microsoft Edge (через EdgeTTS.DotNet) для перетворення тексту на мовлення з природним звучанням голосів. Ця функція забезпечує гнучкі можливості перетворення тексту на мовлення з підтримкою різних голосів, локалів, налаштувань просодії (темп, гучність, висота тону) та синхронних/асинхронних варіантів відтворення. Вона може обробляти як окремі рядки, так і масиви тексту.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Текст для вимови *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Назва голосу для використання у мові |
| `-Locale` | String | — | — | Named | `$null` | Ідентифікатор локалі мови для використання, наприклад 'uk-UA'. |
| `-Rate` | String | — | — | Named | `$null` | Швидкість мовлення, напр., "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Рівень гучності, наприклад, "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Зсув висоти тону, наприклад "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Вивести текст, який передається в конвеєр |
| `-Wait` | SwitchParameter | — | — | Named | — | Зачекайте, поки мовлення завершиться, перед тим як продовжувати. |

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

> Текст для вимови

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

> Назва голосу для використання у мові

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

> Ідентифікатор локалі мови для використання, наприклад 'uk-UA'.

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

> Швидкість мовлення, напр., "+0%", "-20%", "+50%"

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

> Рівень гучності, наприклад, "+0%", "-25%", "+100%"

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

> Зсув висоти тону, наприклад "+0Hz", "-10Hz", "+20Hz"

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

> Вивести текст, який передається в конвеєр

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

> Зачекайте, поки мовлення завершиться, перед тим як продовжувати.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/UtcNow.md)
