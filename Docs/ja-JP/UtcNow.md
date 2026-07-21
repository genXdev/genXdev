# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> 現在のUTC（協定世界時）の日付と時刻を取得します。

## Description

現在のUTC日時をSystem.DateTimeオブジェクトとして返します。この関数は、異なるシステムやタイムゾーン間でUTC時刻を取得するための標準化された方法を提供します。返されるDateTimeオブジェクトは、タイムスタンプの同期、ログ記録、およびタイムゾーンをまたがる操作に使用できます。

## Syntax

```powershell
UtcNow [<CommonParameters>]
```

## Examples

### $currentUtc = UtcNow Returns the current UTC time as a DateTime object.

```powershell
$currentUtc = UtcNow
Returns the current UTC time as a DateTime object.
```

### $timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss") Gets the current UTC time and formats it as a string.

```powershell
$timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss")
Gets the current UTC time and formats it as a string.
```

## Outputs

- `DateTime`

## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Stop-TextToSpeech.md)
