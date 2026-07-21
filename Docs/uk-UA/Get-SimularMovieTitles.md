# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Знаходить схожі назви фільмів на основі спільних властивостей.

## Description

Аналізує надані фільми для пошуку спільних властивостей і повертає список із 10 схожих назв фільмів. Використовує ШІ для виявлення закономірностей і тем серед вхідних фільмів, щоб запропонувати відповідні рекомендації.

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-All] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Headless] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Webkit] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | Масив назв фільмів для аналізу на схожість |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | Тип запиту LLM |
| `-Model` | String | — | — | Named | — | Ідентифікатор моделі або шаблон для використання в операціях ШІ |
| `-ApiEndpoint` | String | — | — | Named | — | URL кінцевої точки API для операцій штучного інтелекту |
| `-ApiKey` | String | — | — | Named | — | Ключ API для автентифікованих операцій зі штучним інтелектом |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Вказує, що LLM не підтримує JSON-схеми |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Час очікування в секундах для операцій зі штучним інтелектом |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для випадковості відповіді (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Відкриває пошук на IMDB для кожного результату |
| `-Language` | String | — | — | Named | — | Мова для пошуку або сеансу перегляду IMDB |
| `-Monitor` | Int32 | — | — | Named | `-1` | Моніторити індекс або назву для розміщення вікна браузера |
| `-Width` | Int32 | — | — | Named | `-1` | Ширина вікна браузера в пікселях |
| `-Height` | Int32 | — | — | Named | `-1` | Висота вікна браузера в пікселях |
| `-AcceptLang` | String | — | — | Named | — | HTTP-заголовок Accept-Language для сеансу браузера |
| `-Private` | SwitchParameter | — | — | Named | — | Відкрити браузер у приватному/анонімному режимі |
| `-Chrome` | SwitchParameter | — | — | Named | — | Використовуйте Google Chrome для сеансу браузера |
| `-Chromium` | SwitchParameter | — | — | Named | — | Використовувати Chromium для сеансу браузера |
| `-Firefox` | SwitchParameter | — | — | Named | — | Використовуйте Mozilla Firefox для сеансу браузера |
| `-Left` | Int32 | — | — | Named | — | Ліва позиція вікна браузера в пікселях |
| `-Right` | Int32 | — | — | Named | — | Права позиція вікна браузера в пікселях |
| `-Bottom` | Int32 | — | — | Named | — | Нижнє положення вікна браузера в пікселях |
| `-Centered` | SwitchParameter | — | — | Named | — | Відкрити вікно браузера по центру екрана |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Відкрити браузер у повноекранному режимі |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Відкрити браузер у режимі додатка (мінімальний інтерфейс) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Вимкнути розширення браузера для сеансу |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Вимкнути блокування спливаючих вікон у сеансі браузера |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Зосередити вікно браузера після відкриття |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Встановити вікно браузера на передній план після відкриття |
| `-Maximize` | SwitchParameter | — | — | Named | — | Максимізувати вікно браузера після відкриття |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Повернути фокус на попереднє вікно після закриття браузера |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Відкривати кожен результат IMDb у новому вікні браузера |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.imdb.com/search/title/?title=your+search+query |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Повертайте лише URL без відкриття браузера |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Надіслати клавішу Escape браузеру після відкриття |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Утримувати фокус клавіатури в браузері після надсилання клавіш |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Використовуйте Shift+Enter для надсилання клавіш у браузер |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Затримка в мілісекундах між надсиланням клавіш до браузера |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Відкрити вікно браузера без рамок |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Використовувати керований Playwright браузер замість встановленого в ОС браузера |
| `-Webkit` | SwitchParameter | — | — | Named | — | Відкриває браузер WebKit, керований Playwright. Має на увазі -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Запустити браузер без видимого вікна |
| `-All` | SwitchParameter | — | — | Named | — | Відкривається у всіх зареєстрованих сучасних браузерах |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Відкрийте вікна браузера поруч для кожного результату |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс |
| `-Instructions` | String | — | — | Named | — | Наступний опис містить довідку з команди PowerShell. Команда `Get-NetAdapter` повертає всі мережеві адаптери, доступні в системі. Для фільтрації результатів використовуйте параметри, як-от `-Name`, `-InterfaceDescription` або `-PhysicalMediaType`. Ось приклад: 

```powershell
Get-NetAdapter -Name "Ethernet*"
```
Це поверне всі адаптери, ім'я яких починається з "Ethernet". Щоб отримати детальнішу інформацію, використовуйте `Get-NetAdapter -Name "Ethernet0" | Format-List *`. |
| `-Attachments` | String[] | — | — | Named | — | Масив шляхів до файлів для приєднання |
| `-ImageDetail` | String | — | — | Named | — | Рівень деталізації зображення для обробки зображень. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Масив визначень функцій, які можуть бути викликані моделлю ШІ під час обробки. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Масив визначень команд PowerShell для використання як інструментів, які може викликати ШІ. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Масив назв команд, які не потребують підтвердження перед виконанням. |
| `-AudioTemperature` | Double | — | — | Named | — | Температура для генерації аудіо. |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для генерації відповіді. |
| `-CpuThreads` | Int32 | — | — | Named | — | Кількість потоків ЦП для використання. |
| `-SuppressRegex` | String | — | — | Named | — | Регулярний вираз для придушення певних вихідних даних. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Розмір аудіоконтексту для обробки. |
| `-SilenceThreshold` | Double | — | — | Named | — | Поріг тиші для обробки аудіо. |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за довжину для генерації послідовності. |
| `-EntropyThreshold` | Double | — | — | Named | — | Поріг ентропії для фільтрації виведення. |
| `-LogProbThreshold` | Double | — | — | Named | — | Поріг логарифмічної ймовірності для фільтрації виводу. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Відсутній поріг мовлення для виявлення аудіо. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Вимкнути мовленнєвий вивід. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Вимкнути виведення думок. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Вимкнути VOX (голосову активацію). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Використовуйте захоплення аудіо робочого столу. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Вимкнути використання контексту. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Використовуйте стратегію вибірки променевого пошуку. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Нижче наведено описи дійсних параметрів командлету PowerShell.
Ці описи не слід плутати з інструкціями.
Будь ласка, перекладіть лише зміст, без змін структури.

---

### Параметр -Name
Вказує ім'я об'єкта.

### Параметр -Path
Вказує шлях до розташування.

### Параметр -Force
Примусово виконує дію без підтвердження. |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Якщо вказано, копіює отриманий список рядків назад до системного буфера обміну після обробки. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Командлет `Export-NpsConfiguration` експортує конфігурацію сервера політики мережі (NPS) у файл .xml.

## Детальний опис

Командлет `Export-NpsConfiguration` експортує всю конфігурацію сервера NPS у файл у форматі .xml. Потім цю конфігурацію можна імпортувати на інший сервер NPS за допомогою командлета `Import-NpsConfiguration`. Цей командлет еквівалентний команді з консолі NPS, яка використовується для експорту конфігурації NPS.

Конфігурація експортується у вигляді рядка, а не у вигляді об'єкта XML. Тому ви не можете передати вихідні дані цього командлета в командлет `Import-NpsConfiguration`. Замість цього вкажіть файл .xml безпосередньо як вхідні дані для `Import-NpsConfiguration`.

## Приклад 1

```
PS C:\> Export-NpsConfiguration -Path 'C:\NpsConfig.xml'
```

Ця команда експортує конфігурацію NPS у файл з іменем C:\NpsConfig.xml.

## Приклад 2

```
PS C:\> Export-NpsConfiguration -Path 'C:\NpsConfig.xml' -Force
```

Ця команда експортує конфігурацію NPS у файл C:\NpsConfig.xml. Якщо файл вже існує, він буде перезаписаний. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Не вставляйте думки моделі до історії розмови |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Продовжити з останньої розмови |
| `-Speak` | SwitchParameter | — | — | Named | — | Увімкнути текст у мовлення для відповідей AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Увімкнути текст у мовлення для відповідей AI-думок |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не зберігати сеанс у кеші сеансів |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Увімкнути інструменти за замовчуванням для моделі ШІ. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | ###.NAME
    Get-DbaDbCheckSumUsage

###.SYNOPSIS
    Отримує інформацію про використання контрольної суми на сторінках бази даних.

###.SYNTAX
    Get-DbaDbCheckSumUsage [[-SqlInstance] <DbaInstanceParameter[]>] [[-Database] <Object[]>] [[-ExcludeDatabase] <Object[]>] [[-Threshold] <Int32>] [<CommonParameters>]

###.DESCRIPTION
    Ця функція повертає інформацію про кількість помилок контрольної суми, які сталися в базах даних на вказаному екземплярі SQL Server.

###.PARAMETERS
    -SqlInstance <DbaInstanceParameter[]>
        Параметри екземпляра SQL Server.

    -Database <Object[]>
        Цільова база даних.

    -ExcludeDatabase <Object[]>
        Бази даних, які слід виключити.

    -Threshold <Int32>
        Порогове значення для кількості помилок, щоб вважати базу даних проблемною.

    <CommonParameters>
        Ця функція підтримує загальні параметри: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable і OutVariable.

###.INPUTS
    System.String

###.OUTPUTS
    System.Object

###.NOTES
    Теги: Checksum, Database
    Автор: Автор скрипта

    Приклад використання:
        Get-DbaDbCheckSumUsage -SqlInstance 'МійСервер' -Database 'МояБазаДаних' |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Фільтрувати для певних типів блоків розмітки. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальна довжина зворотного виклику для викликів інструментів. |

## Examples

### Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb

```powershell
Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb
```

### moremovietitle "The Matrix","Inception" -imdb

```powershell
moremovietitle "The Matrix","Inception" -imdb
```

## Parameter Details

### `-Movies <String[]>`

> Масив назв фільмів для аналізу на схожість

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Тип запиту LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'Knowledge'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Ідентифікатор моделі або шаблон для використання в операціях ШІ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> URL кінцевої точки API для операцій штучного інтелекту

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> Ключ API для автентифікованих операцій зі штучним інтелектом

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Вказує, що LLM не підтримує JSON-схеми

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Час очікування в секундах для операцій зі штучним інтелектом

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Шлях до бази даних для файлів налаштувань

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Температура для випадковості відповіді (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OpenInImdb`

> Відкриває пошук на IMDB для кожного результату

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `imdb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Мова для пошуку або сеансу перегляду IMDB

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

> Моніторити індекс або назву для розміщення вікна браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Ширина вікна браузера в пікселях

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

> Висота вікна браузера в пікселях

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> HTTP-заголовок Accept-Language для сеансу браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Відкрити браузер у приватному/анонімному режимі

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Використовуйте Google Chrome для сеансу браузера

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

> Використовувати Chromium для сеансу браузера

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

> Використовуйте Mozilla Firefox для сеансу браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Ліва позиція вікна браузера в пікселях

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Права позиція вікна браузера в пікселях

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Нижнє положення вікна браузера в пікселях

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

> Відкрити вікно браузера по центру екрана

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

> Відкрити браузер у повноекранному режимі

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Відкрити браузер у режимі додатка (мінімальний інтерфейс)

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

> Вимкнути розширення браузера для сеансу

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

> Вимкнути блокування спливаючих вікон у сеансі браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Зосередити вікно браузера після відкриття

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

> Встановити вікно браузера на передній план після відкриття

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Максимізувати вікно браузера після відкриття

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

> Повернути фокус на попереднє вікно після закриття браузера

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

> Відкривати кожен результат IMDb у новому вікні браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> https://www.imdb.com/search/title/?title=your+search+query

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> Повертайте лише URL без відкриття браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Надіслати клавішу Escape браузеру після відкриття

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

> Утримувати фокус клавіатури в браузері після надсилання клавіш

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

> Використовуйте Shift+Enter для надсилання клавіш у браузер

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

> Затримка в мілісекундах між надсиланням клавіш до браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Відкрити вікно браузера без рамок

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

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
### `-SideBySide`

> Відкрийте вікна браузера поруч для кожного результату

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань

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

> Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ

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

> Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> Наступний опис містить довідку з команди PowerShell. Команда `Get-NetAdapter` повертає всі мережеві адаптери, доступні в системі. Для фільтрації результатів використовуйте параметри, як-от `-Name`, `-InterfaceDescription` або `-PhysicalMediaType`. Ось приклад: 

```powershell
Get-NetAdapter -Name "Ethernet*"
```
Це поверне всі адаптери, ім'я яких починається з "Ethernet". Щоб отримати детальнішу інформацію, використовуйте `Get-NetAdapter -Name "Ethernet0" | Format-List *`.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> Масив шляхів до файлів для приєднання

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Рівень деталізації зображення для обробки зображень.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Масив визначень функцій, які можуть бути викликані моделлю ШІ під час обробки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Масив визначень команд PowerShell для використання як інструментів, які може викликати ШІ.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Масив назв команд, які не потребують підтвердження перед виконанням.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Температура для генерації аудіо.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> Температура для генерації відповіді.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Кількість потоків ЦП для використання.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Регулярний вираз для придушення певних вихідних даних.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Розмір аудіоконтексту для обробки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> Поріг тиші для обробки аудіо.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> Штраф за довжину для генерації послідовності.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> Поріг ентропії для фільтрації виведення.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> Поріг логарифмічної ймовірності для фільтрації виводу.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> Відсутній поріг мовлення для виявлення аудіо.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> Вимкнути мовленнєвий вивід.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> Вимкнути виведення думок.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> Вимкнути VOX (голосову активацію).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Використовуйте захоплення аудіо робочого столу.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> Вимкнути використання контексту.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Використовуйте стратегію вибірки променевого пошуку.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> Нижче наведено описи дійсних параметрів командлету PowerShell.
Ці описи не слід плутати з інструкціями.
Будь ласка, перекладіть лише зміст, без змін структури.

---

### Параметр -Name
Вказує ім'я об'єкта.

### Параметр -Path
Вказує шлях до розташування.

### Параметр -Force
Примусово виконує дію без підтвердження.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetClipboard`

> Якщо вказано, копіює отриманий список рядків назад до системного буфера обміну після обробки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> Командлет `Export-NpsConfiguration` експортує конфігурацію сервера політики мережі (NPS) у файл .xml.

## Детальний опис

Командлет `Export-NpsConfiguration` експортує всю конфігурацію сервера NPS у файл у форматі .xml. Потім цю конфігурацію можна імпортувати на інший сервер NPS за допомогою командлета `Import-NpsConfiguration`. Цей командлет еквівалентний команді з консолі NPS, яка використовується для експорту конфігурації NPS.

Конфігурація експортується у вигляді рядка, а не у вигляді об'єкта XML. Тому ви не можете передати вихідні дані цього командлета в командлет `Import-NpsConfiguration`. Замість цього вкажіть файл .xml безпосередньо як вхідні дані для `Import-NpsConfiguration`.

## Приклад 1

```
PS C:\> Export-NpsConfiguration -Path 'C:\NpsConfig.xml'
```

Ця команда експортує конфігурацію NPS у файл з іменем C:\NpsConfig.xml.

## Приклад 2

```
PS C:\> Export-NpsConfiguration -Path 'C:\NpsConfig.xml' -Force
```

Ця команда експортує конфігурацію NPS у файл C:\NpsConfig.xml. Якщо файл вже існує, він буде перезаписаний.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> Не вставляйте думки моделі до історії розмови

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> Продовжити з останньої розмови

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> Увімкнути текст у мовлення для відповідей AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> Увімкнути текст у мовлення для відповідей AI-думок

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> Не зберігати сеанс у кеші сеансів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowDefaultTools`

> Увімкнути інструменти за замовчуванням для моделі ШІ.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> ###.NAME
    Get-DbaDbCheckSumUsage

###.SYNOPSIS
    Отримує інформацію про використання контрольної суми на сторінках бази даних.

###.SYNTAX
    Get-DbaDbCheckSumUsage [[-SqlInstance] <DbaInstanceParameter[]>] [[-Database] <Object[]>] [[-ExcludeDatabase] <Object[]>] [[-Threshold] <Int32>] [<CommonParameters>]

###.DESCRIPTION
    Ця функція повертає інформацію про кількість помилок контрольної суми, які сталися в базах даних на вказаному екземплярі SQL Server.

###.PARAMETERS
    -SqlInstance <DbaInstanceParameter[]>
        Параметри екземпляра SQL Server.

    -Database <Object[]>
        Цільова база даних.

    -ExcludeDatabase <Object[]>
        Бази даних, які слід виключити.

    -Threshold <Int32>
        Порогове значення для кількості помилок, щоб вважати базу даних проблемною.

    <CommonParameters>
        Ця функція підтримує загальні параметри: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable і OutVariable.

###.INPUTS
    System.String

###.OUTPUTS
    System.Object

###.NOTES
    Теги: Checksum, Database
    Автор: Автор скрипта

    Приклад використання:
        Get-DbaDbCheckSumUsage -SqlInstance 'МійСервер' -Database 'МояБазаДаних'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> Фільтрувати для певних типів блоків розмітки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Максимальна довжина зворотного виклику для викликів інструментів.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ScriptExecutionErrorFixPrompt.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Update-AllImageMetaData.md)
