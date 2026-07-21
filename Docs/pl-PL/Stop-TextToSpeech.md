# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> Natychmiast zatrzymuje trwające odtwarzanie tekstu na mowę.

## Description

Zatrzymuje wszystkie aktywne i oczekujące syntezy mowy, anulując zarówno standardowe, jak i niestandardowe operacje mowy. Zapewnia to natychmiastową ciszę dla wszelkich trwających działań zamiany tekstu na mowę.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/UtcNow.md)
