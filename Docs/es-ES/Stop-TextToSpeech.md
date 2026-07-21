# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> Detiene inmediatamente cualquier salida de texto a voz en curso.

## Description

Detiene toda la síntesis de voz activa y en cola cancelando tanto las operaciones de voz estándar como las personalizadas. Esto proporciona un silencio inmediato para cualquier actividad de texto a voz en curso.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/UtcNow.md)
