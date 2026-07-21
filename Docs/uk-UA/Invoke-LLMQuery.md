# Invoke-LLMQuery

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `qllm`, `llm`

## Synopsis

> Надсилає запити до API завершення чату сумісного з OpenAI Large Language Chat та обробляє відповіді.

## Description

Ця функція надсилає запити до сумісного з OpenAI API великої мовної моделі для завершення чату та обробляє відповіді. Вона підтримує текстові та графічні вхідні дані, обробляє виклики функцій інструментів і може працювати в різних режимах чату, включаючи текстовий та аудіо.

Функція забезпечує всебічну підтримку взаємодії з LLM, включаючи:
- Обробку текстових і графічних вхідних даних
- Виклики функцій інструментів та виконання команд
- Інтерактивні режими чату (текстовий та аудіо)
- Ініціалізацію та налаштування моделі
- Форматування та обробку відповідей
- Керування сеансами та кешування
- Позиціонування вікон і контроль відображення

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilterForJsonOutput] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-QuietToolChainInvocations] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | ОЗНАЙОМЛЕННЯ З ДОПОВІДЯМИ

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
    PS C:\>Get-CimInstance -ClassName MSFT_StoragePool | Get-StorageReport |
| `-Instructions` | String | — | — | 1 | — | .Зовнішній вигляд
Параметр Path визначає шлях, за яким виконується пошук.
Для пошуку інших елементів, крім файлів, використовуються параметри -Include, -Exclude, -Recurse, -Depth, -Force.
Якщо вказати параметр -Directory, пошук буде обмежено лише каталогами. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Масив шляхів до файлів для приєднання |
| `-ResponseFormat` | String | — | — | Named | — | .SYNOPSIS
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
| `-Temperature` | Double | — | — | Named | `-1` | Температура для випадковості відповіді (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Масив визначень функцій |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Масив визначень команд PowerShell для використання як інструментів |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Функції інструментів, які не потребують підтвердження користувача |
| `-QuietToolChainInvocations` | SwitchParameter | — | — | Named | — | Пригнічує вивід Write-Host під час проміжних викликів ланцюжка інструментів. |
| `-ImageDetail` | String | — | — | Named | `'low'` | Рівень деталізації зображення |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Тип запиту LLM |
| `-Model` | String | — | — | Named | — | Ідентифікатор моделі або шаблон для використання в операціях ШІ |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | URL кінцевої точки API для операцій штучного інтелекту |
| `-ApiKey` | String | — | — | Named | — | Ключ API для автентифікованих операцій зі штучним інтелектом |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Вказує, що LLM не підтримує JSON-схеми |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Час очікування в секундах для операцій зі штучним інтелектом |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-AudioTemperature` | Double | — | — | Named | — | Температура для випадковості генерації аудіо |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для випадковості відповідей (аудіочат) |
| `-Language` | String | — | — | Named | — | Код мови або назва для аудіочату |
| `-CpuThreads` | Int32 | — | — | Named | — | Кількість потоків ЦП, які використовувати для аудіочату |
| `-SuppressRegex` | String | — | — | Named | — | Регулярний вираз для придушення певних вихідних даних в аудіочаті |
| `-AudioContextSize` | Int32 | — | — | Named | — | Розмір аудіоконтексту для аудіочату |
| `-SilenceThreshold` | Double | — | — | Named | — | Поріг тиші для аудіочату |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за довжину для відповідей в аудіочаті |
| `-EntropyThreshold` | Double | — | — | Named | — | Поріг ентропії для аудіочату |
| `-LogProbThreshold` | Double | — | — | Named | — | Порогове значення логарифмічної ймовірності для аудіочату |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Відсутній поріг мовлення для аудіочату |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Дозволяє створити та налаштувати мережевий фільтр. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Не вставляйте зображення чи будь-що інше. Просто перекладіть вміст якомога пряміше на українську (Україна). |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Вимкнути VOX (голосову активацію) для аудіочату |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Використовувати захоплення аудіо з робочого столу для аудіочату |
| `-NoContext` | SwitchParameter | — | — | Named | — | Вимкнути контекст для аудіочату |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Використовувати стратегію променевого пошуку для аудіо чату |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | ПЕРЕКЛАД

.MII$ClixmlExporter

Опис
Експортує вміст блокнота до файлу у форматі CLIXML.

Синтаксис
.MII$ClixmlExporter [-Path] <string> [[-Force] <bool>] [<CommonParameters>]

Опис
Командлет .MII$ClixmlExporter експортує поточний вміст блокнота PowerShell у файл у форматі CLIXML.
Файли CLIXML — це серіалізовані файли XML, які можна імпортувати до PowerShell за допомогою командлета Import-Clixml.

Приклад
PS> .MII$ClixmlExporter -Path C:\\Temp\\notebook.clixml
Приклад експортує поточний блокнот PowerShell до файлу C:\Temp\notebook.clixml.

Параметри
-Path <string>
Шлях до файлу CLIXML для створення.

-Force <bool>
Перезаписує існуючий файл без попередження.

<CommonParameters>
Цей командлет підтримує загальні параметри: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable та OutVariable. |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Виключити хід думок з історії розмови |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Продовжити з останньої розмови |
| `-Speak` | SwitchParameter | — | — | Named | — | Увімкнути текст у мовлення для відповідей AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Увімкнути текст у мовлення для відповідей AI-думок |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Ви будете виводити лише відповіді в блоках розмітки |
| `-FilterForJsonOutput` | SwitchParameter | — | — | Named | — | Витягує найзовнішній об'єкт або масив JSON з відповіді, відкидаючи маркдаун-огорожі та навколишній текст. Автоматично вмикається, коли встановлено -ResponseFormat; використовуйте цей перемикач, щоб примусово застосувати його для звичайних текстових викликів, які очікують виведення JSON. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | Виводитиме лише блоки розмітки вказаних типів |
| `-ChatMode` | String | — | — | Named | — | Увімкнути режим чату |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Використовується внутрішньо для виклику режиму чату лише один раз після виклику LLM |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не зберігати сеанс у кеші сеансів |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | Максимальна довжина виведення зворотного виклику інструменту в символах. Якщо виведення перевищує цю довжину, воно буде обрізано з попереджувальним повідомленням. За замовчуванням — 100 000 символів. |

## Examples

### Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7

```powershell
Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7
```

Надсилає простий математичний запит до моделі qwen із заданою температурою.

### qllm "What is 2+2?" -Model "qwen"

```powershell
qllm "What is 2+2?" -Model "qwen"
```

Використовує псевдонім для надсилання запиту з параметрами за замовчуванням.

### Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"

```powershell
Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"
```

Надсилає запит із вкладеним зображенням для аналізу.

### llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"

```powershell
llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"
```

Запускає інтерактивний сеанс текстового чату з вказаною моделлю.

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
| **Accept pipeline input?** | False |
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
| **Default value** | *(none)* |
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
### `-Functions <Collections.Hashtable[]>`

> Масив визначень функцій

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-NoConfirmationToolFunctionNames <String[]>`

> Функції інструментів, які не потребують підтвердження користувача

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-QuietToolChainInvocations`

> Пригнічує вивід Write-Host під час проміжних викликів ланцюжка інструментів.

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
### `-LLMQueryType <String>`

> Тип запиту LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'SimpleIntelligence'` |
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
### `-Gpu <Int32>`

> The `-Gpu` parameter.

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
### `-AudioTemperature <Double>`

> Температура для випадковості генерації аудіо

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

> Температура для випадковості відповідей (аудіочат)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Код мови або назва для аудіочату

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

> Кількість потоків ЦП, які використовувати для аудіочату

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

> Регулярний вираз для придушення певних вихідних даних в аудіочаті

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

> Розмір аудіоконтексту для аудіочату

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

> Поріг тиші для аудіочату

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

> Штраф за довжину для відповідей в аудіочаті

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

> Поріг ентропії для аудіочату

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

> Порогове значення логарифмічної ймовірності для аудіочату

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

> Відсутній поріг мовлення для аудіочату

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

> Дозволяє створити та налаштувати мережевий фільтр.

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

> Не вставляйте зображення чи будь-що інше. Просто перекладіть вміст якомога пряміше на українську (Україна).

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

> Вимкнути VOX (голосову активацію) для аудіочату

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

> Використовувати захоплення аудіо з робочого столу для аудіочату

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

> Вимкнути контекст для аудіочату

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

> Використовувати стратегію променевого пошуку для аудіо чату

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

> ПЕРЕКЛАД

.MII$ClixmlExporter

Опис
Експортує вміст блокнота до файлу у форматі CLIXML.

Синтаксис
.MII$ClixmlExporter [-Path] <string> [[-Force] <bool>] [<CommonParameters>]

Опис
Командлет .MII$ClixmlExporter експортує поточний вміст блокнота PowerShell у файл у форматі CLIXML.
Файли CLIXML — це серіалізовані файли XML, які можна імпортувати до PowerShell за допомогою командлета Import-Clixml.

Приклад
PS> .MII$ClixmlExporter -Path C:\\Temp\\notebook.clixml
Приклад експортує поточний блокнот PowerShell до файлу C:\Temp\notebook.clixml.

Параметри
-Path <string>
Шлях до файлу CLIXML для створення.

-Force <bool>
Перезаписує існуючий файл без попередження.

<CommonParameters>
Цей командлет підтримує загальні параметри: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable та OutVariable.

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

> Виключити хід думок з історії розмови

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
### `-FilterForJsonOutput`

> Витягує найзовнішній об'єкт або масив JSON з відповіді, відкидаючи маркдаун-огорожі та навколишній текст. Автоматично вмикається, коли встановлено -ResponseFormat; використовуйте цей перемикач, щоб примусово застосувати його для звичайних текстових викликів, які очікують виведення JSON.

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
| **Default value** | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatMode <String>`

> Увімкнути режим чату

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `chat` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce`

> Використовується внутрішньо для виклику режиму чату лише один раз після виклику LLM

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
### `-MaxToolcallBackLength <Int32>`

> Максимальна довжина виведення зворотного виклику інструменту в символах. Якщо виведення перевищує цю довжину, воно буде обрізано з попереджувальним повідомленням. За замовчуванням — 100 000 символів.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `100000` |
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
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMBooleanEvaluation.md)
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
