# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize`

## Synopsis

> Перетворює дипломатичну або тактовну мову на пряму, чітку та однозначну мову.

## Description

Ця функція бере дипломатичну мову та перекладає її, щоб розкрити справжнє значення за ввічливими або політкоректними висловами. Вона використовує моделі штучного інтелекту для перетворення евфемізмів на прямі твердження, роблячи спілкування однозначним і легким для розуміння. Функція особливо корисна для аналізу політичних заяв, ділового листування або будь-якого тексту, де справжнє значення може бути приховане дипломатичною мовою.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Текст для перетворення з дипломатичної мови |
| `-Instructions` | String | — | — | 1 | `''` | .ПАРАМЕТР -ListAvailable
Показує завантажені модулі для змінної $PSHOME. Якщо вказати параметр -ListAvailable,
командлет отримує модулі, встановлені на комп'ютері, які можна імпортувати.
Командлет отримує модулі, встановлені в шляхах, зазначених у змінній оточення PSModulePath,
або в шляху до модуля, який вказано за допомогою параметра -Name (якщо він є повним шляхом,
а не ім'ям модуля).

Без параметрів командлет Get-Module отримує модулі, які вже імпортовано в сеанс.
Див. розділ "Приклад", щоб дізнатися, як порівняти імпортовані модулі зі встановленими,
які ще не імпортовано. |
| `-Temperature` | Double | — | — | Named | `0.0` | Температура для випадковості відповіді (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Тип запиту LLM |
| `-Model` | String | — | — | Named | — | Ідентифікатор моделі або шаблон для використання в операціях ШІ |
| `-ApiEndpoint` | String | — | — | Named | — | URL кінцевої точки API для операцій штучного інтелекту |
| `-ApiKey` | String | — | — | Named | — | Ключ API для автентифікованих операцій зі штучним інтелектом |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Вказує, що LLM не підтримує JSON-схеми |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Час очікування в секундах для операцій зі штучним інтелектом |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Скопіювати перетворений текст до буфера обміну |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс |
| `-Attachments` | Object[] | — | — | Named | — | Вкладення для включення в операцію ШІ. |
| `-ImageDetail` | String | — | — | Named | — | Рівень деталізації зображення для обробки AI. |
| `-Functions` | Object[] | — | — | Named | — | Функції для доступу до моделі ШІ. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Командлети, які відкриваються для моделі штучного інтелекту. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Імена функцій інструментів, які не потребують підтвердження. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Видаляє конфігурацію точки доступу Wi-Fi, збережену на комп'ютері.

.PARAMETER AccountName
    Вказує назву збереженої конфігурації точки доступу для видалення. Використовуйте аргумент * для видалення всіх конфігурацій.

.PARAMETER AdditionalInfo
    Не використовується. Приймає значення -AdditionalInfo $true, щоб вказати, що бажана додаткова інформація.

.PARAMETER Cellular
    Вказує, що конфігурація є стільниковою.

.PARAMETER ComputerName
    Вказує, що файл конфігурації слід скинути на віддалені комп'ютери з вказаними іменами.

.PARAMETER ConnectionType
    Вказує, що видаляється конфігурація точки доступу, яка використовує вказаний тип з'єднання.

.PARAMETER Cost
    Вказує, що видаляються конфігурації з вказаними значеннями вартості мережі.

.PARAMETER Description
    Вказує опис конфігурації точки доступу.

.PARAMETER ESSID
    Вказує ESSID (ідентифікатор набору базових служб) збереженої конфігурації точки доступу, яку потрібно видалити.

.PARAMETER InterfaceDescription
    Вказує опис інтерфейсу бездротової мережі, для якого видаляється збережена конфігурація.

.PARAMETER InterfaceGuid
    Вказує GUID інтерфейсу бездротової мережі, для якого видаляється збережена конфігурація.

.PARAMETER InterfaceIndex
    Вказує індекс інтерфейсу бездротової мережі, для якого видаляється збережена конфігурація.

.PARAMETER Name
    Вказує ім'я збереженої конфігурації точки доступу, яку потрібно видалити. Використовуйте символ зірочки (*) як символ підстановки.

.PARAMETER NetworkCategory
    Вказує категорію, призначену збереженій конфігурації точки доступу. Використовуйте цей параметр, щоб визначити, які конфігурації потрібно видалити.

.PARAMETER NetworkSwitch
    Вказує, що слід видалити збережену конфігурацію для комутатора мережі.

.PARAMETER Passport
    Не використовується. Параметр Passport створено, щоб забезпечити сценарії, де відбувається вхід через Passport.

.PARAMETER PayAsYouGo
    Вказує, що слід видалити збережену конфігурацію точки доступу з вказаною вартістю за використання.

.PARAMETER PHYType
    Вказує, що слід видалити збережену конфігурацію точки доступу з вказаним типом фізичного рівня.

.PARAMETER ProfileType
    Вказує профіль, який слід видалити з збереженої конфігурації точки доступу. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Продовжити з останньої операції ШІ. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Висловлюйте думки вголос під час обробки ШІ. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Вимкнути кешування сеансу для цієї операції. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Дозволити використання стандартних інструментів в операціях AI. |
| `-AudioTemperature` | Double | — | — | Named | — | Температура аудіо для генерації аудіо ШІ. |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для генерації відповіді ШІ. |
| `-CpuThreads` | Int32 | — | — | Named | — | Кількість потоків ЦП для використання в операціях AI. |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex для придушення в виході AI. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Розмір аудіоконтексту для обробки аудіо за допомогою ШІ. |
| `-SilenceThreshold` | Double | — | — | Named | — | Поріг тиші для обробки аудіо ШІ. |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за довжину для генерації послідовності ШІ. |
| `-EntropyThreshold` | Double | — | — | Named | — | Поріг ентропії для виведення штучного інтелекту. |
| `-LogProbThreshold` | Double | — | — | Named | — | Поріг логарифмічної ймовірності для виведення ШІ. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Без порогу мовлення для обробки аудіо штучним інтелектом. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Оператор PowerShell для створення спільних поштових скриньок у Exchange Online. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Нижче наведено опис командлета PowerShell, які допомагають керувати службами Windows. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Вимкнути VOX для виведення аудіо AI. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Використовуйте захоплення аудіо робочого столу для аудіо AI. |
| `-NoContext` | SwitchParameter | — | — | Named | — | .ПАРАМЕТР
    -Name <String>
        Вказує ім'я видаляємого збірного файлу.
        
        Необхідно?                true
        Позиція?                    1
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? True (ByValue, ByPropertyName)
        Приймати символи підстановки? false
        
    -ResourceGroupName <String>
        Вказує ім'я групи ресурсів.
        
        Необхідно?                true
        Позиція?                    0
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? True (ByPropertyName)
        Приймати символи підстановки? false
        
    -PassThru <SwitchParameter>
        Повертає об'єкт, який представляє елемент, з яким ви працюєте. За замовчуванням цей командлет не генерує жодних вихідних даних.
        
        Необхідно?                false
        Позиція?                    названий
        Значення за замовчуванням    False
        Приймати вхідні дані конвеєра? false
        Приймати символи підстановки? false
        
    -DefaultProfile <IAzureContextContainer>
        Облікові дані, обліковий запис, клієнт і підписка, що використовуються для зв'язку з Azure.
        
        Необхідно?                false
        Позиція?                    названий
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? false
        Приймати символи підстановки? false
        
    -Confirm <SwitchParameter>
        Запитує підтвердження перед виконанням командлета.
        
        Необхідно?                false
        Позиція?                    названий
        Значення за замовчуванням    false
        Приймати вхідні дані конвеєра? false
        Приймати символи підстановки? false
        
    -WhatIf <SwitchParameter>
        Показує, що станеться, якщо командлет виконається. Командлет не виконується.
        
        Необхідно?                false
        Позиція?                    названий
        Значення за замовчуванням    false
        Приймати вхідні дані конвеєра? false
        Приймати символи підстановки? false
        
    <CommonParameters>
        Цей командлет підтримує загальні параметри: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable і OutVariable. Для отримання додаткової інформації див. [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216). |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Використовуйте стратегію вибірки з пошуком променів для ШІ. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | ## SYNOPSIS

Відкриває з'єднання з мережевою папкою.

## SYNTAX

    New-PSDrive [-Name] <String> [-PSProvider] <String> [-Root] <String> [-Credential <PSCredential>] [-Persist] [-Scope <String>] [-Description <String>] [-UseTransaction] [-WhatIf] [-Confirm] [<CommonParameters>]

## DESCRIPTION

Командлет `New-PSDrive` створює тимчасовий або постійний диск, який відображається на локальну або мережеву папку. З'єднання з мережевою папкою може бути збережено за допомогою параметра `-Persist`.

## PARAMETERS

### -Credential <PSCredential>
Вказує облікові дані для доступу до мережевого ресурсу.

### -Description <String>
Вказує опис диска.

### -Name <String>
Вказує ім'я нового диска. Є обов'язковим.

### -Persist
Створює постійний диск, який зберігається після завершення поточної сесії.

### -PSProvider <String>
Вказує постачальника PowerShell. Обов'язковий.

### -Root <String>
Вказує шлях до кореневої папки диска. Є обов'язковим.

### -Scope <String>
Вказує область видимості диска.

### -UseTransaction
Додає команду до поточної транзакції.

### -WhatIf
Показує, що відбудеться в результаті виконання команди.

### -Confirm
Запитує підтвердження перед виконанням команди.

## INPUTS

### System.String

## OUTPUTS

### System.Management.Automation.PSDriveInfo

## NOTES

Цей командлет доступний у Windows і PowerShell Core для Windows.

## EXAMPLES

### Приклад 1: Створення мережевого диска

    New-PSDrive -Name "Z" -PSProvider FileSystem -Root "\\server\share" -Persist -Credential (Get-Credential)

## RELATED LINKS

[Out-Null](Out-Null.md)
[Get-PSDrive](Get-PSDrive.md)
[Remove-PSDrive](Remove-PSDrive.md) |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Виводьте лише блоки розмітки від ШІ. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Фільтр для типів блоків розмітки у виведенні ШІ. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальна довжина зворотного виклику для викликів інструментів. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Parameter Details

### `-Text <String>`

> Текст для перетворення з дипломатичної мови

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> .ПАРАМЕТР -ListAvailable
Показує завантажені модулі для змінної $PSHOME. Якщо вказати параметр -ListAvailable,
командлет отримує модулі, встановлені на комп'ютері, які можна імпортувати.
Командлет отримує модулі, встановлені в шляхах, зазначених у змінній оточення PSModulePath,
або в шляху до модуля, який вказано за допомогою параметра -Name (якщо він є повним шляхом,
а не ім'ям модуля).

Без параметрів командлет Get-Module отримує модулі, які вже імпортовано в сеанс.
Див. розділ "Приклад", щоб дізнатися, як порівняти імпортовані модулі зі встановленими,
які ще не імпортовано.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Температура для випадковості відповіді (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Тип запиту LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
### `-SetClipboard`

> Скопіювати перетворений текст до буфера обміну

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-Attachments <Object[]>`

> Вкладення для включення в операцію ШІ.

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

> Рівень деталізації зображення для обробки AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Object[]>`

> Функції для доступу до моделі ШІ.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <Object[]>`

> Командлети, які відкриваються для моделі штучного інтелекту.

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

> Імена функцій інструментів, які не потребують підтвердження.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> .SYNOPSIS
    Видаляє конфігурацію точки доступу Wi-Fi, збережену на комп'ютері.

.PARAMETER AccountName
    Вказує назву збереженої конфігурації точки доступу для видалення. Використовуйте аргумент * для видалення всіх конфігурацій.

.PARAMETER AdditionalInfo
    Не використовується. Приймає значення -AdditionalInfo $true, щоб вказати, що бажана додаткова інформація.

.PARAMETER Cellular
    Вказує, що конфігурація є стільниковою.

.PARAMETER ComputerName
    Вказує, що файл конфігурації слід скинути на віддалені комп'ютери з вказаними іменами.

.PARAMETER ConnectionType
    Вказує, що видаляється конфігурація точки доступу, яка використовує вказаний тип з'єднання.

.PARAMETER Cost
    Вказує, що видаляються конфігурації з вказаними значеннями вартості мережі.

.PARAMETER Description
    Вказує опис конфігурації точки доступу.

.PARAMETER ESSID
    Вказує ESSID (ідентифікатор набору базових служб) збереженої конфігурації точки доступу, яку потрібно видалити.

.PARAMETER InterfaceDescription
    Вказує опис інтерфейсу бездротової мережі, для якого видаляється збережена конфігурація.

.PARAMETER InterfaceGuid
    Вказує GUID інтерфейсу бездротової мережі, для якого видаляється збережена конфігурація.

.PARAMETER InterfaceIndex
    Вказує індекс інтерфейсу бездротової мережі, для якого видаляється збережена конфігурація.

.PARAMETER Name
    Вказує ім'я збереженої конфігурації точки доступу, яку потрібно видалити. Використовуйте символ зірочки (*) як символ підстановки.

.PARAMETER NetworkCategory
    Вказує категорію, призначену збереженій конфігурації точки доступу. Використовуйте цей параметр, щоб визначити, які конфігурації потрібно видалити.

.PARAMETER NetworkSwitch
    Вказує, що слід видалити збережену конфігурацію для комутатора мережі.

.PARAMETER Passport
    Не використовується. Параметр Passport створено, щоб забезпечити сценарії, де відбувається вхід через Passport.

.PARAMETER PayAsYouGo
    Вказує, що слід видалити збережену конфігурацію точки доступу з вказаною вартістю за використання.

.PARAMETER PHYType
    Вказує, що слід видалити збережену конфігурацію точки доступу з вказаним типом фізичного рівня.

.PARAMETER ProfileType
    Вказує профіль, який слід видалити з збереженої конфігурації точки доступу.

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

> Продовжити з останньої операції ШІ.

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

> Висловлюйте думки вголос під час обробки ШІ.

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

> Вимкнути кешування сеансу для цієї операції.

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

> Дозволити використання стандартних інструментів в операціях AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Температура аудіо для генерації аудіо ШІ.

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

> Температура для генерації відповіді ШІ.

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

> Кількість потоків ЦП для використання в операціях AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String[]>`

> Regex для придушення в виході AI.

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

> Розмір аудіоконтексту для обробки аудіо за допомогою ШІ.

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

> Поріг тиші для обробки аудіо ШІ.

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

> Штраф за довжину для генерації послідовності ШІ.

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

> Поріг ентропії для виведення штучного інтелекту.

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

> Поріг логарифмічної ймовірності для виведення ШІ.

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

> Без порогу мовлення для обробки аудіо штучним інтелектом.

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

> Оператор PowerShell для створення спільних поштових скриньок у Exchange Online.

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

> Нижче наведено опис командлета PowerShell, які допомагають керувати службами Windows.

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

> Вимкнути VOX для виведення аудіо AI.

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

> Використовуйте захоплення аудіо робочого столу для аудіо AI.

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

> .ПАРАМЕТР
    -Name <String>
        Вказує ім'я видаляємого збірного файлу.
        
        Необхідно?                true
        Позиція?                    1
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? True (ByValue, ByPropertyName)
        Приймати символи підстановки? false
        
    -ResourceGroupName <String>
        Вказує ім'я групи ресурсів.
        
        Необхідно?                true
        Позиція?                    0
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? True (ByPropertyName)
        Приймати символи підстановки? false
        
    -PassThru <SwitchParameter>
        Повертає об'єкт, який представляє елемент, з яким ви працюєте. За замовчуванням цей командлет не генерує жодних вихідних даних.
        
        Необхідно?                false
        Позиція?                    названий
        Значення за замовчуванням    False
        Приймати вхідні дані конвеєра? false
        Приймати символи підстановки? false
        
    -DefaultProfile <IAzureContextContainer>
        Облікові дані, обліковий запис, клієнт і підписка, що використовуються для зв'язку з Azure.
        
        Необхідно?                false
        Позиція?                    названий
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? false
        Приймати символи підстановки? false
        
    -Confirm <SwitchParameter>
        Запитує підтвердження перед виконанням командлета.
        
        Необхідно?                false
        Позиція?                    названий
        Значення за замовчуванням    false
        Приймати вхідні дані конвеєра? false
        Приймати символи підстановки? false
        
    -WhatIf <SwitchParameter>
        Показує, що станеться, якщо командлет виконається. Командлет не виконується.
        
        Необхідно?                false
        Позиція?                    названий
        Значення за замовчуванням    false
        Приймати вхідні дані конвеєра? false
        Приймати символи підстановки? false
        
    <CommonParameters>
        Цей командлет підтримує загальні параметри: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable і OutVariable. Для отримання додаткової інформації див. [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

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

> Використовуйте стратегію вибірки з пошуком променів для ШІ.

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

> ## SYNOPSIS

Відкриває з'єднання з мережевою папкою.

## SYNTAX

    New-PSDrive [-Name] <String> [-PSProvider] <String> [-Root] <String> [-Credential <PSCredential>] [-Persist] [-Scope <String>] [-Description <String>] [-UseTransaction] [-WhatIf] [-Confirm] [<CommonParameters>]

## DESCRIPTION

Командлет `New-PSDrive` створює тимчасовий або постійний диск, який відображається на локальну або мережеву папку. З'єднання з мережевою папкою може бути збережено за допомогою параметра `-Persist`.

## PARAMETERS

### -Credential <PSCredential>
Вказує облікові дані для доступу до мережевого ресурсу.

### -Description <String>
Вказує опис диска.

### -Name <String>
Вказує ім'я нового диска. Є обов'язковим.

### -Persist
Створює постійний диск, який зберігається після завершення поточної сесії.

### -PSProvider <String>
Вказує постачальника PowerShell. Обов'язковий.

### -Root <String>
Вказує шлях до кореневої папки диска. Є обов'язковим.

### -Scope <String>
Вказує область видимості диска.

### -UseTransaction
Додає команду до поточної транзакції.

### -WhatIf
Показує, що відбудеться в результаті виконання команди.

### -Confirm
Запитує підтвердження перед виконанням команди.

## INPUTS

### System.String

## OUTPUTS

### System.Management.Automation.PSDriveInfo

## NOTES

Цей командлет доступний у Windows і PowerShell Core для Windows.

## EXAMPLES

### Приклад 1: Створення мережевого диска

    New-PSDrive -Name "Z" -PSProvider FileSystem -Root "\\server\share" -Persist -Credential (Get-Credential)

## RELATED LINKS

[Out-Null](Out-Null.md)
[Get-PSDrive](Get-PSDrive.md)
[Remove-PSDrive](Remove-PSDrive.md)

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

> Виводьте лише блоки розмітки від ШІ.

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

> Фільтр для типів блоків розмітки у виведенні ШІ.

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
## Outputs

- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertFrom-CorporateSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SimularMovieTitles.md)
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
