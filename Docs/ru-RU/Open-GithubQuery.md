# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> Открывает поисковый запрос репозитория Github в веб-браузере или выполняет расширенный поиск по REST API GitHub, поддерживая все доступные квалификаторы и категории поиска (репозитории, код, задачи, пользователи, коммиты, обсуждения, темы, вики).

## Description

Открывает запрос поиска в репозитории Github в веб-браузере с широкими возможностями настройки или выполняет расширенные API-поиски. Эта функция предоставляет мощный интерфейс для быстрого доступа к репозиториям Github из PowerShell с поддержкой нескольких браузеров, позиционирования окон, фильтрации по языку и автоматизации клавиатуры, а также получения структурированных данных через API. Ключевые особенности:

Поддержка нескольких поисковых запросов с вводом через конвейер
Фильтрация по языку с автоматической локализацией
Поддержка нескольких браузеров (Edge, Chrome, Firefox)
Расширенное позиционирование окон и выбор монитора
Режим приватного/инкогнито просмотра
Режим приложения для просмотра без отвлечений
Автоматизация клавиатуры и управление фокусом
Варианты возврата URL для программного использования
Расширенный API-поиск с квалификаторами, сортировкой, пагинацией
Поддержка всех типов поиска GitHub
Аутентификация с персональным токеном доступа
Асинхронное выполнение заданий для API-поиска
Вывод в виде сырого JSON или структурированных объектов

Функция автоматически создает URL-адреса поиска Github для веб-режима или конечные точки API для режима API и передает все параметры, связанные с браузером, в базовую функцию Open-Webbrowser для единообразного поведения.

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
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Поисковые запросы для выполнения на Github. Поддерживает несколько запросов и конвейерный ввод для пакетного поиска. Каждый запрос будет закодирован в URL и использован для поиска на Github. |
| `-Type` | String | — | — | Named | `'Code'` | Основная категория для поиска. По умолчанию — 'Code'. |
| `-In` | String[] | — | — | Named | — | Поле(я) для поиска. Будут приняты только допустимые параметры для выбранного типа. |
| `-User` | String | — | — | Named | — | Ограничьте поиск ресурсами пользователя (репозитории, код, задачи и т. д.). |
| `-Org` | String | — | — | Named | — | Ограничить поиск организацией. |
| `-Repo` | String | — | — | Named | — | Ограничить поиск указанным репозиторием ('owner/repo'). |
| `-Path` | String | — | — | Named | — | Ограничить поиск кода конкретными путями к файлам или каталогам (поддерживает подстановочные знаки в соответствии с синтаксисом поиска GitHub). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Фильтрация результатов по имени файла (не пути). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Ограничить поиск кода расширениями файлов. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Фильтровать по языку программирования. |
| `-Size` | String | — | — | Named | — | Размер файла/репозитория. Поддерживает числовой синтаксис и синтаксис диапазонов (см. примеры). |
| `-State` | String | — | — | Named | — | Для проблем/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: ограничить только теми, которые созданы указанным пользователем. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Запросы/ПР: ограничить теми, у кого назначен пользователь. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR: должны быть помечены всеми указанными строками. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR: должны отсутствовать определенные метаданные (например, метка, веха). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Поле сортировки (зависит от типа). Например, "stars", "forks", "updated" и т.д. |
| `-Order` | String | — | — | Named | — | Порядок сортировки: по возрастанию ("asc") или по убыванию ("desc"). |
| `-PerPage` | Int32 | — | — | Named | `10` | Размер страницы (макс. 100). |
| `-Page` | Int32 | — | — | Named | `1` | Номер страницы для постраничных результатов. |
| `-Token` | String | — | — | Named | — | Токен OAuth GitHub или личный токен доступа. Если не указан, используется GITHUB_TOKEN или переменная окружения. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Устанавливает HTTP-заголовок accept-lang браузера. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между отправкой различных последовательностей клавиш в миллисекундах. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Монитор для отображения результатов. 0 = по умолчанию, -1 = не показывать, -2 = дополнительный. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | Начальная ширина окна браузера. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | Начальная высота окна браузера. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | Начальная позиция X окна браузера. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | Начальная Y-позиция окна браузера. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Нажатия клавиш для отправки в окно браузера, см. документацию по командлету GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Совпадение с учетом регистра (где поддерживается). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Запустите поиск асинхронно как задание PowerShell. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | .EXAMPLE
PS C:\> Get-ChildItem -Path C:\Tools -Recurse -Force

Этот список всех файлов и папок в каталоге C:\Tools, включая скрытые.

Примечание: Командлет Get-ChildItem не требует установки какой-либо роли или компонента функции, и его можно использовать для просмотра элементов на других устройствах, таких как диски реестра, подписанные сертификаты хранилища и т. д.

Get-ChildItem также можно передать в другие командлеты, чтобы ограничить, отфильтровать или выполнить действия с элементами.

См. также: Get-Item, Get-Content, Set-Content. *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Используйте режим API вместо открытия в веб-браузере. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Открывает браузер в режиме приватного/инкогнито для анонимного поиска. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительное включение порта отладки с остановкой существующих браузеров при необходимости. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Открывает результаты поиска в браузере Microsoft Edge. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Открывает результаты поиска в браузере Google Chrome. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Открывает результаты поиска в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер является браузером по умолчанию. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Открывает результаты поиска в браузере Mozilla Firefox. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Использовать управляемый Playwright браузер вместо установленного в ОС браузера |
| `-Webkit` | SwitchParameter | — | — | Named | — | Открывает браузер WebKit, управляемый Playwright. Подразумевает -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Запустить браузер без видимого окна |
| `-All` | SwitchParameter | — | — | Named | — | Открывается во всех зарегистрированных современных браузерах |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Открывает браузер в полноэкранном режиме. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Поместите окно браузера в левую часть экрана. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Разместить окно браузера в правой части экрана. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Расположить окно браузера в верхней части экрана. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Разместить окно браузера в нижней части экрана. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Разместить окно браузера в центре экрана. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Скрыть элементы управления браузера. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Предотвращение загрузки расширений браузера. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Отключить блокировщик всплывающих окон в браузере. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Фокусировать окно браузера после открытия. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Перевести окно браузера на передний план после открытия. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Развернуть окно после позиционирования. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна PowerShell. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не используйте повторно существующее окно браузера, вместо этого создайте новое. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает объект [System.Diagnostics.Process] процесса браузера в веб-режиме или объект запроса в режиме API. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Не открывайте веб-браузер, просто верните URL. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | После открытия веб-браузера верните URL. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Экранирование управляющих символов при отправке нажатий клавиш. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Предотвращение возврата фокуса клавиатуры в PowerShell после отправки нажатий клавиш. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Отправлять Shift+Enter вместо обычного Enter для перевода строки. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удалить границы окна и строку заголовка для более чистого внешнего вида. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Расположите окно браузера рядом с PowerShell на одном мониторе. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Использовать альтернативные настройки, хранящиеся в сеансе, для предпочтений. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистить альтернативные настройки, сохраненные в сеансе для параметров. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Сохранять параметры только в постоянных настройках, не влияя на сеанс. *(Parameter set: )* |

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

## Parameter Details

### `-Query <String[]>`

> Поисковые запросы для выполнения на Github. Поддерживает несколько запросов и конвейерный ввод для пакетного поиска. Каждый запрос будет закодирован в URL и использован для поиска на Github.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Queries` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Type <String>`

> Основная категория для поиска. По умолчанию — 'Code'.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Code'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-In <String[]>`

> Поле(я) для поиска. Будут приняты только допустимые параметры для выбранного типа.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-User <String>`

> Ограничьте поиск ресурсами пользователя (репозитории, код, задачи и т. д.).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Org <String>`

> Ограничить поиск организацией.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repo <String>`

> Ограничить поиск указанным репозиторием ('owner/repo').

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> Ограничить поиск кода конкретными путями к файлам или каталогам (поддерживает подстановочные знаки в соответствии с синтаксисом поиска GitHub).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Filename <String>`

> Фильтрация результатов по имени файла (не пути).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Extension <String>`

> Ограничить поиск кода расширениями файлов.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Language <String>`

> Фильтровать по языку программирования.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Size <String>`

> Размер файла/репозитория. Поддерживает числовой синтаксис и синтаксис диапазонов (см. примеры).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-State <String>`

> Для проблем/PR.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Author <String>`

> Issues/PR: ограничить только теми, которые созданы указанным пользователем.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Assignee <String>`

> Запросы/ПР: ограничить теми, у кого назначен пользователь.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Labels <String[]>`

> Issues/PR: должны быть помечены всеми указанными строками.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-No <String[]>`

> Issues/PR: должны отсутствовать определенные метаданные (например, метка, веха).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-SortBy <String>`

> Поле сортировки (зависит от типа). Например, "stars", "forks", "updated" и т.д.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Order <String>`

> Порядок сортировки: по возрастанию ("asc") или по убыванию ("desc").

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerPage <Int32>`

> Размер страницы (макс. 100).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `10` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Int32>`

> Номер страницы для постраничных результатов.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> Токен OAuth GitHub или личный токен доступа. Если не указан, используется GITHUB_TOKEN или переменная окружения.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-AcceptLang <String>`

> Устанавливает HTTP-заголовок accept-lang браузера.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Задержка между отправкой различных последовательностей клавиш в миллисекундах.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Monitor <Int32>`

> Монитор для отображения результатов. 0 = по умолчанию, -1 = не показывать, -2 = дополнительный.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Width <Int32>`

> Начальная ширина окна браузера.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Height <Int32>`

> Начальная высота окна браузера.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-X <Int32>`

> Начальная позиция X окна браузера.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Y <Int32>`

> Начальная Y-позиция окна браузера.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-KeysToSend <String[]>`

> Нажатия клавиш для отправки в окно браузера, см. документацию по командлету GenXdev\Send-Key.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-CaseSensitive`

> Совпадение с учетом регистра (где поддерживается).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsJob`

> Запустите поиск асинхронно как задание PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-RawResponse`

> .EXAMPLE
PS C:\> Get-ChildItem -Path C:\Tools -Recurse -Force

Этот список всех файлов и папок в каталоге C:\Tools, включая скрытые.

Примечание: Командлет Get-ChildItem не требует установки какой-либо роли или компонента функции, и его можно использовать для просмотра элементов на других устройствах, таких как диски реестра, подписанные сертификаты хранилища и т. д.

Get-ChildItem также можно передать в другие командлеты, чтобы ограничить, отфильтровать или выполнить действия с элементами.

См. также: Get-Item, Get-Content, Set-Content.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Api`

> Используйте режим API вместо открытия в веб-браузере.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Private`

> Открывает браузер в режиме приватного/инкогнито для анонимного поиска.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Force`

> Принудительное включение порта отладки с остановкой существующих браузеров при необходимости.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Edge`

> Открывает результаты поиска в браузере Microsoft Edge.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chrome`

> Открывает результаты поиска в браузере Google Chrome.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chromium`

> Открывает результаты поиска в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер является браузером по умолчанию.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Firefox`

> Открывает результаты поиска в браузере Mozilla Firefox.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
### `-FullScreen`

> Открывает браузер в полноэкранном режиме.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Left`

> Поместите окно браузера в левую часть экрана.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Right`

> Разместить окно браузера в правой части экрана.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Top`

> Расположить окно браузера в верхней части экрана.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Bottom`

> Разместить окно браузера в нижней части экрана.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Centered`

> Разместить окно браузера в центре экрана.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ApplicationMode`

> Скрыть элементы управления браузера.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBrowserExtensions`

> Предотвращение загрузки расширений браузера.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-DisablePopupBlocker`

> Отключить блокировщик всплывающих окон в браузере.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-FocusWindow`

> Фокусировать окно браузера после открытия.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SetForeground`

> Перевести окно браузера на передний план после открытия.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Maximize`

> Развернуть окно после позиционирования.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-RestoreFocus`

> Восстановить фокус окна PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NewWindow`

> Не используйте повторно существующее окно браузера, вместо этого создайте новое.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PassThru`

> Возвращает объект [System.Diagnostics.Process] процесса браузера в веб-режиме или объект запроса в режиме API.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> Не открывайте веб-браузер, просто верните URL.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ReturnOnlyURL`

> После открытия веб-браузера верните URL.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyEscape`

> Экранирование управляющих символов при отправке нажатий клавиш.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Предотвращение возврата фокуса клавиатуры в PowerShell после отправки нажатий клавиш.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyUseShiftEnter`

> Отправлять Shift+Enter вместо обычного Enter для перевода строки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBorders`

> Удалить границы окна и строку заголовка для более чистого внешнего вида.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SideBySide`

> Расположите окно браузера рядом с PowerShell на одном мониторе.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SessionOnly`

> Использовать альтернативные настройки, хранящиеся в сеансе, для предпочтений.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ClearSession`

> Очистить альтернативные настройки, сохраненные в сеансе для параметров.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SkipSession`

> Сохранять параметры только в постоянных настройках, не влияя на сеанс.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-BuiltWithSiteInfo.md)
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
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-YoutubeQuery.md)
