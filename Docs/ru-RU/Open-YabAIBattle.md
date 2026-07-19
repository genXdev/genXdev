# Open-YabAIBattle

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `yabbattle

## Synopsis

> Открывает игру YabAI Battle в веб-браузере.

## Description

Эта функция запускает игру YabAI Battle в веб-браузере с обширными параметрами настройки расположения окна, выбора браузера и режима отображения. Она предоставляет обёртку вокруг функции GenXdev\Open-Webbrowser с обработкой URL-адресов и параметров, специфичных для игры.

Функция поддерживает два игровых режима:
- Режим битвы: начать новую битву ИИ против ИИ
- Режим наблюдения: наблюдать за существующими битвами ИИ

Параметры позиционирования браузера включают режимы слева, справа, сверху, снизу, по центру и полноэкранный режим с поддержкой нескольких мониторов. Функция автоматически обрабатывает настройки режима приложения и управление расширениями браузера для оптимального игрового опыта.

## Syntax

```powershell
Open-YabAIBattle [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | Язык интерфейса игры |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | Не начинайте новую игру, просто наблюдайте за игрой ИИ |
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
| `-Monitor` | Int32 | — | — | Named | `-2` | Используемый монитор: 0 — по умолчанию, -1 — игнорировать, -2 — настроенный вторичный монитор; по умолчанию $Global:DefaultSecondaryMonitor, или 2, если не найден. |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Открывается в полноэкранном режиме |
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
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | При отправке клавиш экранируйте управляющие символы. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Предотвратить возврат фокуса клавиатуры в PowerShell после отправки нажатий клавиш. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks when sending keys. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка в миллисекундах между отправкой каждой клавиши. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусировать окно браузера после открытия |
| `-SetForeground` | SwitchParameter | — | — | Named | — | После открытия перевести окно браузера на передний план |
| `-Maximize` | SwitchParameter | — | — | Named | — | После позиционирования разверните окно |
| `-SetRestored` | SwitchParameter | — | — | Named | — | После позиционирования вернуть окно в нормальное состояние |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановление фокуса на предыдущем окне после открытия браузера. |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не использовать существующее окно браузера, вместо этого создать новое |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает объект [System.Diagnostics.Process] процесса браузера |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | После открытия веб-браузера верните URL |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Не открывайте в полноэкранном режиме |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Показать элементы управления браузером |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удаляет границы окна браузера. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Расположите окно браузера либо на весь экран на другом мониторе, отличном от PowerShell, либо рядом с PowerShell на одном мониторе. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Удалить альтернативные настройки, сохраненные в сессии для предпочтений ИИ. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session. |

## Examples

### Open-YabAIBattle -Edge -Private -NoFullScreen

```powershell
Open-YabAIBattle -Edge -Private -NoFullScreen
```

Открывает игру YabAI Battle в Microsoft Edge в режиме приватного просмотра без полноэкранного режима.

### yabbattle -e -incognito -nfs

```powershell
yabbattle -e -incognito -nfs
```

Открывает игру, используя псевдонимы для Edge, режим инкогнито и без полноэкранного режима.

### Open-YabAIBattle -SpectateOnly -Chrome

```powershell
Open-YabAIBattle -SpectateOnly -Chrome
```

Запускает игру в режиме наблюдения через Google Chrome для просмотра сражений ИИ.

### Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left

```powershell
Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left
```

Открывает игру с интерфейсом на испанском языке, расположенным с левой стороны монитора 1.

## Related Links

- [Open-YabAIBattle on GitHub](https://github.com/genXdev/genXdev)
