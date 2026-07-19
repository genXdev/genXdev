# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Возвращает директорию профиля браузера Playwright для постоянных сеансов.

## Description

* Создает и управляет директориями профилей браузера для автоматизированного тестирования Playwright.
* Профили хранятся в LocalAppData в каталоге GenXdev.Powershell\Playwright.profiles.
* Эти профили обеспечивают постоянные сеансы в процессе автоматизации браузера.

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | Тип браузера (Chromium, Firefox или Webkit) |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType Chromium
```

Создаёт или возвращает путь к профилю браузера Chromium.

### Example 2

```powershell
Get-PlaywrightProfileDirectory Firefox
```

Создает или возвращает каталог профиля Firefox, используя позиционный параметр.

## Related Links

- [Get-PlaywrightProfileDirectory on GitHub](https://github.com/genXdev/genXdev)
