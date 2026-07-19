# Open-CloudLLMChat

> **Module:** GenXdev.Queries.AI | **Type:** Function | **Aliases:** `ask

## Synopsis

> Открывает облачный интерфейс чата LLM для запросов к ИИ.

## Description

Эта функция предоставляет унифицированный интерфейс для открытия различных облачных сервисов AI-чата в веб-браузере. Она поддерживает несколько AI-платформ, включая ChatGPT, BingCopilot, Google Gemini, X Grok, DeepSearch и GitHub Copilot. Функция автоматически выбирает соответствующую специфичную для конечной точки функцию и передает все соответствующие параметры для настройки браузера и позиционирования окна.

## Syntax

```powershell
Open-CloudLLMChat -Queries <String[]> [[-EndPoint] <String>] [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NewWindow] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Запрос для выполнения. |
| `-EndPoint` | String | — | — | 1 | `'XGrok'` | Конечная точка для выполнения запроса |
| `-Language` | String | — | — | 2 | — | Язык возвращаемых результатов поиска |
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
| `-SideBySide` | SwitchParameter | — | — | Named | — | Либо установит окно в полноэкранный режим на другом мониторе, отличном от PowerShell, либо рядом с PowerShell на одном мониторе. |
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
| `-Minimize` | SwitchParameter | — | — | Named | — | Свернуть окно после позиционирования |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не использовать существующее окно браузера, вместо этого создать новое |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает объект [System.Diagnostics.Process] процесса браузера |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | После открытия веб-браузера верните URL |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Экранируйте управляющие символы при отправке клавиш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Предотвращение возврата фокуса клавиатуры в PowerShell после отправки нажатий клавиш |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между отправкой различных последовательностей клавиш в миллисекундах |

## Examples

### Open-CloudLLMChat -Queries "How to write better PowerShell functions?" -EndPoint "ChatGPT"

Certainly! I'll explain PowerShell functions and their key features.

PowerShell functions are blocks of code that perform specific tasks and can be reused throughout scripts. They are defined using the `function` keyword followed by a name and a script block.

Basic syntax:

Open-CloudLLMChat -Queries "How to write better PowerShell functions?" -EndPoint "ChatGPT"

Certainly! I'll explain PowerShell functions and their key features.

PowerShell functions are blocks of code that perform specific tasks and can be reused throughout scripts. They are defined using the `function` keyword followed by a name and a script block.

Basic syntax:
```powershell
function FunctionName {
    # Code here
}
```

Functions can have parameters, return values, and advanced features like:
- Named, positional, and dynamic parameters
- Parameter validation and default values
- Pipeline input support
- Begin/Process/End blocks for pipeline processing
- Advanced functions with `[CmdletBinding()]` attribute for full cmdlet-like behavior

Example:
```powershell
function Get-Greeting {
    param(
        [string]$Name = "World"
    )
    "Hello, $Name!"
}
```

Functions can be simple or advanced, with advanced functions supporting common parameters, error handling, and what-if support.

Would you like more details on any specific aspect of PowerShell functions?

### ask "What is machine learning?" -EndPoint "GoogleGemini"

```powershell
ask "What is machine learning?" -EndPoint "GoogleGemini"
```

Uses the alias to ask Google Gemini about machine learning.

### "PowerShell", "Python", "JavaScript" | Open-CloudLLMChat -EndPoint "XGrok" -Monitor 0

```powershell
"PowerShell", "Python", "JavaScript" | Open-CloudLLMChat -EndPoint "XGrok" -Monitor 0
```

Обрабатывает несколько запросов через X Grok на мониторе по умолчанию.

## Related Links

- [Open-CloudLLMChat on GitHub](https://github.com/genXdev/genXdev)
