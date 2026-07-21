# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat`

## Synopsis

> Створює інтерактивний сеанс аудіочату з моделлю LLM.

## Description

Ініціює голосову розмову з мовною моделлю, підтримуючи аудіо вхід та вихід. Функція керує записом аудіо, транскрипцією, запитами до моделі та відповідями у формі текстового синтезу мовлення. Підтримує кілька мовних моделей та різноманітні параметри конфігурації, включаючи керування вікнами, прискорення GPU та розширені функції обробки аудіо.

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-ShowToolChainInvocations] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Текст початкового запиту для надсилання моделі |
| `-Instructions` | String | — | — | 1 | — | .Зовнішній вигляд
Параметр Path визначає шлях, за яким виконується пошук.
Для пошуку інших елементів, крім файлів, використовуються параметри -Include, -Exclude, -Recurse, -Depth, -Force.
Якщо вказати параметр -Directory, пошук буде обмежено лише каталогами. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Масив шляхів до файлів для приєднання |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | Тип моделі Whisper для використання, за замовчуванням LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | Температура для розпізнавання аудіовводу (0.0-1.0) |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для випадковості відповіді (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | Параметр температури для контролю випадковості відповіді. |
| `-LanguageIn` | String | — | — | Named | — | Встановлює мову для виявлення |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Кількість потоків ЦП для використання, за замовчуванням 0 (авто) |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex для придушення токенів у виведенні |
| `-AudioContextSize` | Int32 | — | — | Named | — | Розмір аудіоконтексту |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | Поріг виявлення тиші (0..32767, за замовчуванням 30) |
| `-LengthPenalty` | Single | — | — | Named | — | Штраф за довжину |
| `-EntropyThreshold` | Single | — | — | Named | — | Поріг ентропії |
| `-LogProbThreshold` | Single | — | — | Named | — | Поріг логарифмічної ймовірності |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Поріг відсутності мовлення |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Тип запиту LLM |
| `-Model` | String | — | — | Named | — | Ідентифікатор моделі або шаблон для використання в операціях ШІ |
| `-ImageDetail` | String | — | — | Named | `'low'` | Рівень деталізації зображення |
| `-ApiEndpoint` | String | — | — | Named | — | URL кінцевої точки API для операцій штучного інтелекту |
| `-ApiKey` | String | — | — | Named | — | Ключ API для автентифікованих операцій зі штучним інтелектом |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Вказує, що LLM не підтримує JSON-схеми |
| `-ShowToolChainInvocations` | SwitchParameter | — | — | Named | — | Показує виклики ланцюжка інструментів у консолі |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Час очікування в секундах для операцій зі штучним інтелектом |
| `-ResponseFormat` | String | — | — | Named | `$null` | .SYNOPSIS
Повертає сертифікати, списки скасування сертифікатів та політики сертифікатів із сховища сертифікатів.

.DESCRIPTION
Командлет `Get-Certificate` отримує сертифікати з вказаних сховищ сертифікатів. Він може повертати сертифікати, списки скасування сертифікатів та політики сертифікатів. За замовчуванням командлет отримує всі сертифікати зі сховища My (особистого) поточного користувача. Ви можете вказувати різні сховища сертифікатів, використовуючи параметри `StoreLocation` та `StoreName`.

.PARAMETER StoreLocation
Вказує розташування сховища сертифікатів. Допустимі значення: CurrentUser, LocalMachine. За замовчуванням CurrentUser.

.PARAMETER StoreName
Вказує ім'я сховища сертифікатів. Допустимі значення: My, CA, Root, TrustedPublisher, Disallowed, AuthRoot, TrustedPeople, ClientAuthIssuer, Remote Desktop, SmartCardRoot, TrustedDevices, TrustedManu facturers. За замовчуванням My.

.PARAMETER FilePath
Вказує шлях до файлу сертифіката. Можна використовувати також конвеєр.

.PARAMETER Thumbprint
Вказує відбиток сертифіката.

.PARAMETER Subject
Вказує тему сертифіката.

.PARAMETER DNSName
Вказує DNS-ім'я сертифіката.

.PARAMETER Issuer
Вказує видавця сертифіката.

.PARAMETER EKU
Вказує розширені Атрибути призначення ключа.

.PARAMETER NotAfter
Повертає сертифікати з датою завершення дії пізніше або раніше вказаної дати.

.PARAMETER NotBefore
Повертає сертифікати з датою початку дії пізніше або раніше вказаної дати.

.PARAMETER IncludeChain
Вказує включити ланцюг сертифікатів у результати.

.PARAMETER IncludeRevocationInfo
Вказує включити інформацію про скасування сертифікатів.

.PARAMETER ListAvailable
Вказує отримати всі доступні сертифікати з усіх сховищ.

.EXAMPLE
```powershell
Get-Certificate
```
Цей приклад отримує всі сертифікати зі сховища My поточного користувача.

.EXAMPLE
```powershell
Get-Certificate -StoreLocation LocalMachine -StoreName Root
```
Цей приклад отримує всі сертифікати зі сховища Root локальної машини.

.EXAMPLE
```powershell
Get-Certificate -Thumbprint "0123456789ABCDEF0123456789ABCDEF01234567"
```
Цей приклад отримує один сертифікат за відбитком.

.NOTES
Додаткові відомості:
- Командлет Get-Certificate є частиною модуля PKI (Public Key Infrastructure).
- Для використання деяких параметрів можуть знадобитися права підвищеного рівня.
- Докладніше: https://docs.microsoft.com/powershell/module/pki/get-certificate

.LINK
[Get-Certificate](https://docs.microsoft.com/powershell/module/pki/get-certificate)

.LINK
[Set-Certificate](https://docs.microsoft.com/powershell/module/pki/set-certificate)

.LINK
[Import-Certificate](https://docs.microsoft.com/powershell/module/pki/import-certificate)

.INPUTS
System.String

.OUTPUTS
System.Security.Cryptography.X509Certificates.X509Certificate2

.ROLE
pki |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | Виводитиме лише блоки розмітки вказаних типів |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Масив визначень команд PowerShell для використання як інструментів |
| `-Functions` | ScriptBlock[] | — | — | Named | — | Масив ScriptBlock функцій інструментів, які потрібно надати LLM (передати через Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Набір назв функцій інструментів, які не вимагають підтвердження (пропускаються до Invoke-LLMQuery) |
| `-ChatMode` | String | — | — | Named | — | Режим чату для запиту LLM (пряма передача в Invoke-LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальна довжина зворотного виклику інструменту (пропускається до Invoke-LLMQuery) |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Командлет `Export-NpsConfiguration` експортує конфігурацію сервера політики мережі (NPS) у файл .xml.

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
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Продовжити з останньої розмови |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Вимкнути перетворення тексту в мовлення для відповідей AI. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Вимкнути перетворення тексту в мовлення для відповідей AI-роздуму |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Не використовуйте виявлення тиші для автоматичного припинення запису. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Чи використовувати захоплення звуку робочого столу замість введення з мікрофона |
| `-AudioDevice` | String | — | — | Named | — | Назва або GUID аудіопристрою (підтримує символи узагальнення, вибирає перший збіг) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Використовуйте настільний пристрій та пристрій для запису |
| `-NoContext` | SwitchParameter | — | — | Named | — | .SYNOPSIS
Отримує дерево властивостей об'єкта.

.DESCRIPTION
Цей командлет отримує властивості об'єкта за допомогою розширюваної системи типів.
Робота командлета полягає в отриманні об'єкта та поверненні опису всіх властивостей об'єкта.
Для цього командлету об'єкт — це будь-яке кероване програмне забезпеченням
, яке може бути представлено та кероване за допомогою PowerShell.

.PARAMETER InputObject
Об'єкт, для якого потрібно отримати властивості.

.PARAMETER View
Ім'я альтернативного подання, що визначає властивості, які мають відображатися.
Якщо ви не вказуєте це значення, відображаються властивості за замовчуванням.

.PARAMETER Depth
Вказує, скільки рівнів укладених об'єктів має бути розгорнуто в
вихідних даних. Значення за замовчуванням — 1. Значення за замовчуванням
можна замінити за допомогою змінної $FormatEnumerationLimit.

.PARAMETER Property
Вказує набір властивостей, які потрібно відобразити. Якщо властивість
існує, відображаються її значення. Якщо вона не існує, значення
дорівнює $null.

.PARAMETER ExcludeProperty
Вказує набір властивостей, які потрібно виключити з відображення.
Ці властивості не відображаються у вихідних даних.

.PARAMETER Force
Вказує командлету відображати всі властивості об'єкта, включаючи
властивості, які інакше були б приховані, такі як властивості з
атрибутом Hidden або властивості, визначені в розширеній системі
типів, які зазвичай приховані. Цей параметр не підтримується
всіма постачальниками.

.PARAMETER Expand
Вказує, чи мають властивості, що містять колекції, бути розгорнуті
та відображатися окремо.

.PARAMETER Sta
Запускає командлет з використанням однониткового апартаменту (STA).
Цей параметр доступний лише в Windows PowerShell.

.PARAMETER NoEnumerate
Вказує командлету не перераховувати колекції. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Використовувати стратегію променевого пошуку (beam search sampling) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Чи придушувати розпізнаний текст у вихідних даних |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не зберігати сеанс у кеші сеансів |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Ви будете виводити лише відповіді в блоках розмітки |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс |

## Examples

### New-LLMAudioChat -Query "Tell me about PowerShell" `     -Model "qwen2.5-14b-instruct" `     -Temperature 0.7

```powershell
New-LLMAudioChat -Query "Tell me about PowerShell" `
    -Model "qwen2.5-14b-instruct" `
    -Temperature 0.7
```

### llmaudiochat "What's the weather?" -DontSpeak

```powershell
llmaudiochat "What's the weather?" -DontSpeak
```

## Parameter Details

### `-Query <String>`

> Текст початкового запиту для надсилання моделі

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> .Зовнішній вигляд
Параметр Path визначає шлях, за яким виконується пошук.
Для пошуку інших елементів, крім файлів, використовуються параметри -Include, -Exclude, -Recurse, -Depth, -Force.
Якщо вказати параметр -Directory, пошук буде обмежено лише каталогами.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <String>`

> Тип моделі Whisper для використання, за замовчуванням LargeV3Turbo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'SmallEn'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Температура для розпізнавання аудіовводу (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
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
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> Параметр температури для контролю випадковості відповіді.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.01` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> Встановлює мову для виявлення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Language` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Кількість потоків ЦП для використання, за замовчуванням 0 (авто)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Regex для придушення токенів у виведенні

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Розмір аудіоконтексту

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> Поріг виявлення тиші (0..32767, за замовчуванням 30)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `30` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Single>`

> Штраф за довжину

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Single>`

> Поріг ентропії

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Single>`

> Поріг логарифмічної ймовірності

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Single>`

> Поріг відсутності мовлення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | `'ToolUse'` |
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
### `-ImageDetail <String>`

> Рівень деталізації зображення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'low'` |
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
### `-ShowToolChainInvocations`

> Показує виклики ланцюжка інструментів у консолі

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
### `-ResponseFormat <String>`

> .SYNOPSIS
Повертає сертифікати, списки скасування сертифікатів та політики сертифікатів із сховища сертифікатів.

.DESCRIPTION
Командлет `Get-Certificate` отримує сертифікати з вказаних сховищ сертифікатів. Він може повертати сертифікати, списки скасування сертифікатів та політики сертифікатів. За замовчуванням командлет отримує всі сертифікати зі сховища My (особистого) поточного користувача. Ви можете вказувати різні сховища сертифікатів, використовуючи параметри `StoreLocation` та `StoreName`.

.PARAMETER StoreLocation
Вказує розташування сховища сертифікатів. Допустимі значення: CurrentUser, LocalMachine. За замовчуванням CurrentUser.

.PARAMETER StoreName
Вказує ім'я сховища сертифікатів. Допустимі значення: My, CA, Root, TrustedPublisher, Disallowed, AuthRoot, TrustedPeople, ClientAuthIssuer, Remote Desktop, SmartCardRoot, TrustedDevices, TrustedManu facturers. За замовчуванням My.

.PARAMETER FilePath
Вказує шлях до файлу сертифіката. Можна використовувати також конвеєр.

.PARAMETER Thumbprint
Вказує відбиток сертифіката.

.PARAMETER Subject
Вказує тему сертифіката.

.PARAMETER DNSName
Вказує DNS-ім'я сертифіката.

.PARAMETER Issuer
Вказує видавця сертифіката.

.PARAMETER EKU
Вказує розширені Атрибути призначення ключа.

.PARAMETER NotAfter
Повертає сертифікати з датою завершення дії пізніше або раніше вказаної дати.

.PARAMETER NotBefore
Повертає сертифікати з датою початку дії пізніше або раніше вказаної дати.

.PARAMETER IncludeChain
Вказує включити ланцюг сертифікатів у результати.

.PARAMETER IncludeRevocationInfo
Вказує включити інформацію про скасування сертифікатів.

.PARAMETER ListAvailable
Вказує отримати всі доступні сертифікати з усіх сховищ.

.EXAMPLE
```powershell
Get-Certificate
```
Цей приклад отримує всі сертифікати зі сховища My поточного користувача.

.EXAMPLE
```powershell
Get-Certificate -StoreLocation LocalMachine -StoreName Root
```
Цей приклад отримує всі сертифікати зі сховища Root локальної машини.

.EXAMPLE
```powershell
Get-Certificate -Thumbprint "0123456789ABCDEF0123456789ABCDEF01234567"
```
Цей приклад отримує один сертифікат за відбитком.

.NOTES
Додаткові відомості:
- Командлет Get-Certificate є частиною модуля PKI (Public Key Infrastructure).
- Для використання деяких параметрів можуть знадобитися права підвищеного рівня.
- Докладніше: https://docs.microsoft.com/powershell/module/pki/get-certificate

.LINK
[Get-Certificate](https://docs.microsoft.com/powershell/module/pki/get-certificate)

.LINK
[Set-Certificate](https://docs.microsoft.com/powershell/module/pki/set-certificate)

.LINK
[Import-Certificate](https://docs.microsoft.com/powershell/module/pki/import-certificate)

.INPUTS
System.String

.OUTPUTS
System.Security.Cryptography.X509Certificates.X509Certificate2

.ROLE
pki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> Виводитиме лише блоки розмітки вказаних типів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` |
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
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Масив визначень команд PowerShell для використання як інструментів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <ScriptBlock[]>`

> Масив ScriptBlock функцій інструментів, які потрібно надати LLM (передати через Invoke-LLMQuery)

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

> Набір назв функцій інструментів, які не вимагають підтвердження (пропускаються до Invoke-LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatMode <String>`

> Режим чату для запиту LLM (пряма передача в Invoke-LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `chat` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Максимальна довжина зворотного виклику інструменту (пропускається до Invoke-LLMQuery)

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
### `-DontSpeak`

> Вимкнути перетворення тексту в мовлення для відповідей AI.

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

> Вимкнути перетворення тексту в мовлення для відповідей AI-роздуму

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

> Не використовуйте виявлення тиші для автоматичного припинення запису.

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

> Чи використовувати захоплення звуку робочого столу замість введення з мікрофона

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioDevice <String>`

> Назва або GUID аудіопристрою (підтримує символи узагальнення, вибирає перший збіг)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAndRecordingDevice`

> Використовуйте настільний пристрій та пристрій для запису

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

> .SYNOPSIS
Отримує дерево властивостей об'єкта.

.DESCRIPTION
Цей командлет отримує властивості об'єкта за допомогою розширюваної системи типів.
Робота командлета полягає в отриманні об'єкта та поверненні опису всіх властивостей об'єкта.
Для цього командлету об'єкт — це будь-яке кероване програмне забезпеченням
, яке може бути представлено та кероване за допомогою PowerShell.

.PARAMETER InputObject
Об'єкт, для якого потрібно отримати властивості.

.PARAMETER View
Ім'я альтернативного подання, що визначає властивості, які мають відображатися.
Якщо ви не вказуєте це значення, відображаються властивості за замовчуванням.

.PARAMETER Depth
Вказує, скільки рівнів укладених об'єктів має бути розгорнуто в
вихідних даних. Значення за замовчуванням — 1. Значення за замовчуванням
можна замінити за допомогою змінної $FormatEnumerationLimit.

.PARAMETER Property
Вказує набір властивостей, які потрібно відобразити. Якщо властивість
існує, відображаються її значення. Якщо вона не існує, значення
дорівнює $null.

.PARAMETER ExcludeProperty
Вказує набір властивостей, які потрібно виключити з відображення.
Ці властивості не відображаються у вихідних даних.

.PARAMETER Force
Вказує командлету відображати всі властивості об'єкта, включаючи
властивості, які інакше були б приховані, такі як властивості з
атрибутом Hidden або властивості, визначені в розширеній системі
типів, які зазвичай приховані. Цей параметр не підтримується
всіма постачальниками.

.PARAMETER Expand
Вказує, чи мають властивості, що містять колекції, бути розгорнуті
та відображатися окремо.

.PARAMETER Sta
Запускає командлет з використанням однониткового апартаменту (STA).
Цей параметр доступний лише в Windows PowerShell.

.PARAMETER NoEnumerate
Вказує командлету не перераховувати колекції.

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

> Використовувати стратегію променевого пошуку (beam search sampling)

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

> Чи придушувати розпізнаний текст у вихідних даних

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
### `-OutputMarkdownBlocksOnly`

> Ви будете виводити лише відповіді в блоках розмітки

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
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-GenXdevMCPToken.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-DeepLinkImageFile.md)
