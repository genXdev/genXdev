# Get-IsSpeaking

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `iss`

## Synopsis

> Zwraca prawdę, jeśli mechanizm zamiany tekstu na mowę mówi.

## Description

Sprawdza stan zarówno domyślnego, jak i dostosowanego syntezatora mowy, aby określić, czy któryś z nich aktualnie mówi. Zwraca wartość true, jeśli mowa jest w toku, w przeciwnym razie false.

## Syntax

```powershell
Get-IsSpeaking [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-IsSpeaking
```

Zwraca prawdę, jeśli mechanizm zamiany tekstu na mowę mówi.

### Example 2

```powershell
iss
```

Zwraca wartość prawda, jeśli aparat zamiany tekstu na mowę mówi (przy użyciu aliasu).

## Related Links

- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/UtcNow.md)
