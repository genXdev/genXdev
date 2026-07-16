# Open-GameOfLife

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `gameoflife, `conway

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-GameOfLife [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | The language preference for the browser interface and content localization |
| `-Private` | SwitchParameter | — | — | Named | — | Открывается в режиме инкогнито/частного просмотра |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительное включение порта отладки и остановка существующих браузеров при необходимости |
| `-Edge` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Открывается в Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер установлен по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Открывается в Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Открывается во всех зарегистрированных современных браузерах |
| `-Monitor` | Int32 | — | — | Named | `-2` | Используемый монитор: 0 = по умолчанию, -1 = отключить, -2 = настроенный вторичный монитор, по умолчанию -1, без позиционирования |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Открывается в полноэкранном режиме |
| `-Width` | Int32 | — | — | Named | `-1` | Начальная ширина окна веб-браузера |
| `-Height` | Int32 | — | — | Named | `-1` | Начальная высота окна веб-браузера |
| `-X` | Int32 | — | — | Named | `-999999` | Начальная позиция X окна веб-браузера |
| `-Y` | Int32 | — | — | Named | `-999999` | Начальная Y-позиция окна веб-браузера |
| `-Left` | SwitchParameter | — | — | Named | — | Разместите окно браузера в левой части экрана |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Разместите окно браузера в верхней части экрана |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Поместить окно браузера в центр экрана |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Скрыть элементы управления браузером |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Предотвращение загрузки расширений браузера |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Отключите блокировку всплывающих окон |
| `-AcceptLang` | String | — | — | Named | `$null` | Установить HTTP-заголовок accept-language браузера |
| `-KeysToSend` | String[] | — | — | Named | — | Клавиши для отправки в окно браузера, смотрите документацию по командлету GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keystrokes to the browser window. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Предотвратить возврат фокуса клавиатуры в PowerShell после отправки нажатий клавиш в окно браузера. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | При отправке нажатий клавиш в браузер используйте Shift+Enter вместо обычного Enter для перевода строки. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между отправкой различных последовательностей клавиш в миллисекундах. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусировать окно браузера после открытия |
| `-SetForeground` | SwitchParameter | — | — | Named | — | После открытия перевести окно браузера на передний план |
| `-Maximize` | SwitchParameter | — | — | Named | — | После позиционирования разверните окно |
| `-SetRestored` | SwitchParameter | — | — | Named | — | После позиционирования вернуть окно в нормальное состояние |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановление фокуса окна PowerShell после открытия браузера. |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не использовать существующее окно браузера, вместо этого создать новое |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает объект [System.Diagnostics.Process] процесса браузера |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | После открытия веб-браузера верните URL |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Не открывайте в полноэкранном режиме |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Показать элементы управления браузером |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удаляет границы окна браузера. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Расположите окно браузера либо на весь экран на другом мониторе, отличном от PowerShell, либо рядом с PowerShell на одном мониторе. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Использовать сессионный режим для профиля браузера (файлы cookie и данные удаляются при закрытии). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистите данные сессии/профиля браузера перед открытием. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Пропустить восстановление предыдущего сеанса браузера. |

## Related Links

- [Open-GameOfLife on GitHub](https://github.com/genXdev/genXdev)
