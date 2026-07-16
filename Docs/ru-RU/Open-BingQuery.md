# Open-BingQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `bq

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-BingQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Запрос для выполнения. |
| `-Language` | String | — | — | 1 | — | Язык возвращаемых результатов поиска |
| `-Monitor` | Int32 | — | — | Named | `-1` | Используемый монитор: 0 — по умолчанию, -1 — игнорировать, -2 — настроенный вторичный монитор; по умолчанию $Global:DefaultSecondaryMonitor, или 2, если не найден. |
| `-Width` | Int32 | — | — | Named | `-1` | Начальная ширина окна веб-браузера |
| `-Height` | Int32 | — | — | Named | `-1` | Начальная высота окна веб-браузера |
| `-X` | Int32 | — | — | Named | `-999999` | Начальная позиция X окна веб-браузера |
| `-Y` | Int32 | — | — | Named | `-999999` | Начальная Y-позиция окна веб-браузера |
| `-AcceptLang` | String | — | — | Named | — | Установить HTTP-заголовок accept-language браузера |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительное включение порта отладки и остановка существующих браузеров при необходимости |
| `-Edge` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Открывается в Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер установлен по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Открывается в Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Открывается во всех зарегистрированных современных браузерах |
| `-Left` | SwitchParameter | — | — | Named | — | Разместите окно браузера в левой части экрана |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Разместите окно браузера в верхней части экрана |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Поместить окно браузера в центр экрана |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Открывается в полноэкранном режиме |
| `-Private` | SwitchParameter | — | — | Named | — | Открывается в режиме инкогнито/частного просмотра |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Скрыть элементы управления браузером |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Предотвращение загрузки расширений браузера |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Отключите блокировку всплывающих окон |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусировать окно браузера после открытия |
| `-SetForeground` | SwitchParameter | — | — | Named | — | После открытия перевести окно браузера на передний план |
| `-Maximize` | SwitchParameter | — | — | Named | — | После позиционирования разверните окно |
| `-SetRestored` | SwitchParameter | — | — | Named | — | После позиционирования вернуть окно в нормальное состояние |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает объект PowerShell процесса браузера |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удаляет границы окна |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Либо установит окно в полноэкранный режим на другом мониторе, отличном от PowerShell, либо рядом с PowerShell на одном мониторе. |
| `-KeysToSend` | String[] | — | — | Named | — | Клавиши для отправки в окно браузера, смотрите документацию по командлету GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Экранируйте управляющие символы при отправке клавиш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Предотвращение возврата фокуса клавиатуры в PowerShell после отправки нажатий клавиш |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между отправкой различных последовательностей клавиш в миллисекундах |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не использовать существующее окно браузера, вместо этого создать новое |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | После открытия веб-браузера верните URL |

## Related Links

- [Open-BingQuery on GitHub](https://github.com/genXdev/genXdev)
