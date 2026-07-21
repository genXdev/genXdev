# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst`

## Synopsis

> Негайно зупиняє будь-яке триваюче виведення перетворення тексту в мовлення.

## Description

Зупиняє всі активні та поставлені в чергу операції синтезу мовлення шляхом скасування як стандартних, так і спеціалізованих операцій мовлення. Це забезпечує негайне припинення будь-яких поточних дій перетворення тексту в мовлення.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/UtcNow.md)
