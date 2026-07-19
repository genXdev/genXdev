# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb

## Synopsis

> Запускает браузер, управляемый Playwright, с постоянным профилем пользователя.

## Description

<details>
<summary><b>Expand description</b></summary>

Запускает автономный экземпляр браузера на основе встроенных бинарных файлов Chromium, Firefox или WebKit от Playwright — полностью независимо от браузера, установленного в ОС. Браузер использует постоянный профиль пользователя, хранящийся в GenXdev AppData, поэтому файлы cookie, localStorage и сессии сохраняются между перезапусками.

Этот командлет заменяет старый подход с CDP/портом отладки, который перестал работать в Chrome 136+. Вместо подключения к системному браузеру через порт отладки Playwright управляет жизненным циклом браузера напрямую.

Ключевые возможности:
- Постоянные профили для каждого типа браузера (Chromium, Firefox, WebKit)
- Настраиваемый размер области просмотра и положение окна
- Headless-режим для автоматизации
- Поддержка прокси-сервера
- Пользовательский заголовок Accept-Language
- Режим инкогнито/приватного контекста
- Управление расширениями браузера
- Размер и позиционирование области просмотра через -Width, -Height, -Left, -Right и др.
- Принудительный перезапуск для закрытия существующего экземпляра и запуска нового

Запущенный браузер и его контекст/страница сохраняются в $Global:GenXdevPlaywright для использования другими командлетами.

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'Chromium'` | Движок браузера для запуска: Chromium, Firefox или WebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | Запустите браузер без видимого окна |
| `-Proxy` | String | — | — | Named | — | URL прокси-сервера (например, http://proxy:8080) |
| `-AcceptLang` | String | — | — | Named | — | Установите заголовок HTTP Accept-Language браузера |
| `-Width` | Int32 | — | — | Named | `-1` | Начальная ширина области просмотра в пикселях |
| `-Height` | Int32 | — | — | Named | `-1` | Начальная высота области просмотра в пикселях |
| `-Force` | SwitchParameter | — | — | Named | — | Закройте существующий браузер и начните заново |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Принудительный повторный показ диалога согласия на установку |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически соглашаться на установку стороннего программного обеспечения (браузеры Playwright) |
| `-Monitor` | Int32 | — | — | Named | `-1` | Используемый монитор: 0 — по умолчанию, -1 — игнорировать, -2 — настроенный вторичный монитор; по умолчанию $Global:DefaultSecondaryMonitor, или 2, если не найден. |
| `-X` | Int32 | — | — | Named | `-999999` | Начальная позиция X окна веб-браузера |
| `-Y` | Int32 | — | — | Named | `-999999` | Начальная Y-позиция окна веб-браузера |
| `-Left` | SwitchParameter | — | — | Named | — | Разместите окно браузера в левой части экрана |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Разместите окно браузера в верхней части экрана |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Поместить окно браузера в центр экрана |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Разворачивает окно на весь экран |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удаляет границы окна |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Расположите окно браузера либо на весь экран на другом мониторе относительно PowerShell, либо рядом с PowerShell на одном мониторе |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусировать окно браузера после открытия |
| `-SetForeground` | SwitchParameter | — | — | Named | — | После открытия перевести окно браузера на передний план |
| `-Minimize` | SwitchParameter | — | — | Named | — | Сворачивает окно после позиционирования |
| `-Maximize` | SwitchParameter | — | — | Named | — | После позиционирования разверните окно |
| `-SetRestored` | SwitchParameter | — | — | Named | — | После позиционирования вернуть окно в нормальное состояние |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Экранируйте управляющие символы и модификаторы при отправке нажатий клавиш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | При отправке клавиш удерживать фокус клавиатуры на целевом окне |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Используйте Shift+Enter вместо Enter при отправке ключей |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между различными входными строками в миллисекундах при отправке ключей |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает объект-помощник окна для дальнейшей обработки |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Examples

### Open-PlayWrightBrowser Launches a persistent Chromium browser with the default profile.

```powershell
Open-PlayWrightBrowser
Launches a persistent Chromium browser with the default profile.
```

### Open-PlayWrightBrowser -BrowserType Firefox -Headless Launches Firefox in headless mode.

```powershell
Open-PlayWrightBrowser -BrowserType Firefox -Headless
Launches Firefox in headless mode.
```

### Open-PlayWrightBrowser -Width 1280 -Height 720 -Force Restarts the browser with a 1280x720 viewport.

```powershell
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
```

### Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders Launches Chromium on the left half of monitor 1 without window borders.

```powershell
Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders
Launches Chromium on the left half of monitor 1 without window borders.
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Open-PlayWrightBrowser on GitHub](https://github.com/genXdev/genXdev)
