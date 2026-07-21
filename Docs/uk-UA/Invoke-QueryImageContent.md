# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Аналізує вміст зображення за допомогою можливостей AI зору

## Description

Обробляє зображення за допомогою можливостей AI vision для аналізу вмісту та відповіді на запити щодо зображення. Функція підтримує різні параметри аналізу, включаючи контроль температури для випадковості відповідей та обмеження токенів для довжини виведення.

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | Рядок запиту для аналізу зображення |
| `-ImagePath` | String | ✅ | — | 1 | — | Шлях до файлу зображення для аналізу |
| `-Instructions` | String | — | — | 2 | — | .Зовнішній вигляд
Параметр Path визначає шлях, за яким виконується пошук.
Для пошуку інших елементів, крім файлів, використовуються параметри -Include, -Exclude, -Recurse, -Depth, -Force.
Якщо вказати параметр -Directory, пошук буде обмежено лише каталогами. |
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
| `-Temperature` | Double | — | — | Named | `-1` | Температура для випадковості відповіді (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Рівень деталізації зображення |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | Тип запиту LLM |
| `-Model` | String | — | — | Named | — | Ідентифікатор моделі або шаблон для використання в операціях ШІ |
| `-ApiEndpoint` | String | — | — | Named | — | URL кінцевої точки API для операцій штучного інтелекту |
| `-ApiKey` | String | — | — | Named | — | Ключ API для автентифікованих операцій зі штучним інтелектом |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Вказує, що LLM не підтримує JSON-схеми |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Час очікування в секундах для операцій зі штучним інтелектом |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
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
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс |
| `-Functions` | String[] | — | — | Named | — | Визначає функції для використання в операції штучного інтелекту. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Визначає оприлюднені командлети для операції AI. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Визначає імена функцій інструментів, які не потребують підтвердження. |
| `-AudioTemperature` | Double | — | — | Named | — | Температура для генерації аудіовідповіді. |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для генерації відповіді. |
| `-Language` | String | — | — | Named | — | Мова для згенерованих описів та ключових слів |
| `-CpuThreads` | Int32 | — | — | Named | — | Кількість потоків ЦП для використання. |
| `-SuppressRegex` | String | — | — | Named | — | Регулярний вираз для придушення виведення. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Розмір аудіоконтексту для обробки. |
| `-SilenceThreshold` | Double | — | — | Named | — | Поріг тиші для обробки аудіо. |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за довжину для генерації послідовності. |
| `-EntropyThreshold` | Double | — | — | Named | — | Поріг ентропії для фільтрації виведення. |
| `-LogProbThreshold` | Double | — | — | Named | — | Поріг логарифмічної ймовірності для фільтрації виводу. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Відсутній поріг мовлення для виявлення аудіо. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Якщо вказано, не промовляйте вихідні дані. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Отримує параметри Get-Help
.DESCRIPTION
    Отримує параметри Get-Help |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Якщо вказано, вимикає VOX. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Якщо вказано, використовувати захоплення звуку робочого столу. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Якщо вказано, вимикає використання контексту. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Якщо вказано, використовуйте стратегію вибірки променевого пошуку. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Якщо вказано, повертати лише відповіді. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Якщо вказано, не додавати думки до історії. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Продовжте останню розмову. |
| `-Speak` | SwitchParameter | — | — | Named | — | Наступний текст — це довідка PowerShell для cmdlet `Set-Variable`. 

## SHORT DESCRIPTION
Дозволяє змінювати значення змінної.

## LONG DESCRIPTION
Cmdlet `Set-Variable` призначений для зміни значення вказаної змінної. Він дозволяє змінювати як значення, так і атрибути змінної, такі як видимість, опис або параметри. Ви можете використовувати цей cmdlet для встановлення нових значень або для зміни існуючих змінних у поточному сеансі. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Говори думки моделі. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Отримує файли та папки з поточної або вказаної локації.
.DESCRIPTION
    Командлет Get-ChildItem отримує файли та папки з одного або кількох вказаних місць. Він повертає об'єкти, які представляють файли та папки, і може використовувати параметри для фільтрації результатів.
.PARAMETER Path
    Вказує шлях до локації, з якої потрібно отримати файли та папки. Приймає один або кілька шляхів.
.PARAMETER Filter
    Вказує рядок фільтра для вибору певних файлів або папок. Наприклад, '* .txt' для вибору всіх текстових файлів.
.PARAMETER Include
    Вказує масив рядків, які використовуються як шаблони включення. Враховуються лише ті елементи, які відповідають цим шаблонам.
.PARAMETER Exclude
    Вказує масив рядків, які використовуються як шаблони виключення. Елементи, що відповідають цим шаблонам, виключаються з результатів.
.PARAMETER Recurse
    Вказує, що командлет повинен рекурсивно отримувати файли та папки з усіх підкаталогів вказаного шляху.
.PARAMETER Depth
    Вказує максимальну глибину рекурсії. Використовується разом з параметром Recurse.
.PARAMETER Force
    Вказує, що командлет повинен отримувати також приховані та системні файли.
.PARAMETER Name
    Вказує, що командлет повинен повертати лише імена файлів та папок, а не повні об'єкти.
.INPUTS
    System.String
        Ви можете передати шлях як рядок по конвеєру.
.OUTPUTS
    System.IO.FileInfo, System.IO.DirectoryInfo
        Командлет повертає об'єкти FileInfo або DirectoryInfo.
.EXAMPLE
    Get-ChildItem -Path C:\Windows
.EXAMPLE
    Get-ChildItem -Path C:\Windows -Filter *.dll -Recurse
.EXAMPLE
    Get-ChildItem -Path C:\Windows -Include *.dll, *.exe -Exclude *.log
.NOTES
    Ви можете використовувати псевдоніми 'dir', 'ls' або 'gci' для цього командлета. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Фільтр для типів блоків розмітки. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Якщо вказано, спілкуватися лише один раз. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Вимкнути кешування сеансу. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальна довжина зворотного виклику для викликів інструментів. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Примусова вказівка на отримання згоди, навіть якщо налаштовано для встановлення пакету ImageSharp. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматично погоджуватися на встановлення стороннього програмного забезпечення та встановлювати постійний прапорець для пакетів ImageSharp. |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

Аналізує зображення з обмеженнями температури та токенів.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

Простий аналіз зображення за допомогою псевдонімів та позиційних параметрів.

## Parameter Details

### `-Query <String>`

> Рядок запиту для аналізу зображення

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImagePath <String>`

> Шлях до файлу зображення для аналізу

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
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
| **Position?** | 2 |
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
### `-ImageDetail <String>`

> Рівень деталізації зображення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'high'` |
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
| **Default value** | `'Pictures'` |
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
### `-Functions <String[]>`

> Визначає функції для використання в операції штучного інтелекту.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <String[]>`

> Визначає оприлюднені командлети для операції AI.

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

> Визначає імена функцій інструментів, які не потребують підтвердження.

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

> Температура для генерації аудіовідповіді.

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
### `-Language <String>`

> Мова для згенерованих описів та ключових слів

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

> Регулярний вираз для придушення виведення.

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

> Якщо вказано, не промовляйте вихідні дані.

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

> .SYNOPSIS
    Отримує параметри Get-Help
.DESCRIPTION
    Отримує параметри Get-Help

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

> Якщо вказано, вимикає VOX.

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

> Якщо вказано, використовувати захоплення звуку робочого столу.

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

> Якщо вказано, вимикає використання контексту.

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

> Якщо вказано, використовуйте стратегію вибірки променевого пошуку.

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

> Якщо вказано, повертати лише відповіді.

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

> Якщо вказано, не додавати думки до історії.

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

> Продовжте останню розмову.

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

> Наступний текст — це довідка PowerShell для cmdlet `Set-Variable`. 

## SHORT DESCRIPTION
Дозволяє змінювати значення змінної.

## LONG DESCRIPTION
Cmdlet `Set-Variable` призначений для зміни значення вказаної змінної. Він дозволяє змінювати як значення, так і атрибути змінної, такі як видимість, опис або параметри. Ви можете використовувати цей cmdlet для встановлення нових значень або для зміни існуючих змінних у поточному сеансі.

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

> Говори думки моделі.

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

> .SYNOPSIS
    Отримує файли та папки з поточної або вказаної локації.
.DESCRIPTION
    Командлет Get-ChildItem отримує файли та папки з одного або кількох вказаних місць. Він повертає об'єкти, які представляють файли та папки, і може використовувати параметри для фільтрації результатів.
.PARAMETER Path
    Вказує шлях до локації, з якої потрібно отримати файли та папки. Приймає один або кілька шляхів.
.PARAMETER Filter
    Вказує рядок фільтра для вибору певних файлів або папок. Наприклад, '* .txt' для вибору всіх текстових файлів.
.PARAMETER Include
    Вказує масив рядків, які використовуються як шаблони включення. Враховуються лише ті елементи, які відповідають цим шаблонам.
.PARAMETER Exclude
    Вказує масив рядків, які використовуються як шаблони виключення. Елементи, що відповідають цим шаблонам, виключаються з результатів.
.PARAMETER Recurse
    Вказує, що командлет повинен рекурсивно отримувати файли та папки з усіх підкаталогів вказаного шляху.
.PARAMETER Depth
    Вказує максимальну глибину рекурсії. Використовується разом з параметром Recurse.
.PARAMETER Force
    Вказує, що командлет повинен отримувати також приховані та системні файли.
.PARAMETER Name
    Вказує, що командлет повинен повертати лише імена файлів та папок, а не повні об'єкти.
.INPUTS
    System.String
        Ви можете передати шлях як рядок по конвеєру.
.OUTPUTS
    System.IO.FileInfo, System.IO.DirectoryInfo
        Командлет повертає об'єкти FileInfo або DirectoryInfo.
.EXAMPLE
    Get-ChildItem -Path C:\Windows
.EXAMPLE
    Get-ChildItem -Path C:\Windows -Filter *.dll -Recurse
.EXAMPLE
    Get-ChildItem -Path C:\Windows -Include *.dll, *.exe -Exclude *.log
.NOTES
    Ви можете використовувати псевдоніми 'dir', 'ls' або 'gci' для цього командлета.

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

> Фільтр для типів блоків розмітки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce`

> Якщо вказано, спілкуватися лише один раз.

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

> Вимкнути кешування сеансу.

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
### `-ForceConsent`

> Примусова вказівка на отримання згоди, навіть якщо налаштовано для встановлення пакету ImageSharp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> Автоматично погоджуватися на встановлення стороннього програмного забезпечення та встановлювати постійний прапорець для пакетів ImageSharp.

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
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Update-AllImageMetaData.md)
