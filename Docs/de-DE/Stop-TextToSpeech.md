# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> Unterbricht sofort jegliche laufende Text-zu-Sprache-Ausgabe.

## Description

Beendet alle aktiven und in der Warteschlange befindlichen Sprachsynthesen, indem sowohl Standard- als auch benutzerdefinierte Sprachoperationen abgebrochen werden. Dies sorgt für sofortige Stille bei allen laufenden Text-zu-Sprache-Aktivitäten.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/de-DE/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/de-DE/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/de-DE/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/de-DE/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/de-DE/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/de-DE/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/de-DE/UtcNow.md)
