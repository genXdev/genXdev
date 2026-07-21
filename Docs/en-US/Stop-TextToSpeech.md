# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> Immediately stops any ongoing text-to-speech output.

## Description

Halts all active and queued speech synthesis by canceling both standard and
customized speech operations. This provides an immediate silence for any ongoing
text-to-speech activities.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/UtcNow.md)
