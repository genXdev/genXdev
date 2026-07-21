# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> Stopt onmiddellijk elke lopende tekst-naar-spraak uitvoer.

## Description

Stopt alle actieve en in de wachtrij staande spraaksynthese door zowel standaard als aangepaste spraakbewerkingen te annuleren. Dit zorgt voor directe stilte bij alle lopende tekst-naar-spraakactiviteiten.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/UtcNow.md)
