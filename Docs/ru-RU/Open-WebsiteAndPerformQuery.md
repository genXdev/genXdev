# Open-WebsiteAndPerformQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `owaq`

## Synopsis

> Открывает веб-страницу в браузере и выполняет один или несколько запросов.

## Description

Эта функция открывает веб-сайт по URL в браузере по умолчанию, вводит один или несколько запросов и отправляет их. Она поддерживает расширенный выбор монитора и опции позиционирования окна с помощью базовой функции Open-Webbrowser.

Функция автоматически копирует каждый запрос в буфер обмена и отправляет его в окно браузера с помощью автоматизации клавиатуры. Она сохраняет исходное содержимое буфера обмена и восстанавливает его после обработки всех запросов.

## Syntax

```powershell
Open-WebsiteAndPerformQuery -Url <String> -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByPropertyName) | 0 | — | URL веб-сайта для открытия |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 1 | — | Запрос для выполнения. |
| `-Language` | String | — | — | 2 | — | Язык возвращаемых результатов поиска |
| `-Private` | SwitchParameter | — | — | Named | — | Открывается в режиме инкогнито/приватного просмотра |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительно включить порт отладки, остановив существующие браузеры при необходимости |
| `-Edge` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Открывается в Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер используется по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Открыть в Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Использовать управляемый Playwright браузер вместо установленного в ОС браузера |
| `-Webkit` | SwitchParameter | — | — | Named | — | Открывает браузер WebKit, управляемый Playwright. Подразумевает -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Запустить браузер без видимого окна |
| `-All` | SwitchParameter | — | — | Named | — | Открывается во всех зарегистрированных современных браузерах |
| `-Monitor` | Int32 | — | — | Named | `-2` | Используемый монитор: 0 — по умолчанию, -1 — отбрасывание, -2 — настроенный дополнительный монитор, по умолчанию -1, без позиционирования |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Открывается в полноэкранном режиме |
| `-Width` | Int32 | — | — | Named | `-1` | Начальная ширина окна веб-браузера |
| `-Height` | Int32 | — | — | Named | `-1` | Начальная высота окна веб-браузера |
| `-X` | Int32 | — | — | Named | `-999999` | Начальная позиция X окна веб-браузера |
| `-Y` | Int32 | — | — | Named | `-999999` | Начальная позиция Y окна веб-браузера |
| `-Left` | SwitchParameter | — | — | Named | — | Разместите окно браузера в левой части экрана |
| `-Right` | SwitchParameter | — | — | Named | — | Разместить окно браузера в правой части экрана |
| `-Top` | SwitchParameter | — | — | Named | — | Разместить окно браузера в верхней части экрана |
| `-Bottom` | SwitchParameter | — | — | Named | — | Разместить окно браузера в нижней части экрана |
| `-Centered` | SwitchParameter | — | — | Named | — | Разместить окно браузера в центре экрана |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Спрятать элементы управления браузером |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Блокировка загрузки расширений браузера |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Отключить блокировку всплывающих окон |
| `-AcceptLang` | String | — | — | Named | `$null` | Установите заголовок HTTP accept-lang браузера |
| `-KeysToSend` | String[] | — | — | Named | — | Клавиши для отправки в окно браузера, см. документацию по командлету GenXdev\Send-Key |
| `-Maximize` | SwitchParameter | — | — | Named | — | Развернуть окно после позиционирования |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Восстановить окно в нормальное состояние после позиционирования |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не используйте повторно существующее окно браузера, вместо этого создайте новое |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусировать окно браузера после открытия |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Перевести окно браузера на передний план после открытия |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Экранировать управляющие символы при отправке нажатий клавиш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Удерживать фокус клавиатуры на целевом окне при отправке нажатий клавиш |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Используйте Shift+Enter вместо Enter при отправке клавиш |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `500` | Задержка между отправкой различных последовательностей клавиш в миллисекундах |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удаляет границы окна браузера |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сеансе, для предпочтений ИИ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистить альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Сохранять параметры только в постоянных настройках, не затрагивая сеанс |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Расположите окно браузера либо на полный экран на другом мониторе, отличном от PowerShell, либо рядом с PowerShell на одном мониторе. |

## Examples

### Open-WebsiteAndPerformQuery -Url "https://www.google.com" -Queries "PowerShell"

```powershell
Open-WebsiteAndPerformQuery -Url "https://www.google.com" -Queries "PowerShell"
```

Открывает Google и выполняет поиск по запросу «PowerShell».

### owaq google.com "PowerShell tutorials" -Monitor 0

```powershell
owaq google.com "PowerShell tutorials" -Monitor 0
```

Открывает Google и выполняет поиск «PowerShell tutorials» на мониторе по умолчанию.

## Parameter Details

### `-Url <String>`

> URL веб-сайта для открытия

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Value`, `u`, `uri`, `link`, `address`, `site`, `FullName`, `Website`, `WebsiteUrl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Queries <String[]>`

> Запрос для выполнения.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Язык возвращаемых результатов поиска

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Открывается в режиме инкогнито/приватного просмотра

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Принудительно включить порт отладки, остановив существующие браузеры при необходимости

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Открывается в Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Открывается в Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Открывается в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер используется по умолчанию

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Открыть в Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> Использовать управляемый Playwright браузер вместо установленного в ОС браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Открывает браузер WebKit, управляемый Playwright. Подразумевает -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> Запустить браузер без видимого окна

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> Открывается во всех зарегистрированных современных браузерах

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Используемый монитор: 0 — по умолчанию, -1 — отбрасывание, -2 — настроенный дополнительный монитор, по умолчанию -1, без позиционирования

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> Открывается в полноэкранном режиме

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Начальная ширина окна веб-браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Начальная высота окна веб-браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Начальная позиция X окна веб-браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> Начальная позиция Y окна веб-браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Разместите окно браузера в левой части экрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> Разместить окно браузера в правой части экрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> Разместить окно браузера в верхней части экрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> Разместить окно браузера в нижней части экрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Разместить окно браузера в центре экрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Спрятать элементы управления браузером

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> Блокировка загрузки расширений браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> Отключить блокировку всплывающих окон

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Установите заголовок HTTP accept-lang браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Клавиши для отправки в окно браузера, см. документацию по командлету GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Развернуть окно после позиционирования

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> Восстановить окно в нормальное состояние после позиционирования

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Восстановить фокус окна PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> Не используйте повторно существующее окно браузера, вместо этого создайте новое

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Сфокусировать окно браузера после открытия

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Перевести окно браузера на передний план после открытия

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Экранировать управляющие символы при отправке нажатий клавиш

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Удерживать фокус клавиатуры на целевом окне при отправке нажатий клавиш

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Используйте Shift+Enter вместо Enter при отправке клавиш

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Задержка между отправкой различных последовательностей клавиш в миллисекундах

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `500` |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Удаляет границы окна браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Используйте альтернативные настройки, хранящиеся в сеансе, для предпочтений ИИ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Очистить альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Сохранять параметры только в постоянных настройках, не затрагивая сеанс

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Расположите окно браузера либо на полный экран на другом мониторе, отличном от PowerShell, либо рядом с PowerShell на одном мониторе.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-BuiltWithSiteInfo.md)
- [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-GithubQuery.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WaybackMachineSiteInfo.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-YoutubeQuery.md)
