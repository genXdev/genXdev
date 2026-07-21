# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> Arrête immédiatement toute sortie de synthèse vocale en cours.

## Description

Arrête toutes les opérations de synthèse vocale actives et en attente en annulant les opérations vocales standard et personnalisées. Cela permet un silence immédiat pour toute activité de texte-parole en cours.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNow.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRsecondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRsidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRUtcNow.md)
