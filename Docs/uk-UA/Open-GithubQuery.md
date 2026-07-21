# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> Відкриває запит пошуку репозиторію Github у веб-браузері або виконує розширені пошуки через REST API GitHub, підтримуючи всі доступні кваліфікатори та категорії пошуку (репозиторії, код, завдання, користувачі, коміти, обговорення, теми, вікі).

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
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Запити для пошуку на Github. Підтримує декілька запитів та конвеєрне введення для пакетного пошуку. Кожен запит буде URL-кодований та використаний для пошуку на Github. |
| `-Type` | String | — | — | Named | `'Code'` | Основна категорія для пошуку. Типове значення — 'Code'. |
| `-In` | String[] | — | — | Named | — | Поле(я) для пошуку. Будуть прийняті лише дійсні параметри для вибраного Типу. |
| `-User` | String | — | — | Named | — | Обмежити пошук ресурсами користувача (репозиторії, код, завдання тощо). |
| `-Org` | String | — | — | Named | — | Обмежити пошук організацією. |
| `-Repo` | String | — | — | Named | — | Обмежити пошук вказаним репозиторієм ('власник/репозиторій'). |
| `-Path` | String | — | — | Named | — | Обмежити пошук коду до конкретних шляхів файлів або каталогів (підтримує символи підстановки відповідно до синтаксису пошуку GitHub). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Відфільтрувати результати за ім'ям файлу (не шляхом). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Обмежити пошук коду за розширеннями файлів. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Відфільтрувати за мовою програмування. |
| `-Size` | String | — | — | Named | — | Розмір файлу/репозиторію. Підтримує числовий та діапазонний синтаксис (див. приклади). |
| `-State` | String | — | — | Named | — | Для issues/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Проблеми/PR: обмежитися тими, які створені зазначеним користувачем. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Проблеми/PR: обмежити тими, кому призначено користувача. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Проблеми/PR: мають бути позначені всіма вказаними рядками. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Проблеми/PR: повинні не мати певних метаданих (наприклад, мітки, віхи). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Поле сортування (залежить від Типу). Наприклад, "stars", "forks", "updated" тощо. |
| `-Order` | String | — | — | Named | — | Порядок сортування: "за зростанням" або "за спаданням". |
| `-PerPage` | Int32 | — | — | Named | `10` | Розмір сторінки (макс. 100). |
| `-Page` | Int32 | — | — | Named | `1` | Номер сторінки для посторінкових результатів. |
| `-Token` | String | — | — | Named | — | GitHub OAuth або персональний токен доступу. Якщо не вказано, використовується GITHUB_TOKEN або змінна середовища. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Встановлює заголовок http accept-lang у браузері. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Затримка між надсиланням різних послідовностей клавіш у мілісекундах. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Монітор для відображення результатів. 0 = за замовчуванням, -1 = ігнорувати, -2 = додатковий. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | Початкова ширина вікна браузера. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | Початкова висота вікна браузера. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | Початкова позиція X вікна браузера. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | Початкова позиція Y вікна браузера. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Натискання клавіш для відправки у вікно браузера, дивіться документацію для командлету GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Лише відповідність з урахуванням регістру (де підтримується). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Запустіть пошук асинхронно як завдання PowerShell. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | У цьому завданні вам потрібно надіслати запит до API та повернути необроблений JSON результат. Будь ласка, надайте мені додаткову інформацію про те, який саме запит ви хочете виконати, щоб я міг згенерувати відповідний JSON. *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Використовуйте режим API замість відкриття у веб-браузері. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Відкриває браузер у приватному/анонімному режимі перегляду для анонімного пошуку. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Примусово ввімкнути порт налагодження, зупинивши наявні браузери за потреби. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Відкриває результати пошуку в браузері Microsoft Edge. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Відкриває результати пошуку у браузері Google Chrome. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Відкриває результати пошуку у Microsoft Edge або Google Chrome, залежно від того, який браузер є типовим. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Відкриває результати пошуку у веб-браузері Mozilla Firefox. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Використовувати керований Playwright браузер замість встановленого в ОС браузера |
| `-Webkit` | SwitchParameter | — | — | Named | — | Відкриває браузер WebKit, керований Playwright. Має на увазі -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Запустити браузер без видимого вікна |
| `-All` | SwitchParameter | — | — | Named | — | Відкривається у всіх зареєстрованих сучасних браузерах |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Відкриває браузер в режимі повного екрана. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера в лівій частині екрана. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера з правого боку екрана. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Розташувати вікно браузера у верхній частині екрана. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Розташувати вікно браузера в нижній частині екрана. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера в центрі екрана. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Сховати елементи керування браузера. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Запобігти завантаженню розширень браузера. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Вимкніть блокування спливаючих вікон у браузері. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Зосередити вікно браузера після відкриття. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Встановити вікно браузера на передній план після відкриття. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Повернути вікно на весь екран після позиціонування. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Відновлення фокусу вікна PowerShell. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не використовуйте повторно наявне вікно браузера, натомість створіть нове. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Повертає об'єкт [System.Diagnostics.Process] процесу браузера у веб-режимі або об'єкт запиту в режимі API. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.google.com *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Після відкриття веббраузера поверніть URL-адресу. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Екрануйте керуючі символи під час надсилання ключів. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Запобігати поверненню фокусу клавіатури до PowerShell після надсилання клавіш. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Надіслати Shift+Enter замість звичайного Enter для розриву рядків. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Видаляє межі вікна та рядок заголовка для чистішого вигляду. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Розмістіть вікно браузера поруч із PowerShell на одному моніторі. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовувати альтернативні налаштування, що зберігаються в сеансі, для параметрів. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі для параметрів. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати налаштування лише в постійних параметрах, не впливаючи на сеанс. *(Parameter set: )* |

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

> Запити для пошуку на Github. Підтримує декілька запитів та конвеєрне введення для пакетного пошуку. Кожен запит буде URL-кодований та використаний для пошуку на Github.

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

> Основна категорія для пошуку. Типове значення — 'Code'.

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

> Поле(я) для пошуку. Будуть прийняті лише дійсні параметри для вибраного Типу.

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

> Обмежити пошук ресурсами користувача (репозиторії, код, завдання тощо).

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

> Обмежити пошук організацією.

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

> Обмежити пошук вказаним репозиторієм ('власник/репозиторій').

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

> Обмежити пошук коду до конкретних шляхів файлів або каталогів (підтримує символи підстановки відповідно до синтаксису пошуку GitHub).

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

> Відфільтрувати результати за ім'ям файлу (не шляхом).

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

> Обмежити пошук коду за розширеннями файлів.

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

> Відфільтрувати за мовою програмування.

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

> Розмір файлу/репозиторію. Підтримує числовий та діапазонний синтаксис (див. приклади).

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

> Для issues/PR.

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

> Проблеми/PR: обмежитися тими, які створені зазначеним користувачем.

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

> Проблеми/PR: обмежити тими, кому призначено користувача.

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

> Проблеми/PR: мають бути позначені всіма вказаними рядками.

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

> Проблеми/PR: повинні не мати певних метаданих (наприклад, мітки, віхи).

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

> Поле сортування (залежить від Типу). Наприклад, "stars", "forks", "updated" тощо.

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

> Порядок сортування: "за зростанням" або "за спаданням".

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

> Розмір сторінки (макс. 100).

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

> Номер сторінки для посторінкових результатів.

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

> GitHub OAuth або персональний токен доступу. Якщо не вказано, використовується GITHUB_TOKEN або змінна середовища.

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

> Встановлює заголовок http accept-lang у браузері.

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

> Затримка між надсиланням різних послідовностей клавіш у мілісекундах.

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

> Монітор для відображення результатів. 0 = за замовчуванням, -1 = ігнорувати, -2 = додатковий.

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

> Початкова ширина вікна браузера.

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

> Початкова висота вікна браузера.

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

> Початкова позиція X вікна браузера.

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

> Початкова позиція Y вікна браузера.

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

> Натискання клавіш для відправки у вікно браузера, дивіться документацію для командлету GenXdev\Send-Key.

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

> Лише відповідність з урахуванням регістру (де підтримується).

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

> Запустіть пошук асинхронно як завдання PowerShell.

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

> У цьому завданні вам потрібно надіслати запит до API та повернути необроблений JSON результат. Будь ласка, надайте мені додаткову інформацію про те, який саме запит ви хочете виконати, щоб я міг згенерувати відповідний JSON.

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

> Використовуйте режим API замість відкриття у веб-браузері.

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

> Відкриває браузер у приватному/анонімному режимі перегляду для анонімного пошуку.

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

> Примусово ввімкнути порт налагодження, зупинивши наявні браузери за потреби.

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

> Відкриває результати пошуку в браузері Microsoft Edge.

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

> Відкриває результати пошуку у браузері Google Chrome.

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

> Відкриває результати пошуку у Microsoft Edge або Google Chrome, залежно від того, який браузер є типовим.

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

> Відкриває результати пошуку у веб-браузері Mozilla Firefox.

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

> Використовувати керований Playwright браузер замість встановленого в ОС браузера

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

> Відкриває браузер WebKit, керований Playwright. Має на увазі -PlayWright

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

> Запустити браузер без видимого вікна

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

> Відкривається у всіх зареєстрованих сучасних браузерах

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

> Відкриває браузер в режимі повного екрана.

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

> Розмістити вікно браузера в лівій частині екрана.

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

> Розмістити вікно браузера з правого боку екрана.

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

> Розташувати вікно браузера у верхній частині екрана.

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

> Розташувати вікно браузера в нижній частині екрана.

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

> Розмістити вікно браузера в центрі екрана.

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

> Сховати елементи керування браузера.

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

> Запобігти завантаженню розширень браузера.

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

> Вимкніть блокування спливаючих вікон у браузері.

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

> Зосередити вікно браузера після відкриття.

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

> Встановити вікно браузера на передній план після відкриття.

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

> Повернути вікно на весь екран після позиціонування.

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

> Відновлення фокусу вікна PowerShell.

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

> Не використовуйте повторно наявне вікно браузера, натомість створіть нове.

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

> Повертає об'єкт [System.Diagnostics.Process] процесу браузера у веб-режимі або об'єкт запиту в режимі API.

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

> https://www.google.com

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

> Після відкриття веббраузера поверніть URL-адресу.

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

> Екрануйте керуючі символи під час надсилання ключів.

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

> Запобігати поверненню фокусу клавіатури до PowerShell після надсилання клавіш.

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

> Надіслати Shift+Enter замість звичайного Enter для розриву рядків.

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

> Видаляє межі вікна та рядок заголовка для чистішого вигляду.

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

> Розмістіть вікно браузера поруч із PowerShell на одному моніторі.

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

> Використовувати альтернативні налаштування, що зберігаються в сеансі, для параметрів.

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

> Очистити альтернативні налаштування, збережені в сеансі для параметрів.

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

> Зберігати налаштування лише в постійних параметрах, не впливаючи на сеанс.

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

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-BuiltWithSiteInfo.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-YoutubeQuery.md)
