# Open-Timeline

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `timeline

## Synopsis

> Открывает интерактивную временную шкалу, показывающую текущее время, дату, век и тысячелетие.

## Description

Открывает веб-интерактивную временную шкалу. Поддерживает несколько языков и возможности визуальной настройки.

## Syntax

```powershell
Open-Timeline [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-BorderDarkColor <String>] [-BorderLightColor <String>] [-BorderWidth <Int32>] [-Bottom] [-BrowserExtensions] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-DragedNodeBackground <String>] [-Edge] [-Firefox] [-FocusedNodeBackground <String>] [-FocusedNodeForeground <String>] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-RotationDelaySeconds <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-UnFocusedNodeBackground <String>] [-UnFocusedNodeForeground <String>] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Private` | SwitchParameter | — | — | Named | — | Открывается в режиме инкогнито/частного просмотра |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительное включение порта отладки и остановка существующих браузеров при необходимости |
| `-Edge` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Открывается в Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер установлен по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Открывается в Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Используйте браузер, управляемый Playwright, вместо браузера, установленного в ОС |
| `-Webkit` | SwitchParameter | — | — | Named | — | Открывает браузер WebKit, управляемый Playwright. Подразумевает -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Запустите браузер без видимого окна |
| `-All` | SwitchParameter | — | — | Named | — | Открывается во всех зарегистрированных современных браузерах |
| `-Monitor` | Int32 | — | — | Named | `-2` | Используемый монитор: 0 — по умолчанию, -1 — игнорировать, -2 — настроенный дополнительный монитор, по умолчанию используется Global:DefaultSecondaryMonitor или 2, если не найден. |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Не открывайте в полноэкранном режиме |
| `-Width` | Int32 | — | — | Named | `-1` | Начальная ширина окна веб-браузера |
| `-Height` | Int32 | — | — | Named | `-1` | Начальная высота окна веб-браузера |
| `-X` | Int32 | — | — | Named | `-999999` | Начальная позиция X окна веб-браузера |
| `-Y` | Int32 | — | — | Named | `-999999` | Начальная Y-позиция окна веб-браузера |
| `-Left` | SwitchParameter | — | — | Named | — | Разместите окно браузера в левой части экрана |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Разместите окно браузера в верхней части экрана |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Поместить окно браузера в центр экрана |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Показать элементы управления браузером |
| `-BrowserExtensions` | SwitchParameter | — | — | Named | — | Не препятствуйте загрузке расширений браузера |
| `-AcceptLang` | String | — | — | Named | `$null` | Установить HTTP-заголовок accept-language браузера |
| `-KeysToSend` | String[] | — | — | Named | — | Клавиши для отправки в окно браузера, смотрите документацию по командлету GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусировать окно браузера после открытия |
| `-SetForeground` | SwitchParameter | — | — | Named | — | После открытия перевести окно браузера на передний план |
| `-Maximize` | SwitchParameter | — | — | Named | — | После позиционирования разверните окно |
| `-SetRestored` | SwitchParameter | — | — | Named | — | После позиционирования вернуть окно в нормальное состояние |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не использовать существующее окно браузера, вместо этого создать новое |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает объект [System.Diagnostics.Process] процесса браузера |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | Не начинайте новую игру, просто наблюдайте за игрой ИИ |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | После открытия веб-браузера верните URL |
| `-Language` | String | — | — | 1 | — | Переопределить язык браузера по умолчанию или выберите [Все] для смены всех языков каждую минуту |
| `-DragedNodeBackground` | String | — | — | Named | `$null` | Overwrite the css-color-style for painting the currently dragged node's background |
| `-FocusedNodeBackground` | String | — | — | Named | `$null` | Обратите стиль css-color для окраски фона выбранного узла (в центре) |
| `-FocusedNodeForeground` | String | — | — | Named | `$null` | css-color-style focused-node-foreground: #yourcolor; |
| `-UnFocusedNodeBackground` | String | — | — | Named | `$null` | Обратите стиль css-color для окраски фона выбранного узла (в центре) |
| `-UnFocusedNodeForeground` | String | — | — | Named | `$null` | Overwrite the css-color-style for painting the unfocused node's (in center) foreground text |
| `-BorderLightColor` | String | — | — | Named | `$null` | Overwrite the default CSS border-light-color color style |
| `-BorderDarkColor` | String | — | — | Named | `$null` | Overwrite the default css border-dark-color colorstyle |
| `-BorderWidth` | Int32 | — | — | Named | `1` | Переопределить ширину по умолчанию для рисования границ узлов |
| `-RotationDelaySeconds` | Int32 | — | — | Named | `15` | Переопределите значение по умолчанию для задержки поворота фона |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Открывается в полноэкранном режиме |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Скрыть элементы управления браузером |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Предотвращение загрузки расширений браузера |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Отключите блокировку всплывающих окон |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Экранируйте управляющие символы при отправке клавиш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Предотвращение возврата фокуса клавиатуры в PowerShell после отправки нажатий клавиш |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между отправкой различных последовательностей клавиш в миллисекундах |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удаляет границы окна браузера. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Расположите окно браузера либо на весь экран на другом мониторе, отличном от PowerShell, либо рядом с PowerShell на одном мониторе. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Open-Timeline -Language "English"

```powershell
Open-Timeline -Language "English"
```

Открывает интерактивную временную шкалу с визуальным стилем, вдохновленным Ван Гогом, на английском языке.

### timeline -mon 2

```powershell
timeline -mon 2
```

Открывает таймлайн на мониторе 2 с помощью псевдонимов.

### Open-Timeline -Private -Chrome -FullScreen

```powershell
Open-Timeline -Private -Chrome -FullScreen
```

Открывает ленту в режиме инкогнито Chrome в полноэкранном режиме.

## Related Links

- [Open-Timeline on GitHub](https://github.com/genXdev/genXdev)
