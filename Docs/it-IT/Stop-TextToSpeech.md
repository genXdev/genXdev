# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> Interrompe immediatamente qualsiasi output di sintesi vocale in corso.

## Description

Interrompe tutte le attività di sintesi vocale attive e in coda, annullando sia le operazioni vocali standard che quelle personalizzate. Ciò garantisce un silenzio immediato per qualsiasi attività di text-to-speech in corso.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/UtcNow.md)
