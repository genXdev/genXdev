# Open-GithubCopilotQuery

> **Module:** GenXdev.Queries.AI | **Type:** Function | **Aliases:** `aigc, `askghcopilot

## Synopsis

> Открывает запрос Github CoPilot в веб-браузере

## Description

Открывает запрос Github CoPilot в веб-браузере и автоматически вводит указанный запрос. Функция ожидает загрузки страницы перед вводом запроса. Эта функция использует базовую функцию Open-WebsiteAndPerformQuery для управления автоматизацией браузера и предоставляет удобный способ взаимодействия с GitHub Copilot из PowerShell с широкими возможностями настройки браузера.

## Syntax

```powershell
Open-GithubCopilotQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Запрос для выполнения. |
| `-Language` | String | — | — | 1 | — | Язык возвращаемых результатов поиска |
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
| `-Monitor` | Int32 | — | — | Named | `-1` | Используемый монитор: 0 = по умолчанию, -1 = отключить, -2 = настроенный вторичный монитор, по умолчанию -1, без позиционирования |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Открывается в полноэкранном режиме |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | The `-ShowWindow` parameter. |
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
| `-AcceptLang` | String | — | — | Named | — | Установить HTTP-заголовок accept-language браузера |
| `-KeysToSend` | String[] | — | — | Named | — | Клавиши для отправки в окно браузера, смотрите документацию по командлету GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусировать окно браузера после открытия |
| `-SetForeground` | SwitchParameter | — | — | Named | — | После открытия перевести окно браузера на передний план |
| `-Maximize` | SwitchParameter | — | — | Named | — | После позиционирования разверните окно |
| `-SetRestored` | SwitchParameter | — | — | Named | — | После позиционирования вернуть окно в нормальное состояние |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не использовать существующее окно браузера, вместо этого создать новое |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Экранируйте управляющие символы при отправке клавиш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Предотвращение возврата фокуса клавиатуры в PowerShell после отправки нажатий клавиш |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между отправкой различных последовательностей клавиш в миллисекундах |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Расположите окно браузера либо на весь экран на другом мониторе, отличном от PowerShell, либо рядом с PowerShell на одном мониторе. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает объект [System.Diagnostics.Process] процесса браузера |

## Examples

### Open-GithubCopilotQuery -Queries "How to implement bubble sort in C#"

```powershell
Open-GithubCopilotQuery -Queries "How to implement bubble sort in C#"
```

### aigc "implement binary search"

```powershell
aigc "implement binary search"
```

## Related Links

- [Open-GithubCopilotQuery on GitHub](https://github.com/genXdev/genXdev)
