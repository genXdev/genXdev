# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Konwertuje tekst na mowę za pomocą neuralnego silnika TTS firmy Microsoft Edge.

## Description

Używa neuralnego silnika TTS Microsoft Edge (poprzez EdgeTTS.DotNet) do konwersji tekstu na mowę z naturalnie brzmiącymi głosami. Ta funkcja zapewnia elastyczne możliwości zamiany tekstu na mowę z obsługą różnych głosów, ustawień regionalnych, regulacji prozodii (tempo, głośność, wysokość) oraz opcji odtwarzania synchronicznego/asynchronicznego. Może obsługiwać zarówno pojedyncze ciągi znaków, jak i tablice tekstu.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Tekst do wypowiedzenia *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Nazwa głosu do użycia podczas mowy |
| `-Locale` | String | — | — | Named | `$null` | Identyfikator ustawień regionalnych języka do użycia, np. 'pl-PL' |
| `-Rate` | String | — | — | Named | `$null` | Szybkość mowy, np. „+0%”, „-20%”, „+50%” |
| `-Volume` | String | — | — | Named | `$null` | Poziom głośności, np. „+0%”, „-25%”, „+100%” |
| `-Pitch` | String | — | — | Named | `$null` | Przesunięcie tonu, np. „+0 Hz”, „-10 Hz”, „+20 Hz” |
| `-PassThru` | SwitchParameter | — | — | Named | — | Wyprowadź tekst mówiony do potoku |
| `-Wait` | SwitchParameter | — | — | Named | — | Poczekaj, aż mowa zakończy się przed kontynuowaniem |

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

> Tekst do wypowiedzenia

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

> Nazwa głosu do użycia podczas mowy

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

> Identyfikator ustawień regionalnych języka do użycia, np. 'pl-PL'

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

> Szybkość mowy, np. „+0%”, „-20%”, „+50%”

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

> Poziom głośności, np. „+0%”, „-25%”, „+100%”

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

> Przesunięcie tonu, np. „+0 Hz”, „-10 Hz”, „+20 Hz”

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

> Wyprowadź tekst mówiony do potoku

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

> Poczekaj, aż mowa zakończy się przed kontynuowaniem

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/UtcNow.md)
