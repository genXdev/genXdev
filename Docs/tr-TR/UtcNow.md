# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Geçerli UTC (Eşgüdümlü Evrensel Zaman) tarihini ve saatini alır.

## Description

Geçerli UTC tarihini ve saatini bir System.DateTime nesnesi olarak döndürür. Bu işlev, farklı sistemler ve saat dilimleri arasında UTC saatini almak için standart bir yol sağlar. Döndürülen DateTime nesnesi, zaman damgası senkronizasyonu, günlükleme ve saat dilimleri arası işlemler için kullanılabilir.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Stop-TextToSpeech.md)
