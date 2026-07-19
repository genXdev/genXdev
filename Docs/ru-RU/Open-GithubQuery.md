# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub, `qgh

## Synopsis

> Открывает запрос поиска по репозиториям GitHub в веб-браузере или выполняет расширенный поиск через REST API GitHub с поддержкой всех доступных квалификаторов и категорий поиска (репозитории, код, задачи, пользователи, коммиты, обсуждения, темы, вики).

## Description

Открывает поисковый запрос репозиториев GitHub в веб-браузере с широкими возможностями настройки или выполняет расширенные API-поиски. Эта функция предоставляет мощный интерфейс для быстрого доступа к репозиториям GitHub из PowerShell с поддержкой нескольких браузеров, позиционирования окон, фильтрации по языкам и автоматизации клавиатуры, или получения структурированных данных через API. Ключевые возможности:

Поддержка множественных поисковых запросов с вводом через конвейер
Языковая фильтрация с автоматической локализацией
Поддержка нескольких браузеров (Edge, Chrome, Firefox)
Расширенное позиционирование окон и выбор монитора
Режим приватного/инкогнито просмотра
Режим приложения для просмотра без отвлечений
Автоматизация клавиатуры и управление фокусом
Опции возврата URL для программного использования
Расширенный API-поиск с квалификаторами, сортировкой, постраничной навигацией
Поддержка всех типов поиска GitHub
Аутентификация с персональным токеном доступа
Асинхронное выполнение заданий для API-поисков
Вывод сырого JSON или структурированных объектов

Функция автоматически конструирует URL-адреса поиска GitHub для веб-режима или конечные точки API для API-режима и передает все параметры, связанные с браузером, базовой функции Open-Webbrowser для согласованного поведения.

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Поисковые запросы для выполнения на Github. Поддерживает несколько запросов и конвейерный ввод для пакетного поиска. Каждый запрос будет URL-закодирован и использован для поиска на Github. |
| `-Type` | String | — | — | Named | `'Code'` | Основная категория для поиска. По умолчанию 'Code'. |
| `-In` | String[] | — | — | Named | — | Поле(я) для поиска. Будут приняты только допустимые параметры для выбранного типа. |
| `-User` | String | — | — | Named | — | Ограничьте поиск ресурсами пользователя (репозитории, код, задачи и т.д.). |
| `-Org` | String | — | — | Named | — | Ограничить поиск по организации. |
| `-Repo` | String | — | — | Named | — | Ограничить поиск именованным репозиторием ('owner/repo'). |
| `-Path` | String | — | — | Named | — | Ограничьте поиск кода конкретными файлами или директориями (поддерживаются шаблоны в соответствии с синтаксисом поиска GitHub). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filter results by the filename (not path). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Ограничить поиск кода по расширениям файлов. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Filter by programming language. |
| `-Size` | String | — | — | Named | — | Размер файла/репозитория. Поддерживает числовой и диапазонный синтаксис (см. примеры). |
| `-State` | String | — | — | Named | — | Для проблем/ПР. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: ограничить те, которые созданы указанным пользователем. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Issues/PR: ограничить теми, кто назначен пользователю. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR: must be labeled with all specified strings. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR: must lack certain metadata (e.g., label, milestone). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Поле сортировки (зависит от типа). Например: "stars", "forks", "updated" и т.д. |
| `-Order` | String | — | — | Named | — | "asc" или "desc" порядок для сортировки. |
| `-PerPage` | Int32 | — | — | Named | `10` | Размер страницы (макс. 100). |
| `-Page` | Int32 | — | — | Named | `1` | Номер страницы для постраничных результатов. |
| `-Token` | String | — | — | Named | — | Токен OAuth GitHub или персональный токен доступа. Если не указан, используется GITHUB_TOKEN или переменная окружения. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между отправкой различных последовательностей клавиш в миллисекундах. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Монитор для отображения результатов. 0 = по умолчанию, -1 = игнорировать, -2 = вторичный. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | Начальная ширина окна браузера. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | Начальная высота окна браузера. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | Начальная позиция X окна браузера. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | Начальная Y-позиция окна браузера. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Нажатия клавиш для отправки в окно браузера, см. документацию по командлету GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Only match case-sensitive results (where supported). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Запустить поиск асинхронно как задание PowerShell. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | Исходный JSON-результат из API *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Используйте режим API вместо открытия в веб-браузере. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Открывает браузер в режиме приватного/инкогнито для анонимного поиска. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительно включить порт отладки, остановив существующие браузеры при необходимости. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Открывает результаты поиска в браузере Microsoft Edge. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Открывает результаты поиска в браузере Google Chrome. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Открывает результаты поиска в Microsoft Edge или Google Chrome в зависимости от того, какой браузер используется по умолчанию. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Открывает результаты поиска в браузере Mozilla Firefox. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Используйте браузер, управляемый Playwright, вместо браузера, установленного в ОС |
| `-Webkit` | SwitchParameter | — | — | Named | — | Открывает браузер WebKit, управляемый Playwright. Подразумевает -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Запустите браузер без видимого окна |
| `-All` | SwitchParameter | — | — | Named | — | Открывается во всех зарегистрированных современных браузерах |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Открывает браузер в полноэкранном режиме. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Разместите окно браузера в левой части экрана. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Place browser window on the top side of the screen. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Разместите окно браузера в центре экрана. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Скрыть элементы управления браузером. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Предотвращение загрузки расширений браузера. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable the popup blocker in the browser. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусируйте окно браузера после открытия. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | После открытия перевести окно браузера на передний план. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | После позиционирования разверните окно. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна PowerShell. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не используйте существующее окно браузера, вместо этого создайте новое. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает объект [System.Diagnostics.Process] процесса браузера в веб-режиме или объект запроса в режиме API. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://example.com *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | После открытия веб-браузера верните URL. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | При отправке клавиш экранируйте управляющие символы. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Предотвратить возврат фокуса клавиатуры в PowerShell после отправки нажатий клавиш. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удалить границы окна и строку заголовка для более чистого внешнего вида. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Расположите окно браузера рядом с PowerShell на одном мониторе. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистить альтернативные настройки, сохраненные в сессии для предпочтений. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session. *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Outputs

- `PSObject`

## Related Links

- [Open-GithubQuery on GitHub](https://github.com/genXdev/genXdev)
