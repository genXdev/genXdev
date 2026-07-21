# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> Segera menghentikan semua output text-to-speech yang sedang berlangsung.

## Description

Menghentikan semua sintesis suara yang aktif dan dalam antrean dengan membatalkan operasi suara standar maupun kustom. Ini memberikan keheningan segera untuk setiap aktivitas teks-ke-ucapan yang sedang berlangsung.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/UtcNow.md)
