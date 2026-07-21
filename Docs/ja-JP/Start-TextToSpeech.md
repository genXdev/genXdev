# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Microsoft EdgeのニューラルTTSエンジンを使用してテキストを音声に変換します。

## Description

Microsoft EdgeのニューラルTTSエンジン（EdgeTTS.DotNet経由）を使用して、自然な音声でテキストを音声に変換します。この関数は、異なる音声、ロケール、韻律調整（速度、音量、ピッチ）、同期/非同期再生オプションをサポートする柔軟なテキスト読み上げ機能を提供します。単一の文字列とテキストの配列の両方を処理できます。

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | 読み上げるテキスト *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | 音声に使用する音声の名前 |
| `-Locale` | String | — | — | Named | `$null` | 使用する言語ロケールID（例：'en-US'） |
| `-Rate` | String | — | — | Named | `$null` | 音声速度（例：「+0%」「-20%」「+50%」） |
| `-Volume` | String | — | — | Named | `$null` | 音量レベル（例："+0%"、"-25%"、"+100%"） |
| `-Pitch` | String | — | — | Named | `$null` | ピッチシフト、例: "+0Hz"、"-10Hz"、"+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | パイプラインに出力されているテキスト |
| `-Wait` | SwitchParameter | — | — | Named | — | 音声が完了するのを待機する |

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

> 読み上げるテキスト

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

> 音声に使用する音声の名前

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

> 使用する言語ロケールID（例：'en-US'）

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

> 音声速度（例：「+0%」「-20%」「+50%」）

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

> 音量レベル（例："+0%"、"-25%"、"+100%"）

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

> ピッチシフト、例: "+0Hz"、"-10Hz"、"+20Hz"

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

> パイプラインに出力されているテキスト

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

> 音声が完了するのを待機する

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/UtcNow.md)
