# Get-PlaywrightSessionReference

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Получает ссылку на текущий сеанс браузера Playwright.

## Description

Возвращает хеш-таблицу, содержащую ссылки на Page (Playwright), BrowserContext и данные сессии для текущей страницы браузера. Эту ссылку можно использовать с командой Invoke-WebbrowserEvaluation -ByReference для выбора конкретной страницы.

Тип браузера можно указать с помощью ключей -Edge, -Chrome, -Chromium, -Firefox или -Webkit. Если ключ не указан, по умолчанию используется Chromium.

## Syntax

```powershell
Get-PlaywrightSessionReference [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Предпочтительнее сеанс браузера Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Предпочтение сеанса браузера Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Отдавайте предпочтение Microsoft Edge или Google Chrome, в зависимости от того, какой браузер установлен по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Предпочитать сеанс браузера Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Предпочтение сессии браузера WebKit |

## Examples

### Get a reference to the current browser session $sessionRef = Get-PlaywrightSessionReference

```powershell
Get a reference to the current browser session
$sessionRef = Get-PlaywrightSessionReference
```

### Store the reference and use it later to execute JavaScript $ref = Get-PlaywrightSessionReference Invoke-WebbrowserEvaluation "document.title" -ByReference $ref

```powershell
Store the reference and use it later to execute JavaScript
$ref = Get-PlaywrightSessionReference
Invoke-WebbrowserEvaluation "document.title" -ByReference $ref
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-PlaywrightSessionReference on GitHub](https://github.com/genXdev/genXdev)
