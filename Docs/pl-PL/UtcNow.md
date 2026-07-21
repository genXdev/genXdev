# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Pobiera bieżącą datę i godzinę czasu UTC (uniwersalnego czasu koordynowanego).

## Description

Zwraca bieżącą datę i czas UTC jako obiekt System.DateTime. Ta funkcja zapewnia ujednolicony sposób pobierania czasu UTC w różnych systemach i strefach czasowych. Zwrócony obiekt DateTime może być używany do synchronizacji znaczników czasu, rejestrowania oraz operacji między strefami czasowymi.

## Syntax

```powershell
UtcNow [<CommonParameters>]
```

## Examples

### $currentUtc = UtcNow Returns the current UTC time as a DateTime object.

```powershell
$currentUtc = UtcNow
Returns the current UTC time as a DateTime object.
```

### $timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss") Gets the current UTC time and formats it as a string.

```powershell
$timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss")
Gets the current UTC time and formats it as a string.
```

## Outputs

- `DateTime`

## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Stop-TextToSpeech.md)
