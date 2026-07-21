# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> Devam eden herhangi bir metin-konuşma çıktısını anında durdurur.

## Description

Tüm aktif ve sıradaki konuşma sentezini durdurur, hem standart hem de özelleştirilmiş konuşma işlemlerini iptal eder. Bu, devam eden herhangi bir metin-konuşma etkinliği için anlık bir sessizlik sağlar.

## Syntax

```powershell
Stop-TextToSpeech [<CommonParameters>]
```

## Examples

### PS C:\> Stop-TextToSpeech Immediately stops any ongoing speech

```powershell
PS C:\> Stop-TextToSpeech
Immediately stops any ongoing speech
```

### PS C:\> say "Hello world"; sst Starts speaking but gets interrupted immediately

```powershell
PS C:\> say "Hello world"; sst
Starts speaking but gets interrupted immediately
```

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
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/UtcNow.md)
