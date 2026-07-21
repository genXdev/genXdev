# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat`

## Synopsis

> Запускає інтерактивний сеанс текстового чату з можливостями ШІ.

## Description

Ініціює інтерактивний сеанс чату з можливостями ШІ, що дозволяє користувачам додавати або видаляти функції PowerShell під час розмови та виконувати команди PowerShell. Ця функція надає комплексний інтерфейс для розмов на основі ШІ з широкими можливостями інтеграції інструментів та налаштування.

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoSupportForJsonSchema <String>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-ShowToolChainInvocations] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | ОЗНАЙОМЛЕННЯ З ДОПОВІДЯМИ

Параметри:
    -CimDocId <String>
        Вказує ідентифікатор документа CIM (Common Information Model), на основі якого потрібно повернути доповіді. Використовуйте цей параметр, щоб отримати деталі для конкретного документа. Цей параметр є обов'язковим.

        Обов'язковий?                true
        Позиція?                    1
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? False
        Приймати символи заміни?   False

    -ExcludeDocument [<SwitchParameter>]
        Вказує, що цей командлет виключає документ із результату. Використовуйте цей параметр, щоб повернути лише доповіді без документа.

        Обов'язковий?                false
        Позиція?                    Іменований
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? False
        Приймати символи заміни?   False

    -CimSession <CimSession>
        Запускає командлет у віддаленому сеансі або на віддаленому комп'ютері. Введіть ім'я комп'ютера або об'єкт сеансу, наприклад, вихідні дані командлета New-CimSession або Get-CimSession. Додаткові відомості див. у розділі about_CimSession.

        Обов'язковий?                false
        Позиція?                    Іменований
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? False
        Приймати символи заміни?   False

    -ThrottleLimit <Int32>
        Вказує максимальну кількість одночасних операцій, які можна виконати для запуску командлета. Якщо цей параметр пропущено або введено значення 0, Windows PowerShell обчислює оптимальний ліміт обмеження пропускної здатності на основу кількості командлетів CIM, які виконуються на комп'ютері. Ліміт обмеження пропускної здатності застосовується лише до поточного командлета, а не до сеансу чи комп'ютера.

        Обов'язковий?                false
        Позиція?                    Іменований
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? False
        Приймати символи заміни?   False

    <CommonParameters>
        Цей командлет підтримує загальні параметри: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable і OutVariable. Докладні відомості див. у розділі about_CommonParameters.


Вихідні дані
    Microsoft.Management.Infrastructure.CimInstance#root/microsoft/windows/Storage/Storage_Report
    Цей командлет повертає об'єкт(и) доповіді зберігання.


Примітки
    Командлет отримує дані доповіді зберігання з класу MSFT_StorageReport.


Приклад 1: Отримання доповідей
    PS C:\>Get-CimInstance -ClassName MSFT_StoragePool | Get-StorageReport *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | .Зовнішній вигляд
Параметр Path визначає шлях, за яким виконується пошук.
Для пошуку інших елементів, крім файлів, використовуються параметри -Include, -Exclude, -Recurse, -Depth, -Force.
Якщо вказати параметр -Directory, пошук буде обмежено лише каталогами. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Масив шляхів до файлів для приєднання |
| `-Temperature` | Double | — | — | 3 | `-1` | Температура для випадковості відповіді (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Рівень деталізації зображення |
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
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Тип запиту LLM |
| `-Model` | String | — | — | Named | — | Ідентифікатор моделі або шаблон для використання в операціях ШІ |
| `-ApiEndpoint` | String | — | — | Named | — | URL кінцевої точки API для операцій штучного інтелекту |
| `-ApiKey` | String | — | — | Named | — | Ключ API для автентифікованих операцій зі штучним інтелектом |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Вказує, що LLM не підтримує JSON-схеми |
| `-ShowToolChainInvocations` | SwitchParameter | — | — | Named | — | Показує виклики ланцюжка інструментів у консолі |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Час очікування в секундах для операцій зі штучним інтелектом |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Масив визначень команд PowerShell для використання як інструментів |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | Виводитиме лише блоки розмітки вказаних типів |
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
| `-Speak` | SwitchParameter | — | — | Named | — | Увімкнути текст у мовлення для відповідей AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Увімкнути текст у мовлення для відповідей AI-думок |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Ви будете виводити лише відповіді в блоках розмітки |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Використовується внутрішньо для виклику режиму чату лише один раз після виклику LLM *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не зберігати сеанс у кеші сеансів |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Назви функцій інструментів, які не повинні вимагати підтвердження |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальна довжина для відповідей зворотного виклику інструменту |
| `-AudioTemperature` | Object | — | — | Named | — | Температура для генерації аудіо |
| `-TemperatureResponse` | Object | — | — | Named | — | Температура для генерації відповіді |
| `-Language` | Object | — | — | Named | — | Мова для моделі чи виводу |
| `-CpuThreads` | Object | — | — | Named | — | Кількість потоків CPU для використання |
| `-SuppressRegex` | Object | — | — | Named | — | Регулярний вираз для придушення виводу |
| `-AudioContextSize` | Object | — | — | Named | — | Розмір аудіоконтексту для обробки |
| `-SilenceThreshold` | Object | — | — | Named | — | Поріг тиші для обробки аудіо |
| `-LengthPenalty` | Object | — | — | Named | — | Штраф за довжину для генерації послідовності |
| `-EntropyThreshold` | Object | — | — | Named | — | Поріг ентропії для фільтрації виведення |
| `-LogProbThreshold` | Object | — | — | Named | — | Поріг логарифмічної ймовірності для фільтрації виведення |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Відсутній поріг мовлення для виявлення аудіо |
| `-DontSpeak` | Object | — | — | Named | — | Вимкнути мовлення |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Вимкнути мовленнєвий вивід для думок |
| `-NoVOX` | Object | — | — | Named | — | Вимкнути VOX (голосову активацію) |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Використовувати захоплення звуку робочого столу |
| `-NoContext` | Object | — | — | Named | — | Вимкнути використання контексту |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Використовувати стратегію променевого пошуку (beam search sampling) |
| `-OnlyResponses` | Object | — | — | Named | — | Ви отримали доступ до допомоги для командлета ядра. Введіть Get-Help Get-Command для отримання допомоги щодо командлета Get-Command.

Оновлення довідки: Get-Help – Категорія: Довідка та підтримка.
- Онлайн-версія: https://go.microsoft.com/fwlink/?LinkId=403658
- З оновлень довідки: Get-Help про оновлення довідки
- Визначення командлета: Get-Help про довідку щодо командлета
- Робота з командами: Get-Help про команди
- Робота з постачальниками: Get-Help про постачальників
- Підтримка мов сценаріїв: Get-Help про мови сценаріїв
- Функції PowerShell: Get-Help про функції
- Визначення змінної: Get-Help про змінні
- Визначення URI: Get-Help про URI |

## Examples

### New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `     -Instructions "You are a helpful AI assistant"

```powershell
New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `
    -Instructions "You are a helpful AI assistant"
```

### llmchat "Tell me a joke" -Speak -IncludeThoughts

```powershell
llmchat "Tell me a joke" -Speak -IncludeThoughts
```

## Parameter Details

### `-Query <String>`

> ОЗНАЙОМЛЕННЯ З ДОПОВІДЯМИ

Параметри:
    -CimDocId <String>
        Вказує ідентифікатор документа CIM (Common Information Model), на основі якого потрібно повернути доповіді. Використовуйте цей параметр, щоб отримати деталі для конкретного документа. Цей параметр є обов'язковим.

        Обов'язковий?                true
        Позиція?                    1
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? False
        Приймати символи заміни?   False

    -ExcludeDocument [<SwitchParameter>]
        Вказує, що цей командлет виключає документ із результату. Використовуйте цей параметр, щоб повернути лише доповіді без документа.

        Обов'язковий?                false
        Позиція?                    Іменований
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? False
        Приймати символи заміни?   False

    -CimSession <CimSession>
        Запускає командлет у віддаленому сеансі або на віддаленому комп'ютері. Введіть ім'я комп'ютера або об'єкт сеансу, наприклад, вихідні дані командлета New-CimSession або Get-CimSession. Додаткові відомості див. у розділі about_CimSession.

        Обов'язковий?                false
        Позиція?                    Іменований
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? False
        Приймати символи заміни?   False

    -ThrottleLimit <Int32>
        Вказує максимальну кількість одночасних операцій, які можна виконати для запуску командлета. Якщо цей параметр пропущено або введено значення 0, Windows PowerShell обчислює оптимальний ліміт обмеження пропускної здатності на основу кількості командлетів CIM, які виконуються на комп'ютері. Ліміт обмеження пропускної здатності застосовується лише до поточного командлета, а не до сеансу чи комп'ютера.

        Обов'язковий?                false
        Позиція?                    Іменований
        Значення за замовчуванням    Немає
        Приймати вхідні дані конвеєра? False
        Приймати символи заміни?   False

    <CommonParameters>
        Цей командлет підтримує загальні параметри: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable і OutVariable. Докладні відомості див. у розділі about_CommonParameters.


Вихідні дані
    Microsoft.Management.Infrastructure.CimInstance#root/microsoft/windows/Storage/Storage_Report
    Цей командлет повертає об'єкт(и) доповіді зберігання.


Примітки
    Командлет отримує дані доповіді зберігання з класу MSFT_StorageReport.


Приклад 1: Отримання доповідей
    PS C:\>Get-CimInstance -ClassName MSFT_StoragePool | Get-StorageReport

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

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
### `-Temperature <Double>`

> Температура для випадковості відповіді (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `-1` |
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
| **Default value** | *(none)* |
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
| **Default value** | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` |
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
### `-NoConfirmationToolFunctionNames <String[]>`

> Назви функцій інструментів, які не повинні вимагати підтвердження

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Максимальна довжина для відповідей зворотного виклику інструменту

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Object>`

> Температура для генерації аудіо

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Object>`

> Температура для генерації відповіді

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <Object>`

> Мова для моделі чи виводу

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Object>`

> Кількість потоків CPU для використання

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <Object>`

> Регулярний вираз для придушення виводу

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Object>`

> Розмір аудіоконтексту для обробки

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Object>`

> Поріг тиші для обробки аудіо

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Object>`

> Штраф за довжину для генерації послідовності

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Object>`

> Поріг ентропії для фільтрації виведення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Object>`

> Поріг логарифмічної ймовірності для фільтрації виведення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Object>`

> Відсутній поріг мовлення для виявлення аудіо

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak <Object>`

> Вимкнути мовлення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts <Object>`

> Вимкнути мовленнєвий вивід для думок

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX <Object>`

> Вимкнути VOX (голосову активацію)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture <Object>`

> Використовувати захоплення звуку робочого столу

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext <Object>`

> Вимкнути використання контексту

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy <Object>`

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
### `-OnlyResponses <Object>`

> Ви отримали доступ до допомоги для командлета ядра. Введіть Get-Help Get-Command для отримання допомоги щодо командлета Get-Command.

Оновлення довідки: Get-Help – Категорія: Довідка та підтримка.
- Онлайн-версія: https://go.microsoft.com/fwlink/?LinkId=403658
- З оновлень довідки: Get-Help про оновлення довідки
- Визначення командлета: Get-Help про довідку щодо командлета
- Робота з командами: Get-Help про команди
- Робота з постачальниками: Get-Help про постачальників
- Підтримка мов сценаріїв: Get-Help про мови сценаріїв
- Функції PowerShell: Get-Help про функції
- Визначення змінної: Get-Help про змінні
- Визначення URI: Get-Help про URI

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-LLMAudioChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-DeepLinkImageFile.md)
