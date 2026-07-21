# Get-IsSpeaking

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `iss`

## Synopsis

> Devuelve true si el motor de texto a voz está hablando.

## Description

Comprueba el estado de los sintetizadores de voz tanto predeterminados como personalizados para determinar si alguno está hablando actualmente. Devuelve true si hay una reproducción de voz en curso, false en caso contrario.

## Syntax

```powershell
Get-IsSpeaking [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-IsSpeaking
```

Devuelve true si el motor de texto a voz está hablando.

### Example 2

```powershell
iss
```

Devuelve true si el motor de texto a voz está hablando (usando alias).

## Related Links

- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/UtcNow.md)
