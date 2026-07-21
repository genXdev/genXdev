# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Отримує поточну дату та час за UTC (Всесвітній координований час).

## Description

Повертає поточну дату та час UTC у вигляді об'єкта System.DateTime. Ця функція забезпечує стандартизований спосіб отримання часу UTC у різних системах та часових поясах. Повернений об'єкт DateTime можна використовувати для синхронізації міток часу, журналювання та операцій, що охоплюють різні часові пояси.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Stop-TextToSpeech.md)
