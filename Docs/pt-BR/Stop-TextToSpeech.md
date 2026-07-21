# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> Interrompe imediatamente qualquer saída de texto em fala em andamento.

## Description

Interrompe toda a síntese de fala ativa e na fila, cancelando operações de fala padrão e personalizadas. Isso proporciona silêncio imediato para quaisquer atividades de texto-para-fala em andamento.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/UtcNow.md)
