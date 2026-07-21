# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt`

## Synopsis

> Захоплює повідомлення про помилки з різних потоків та використовує LLM для пропонування виправлень.

## Description

Цей командлет захоплює повідомлення про помилки з різних потоків PowerShell (вхідні дані конвеєра, докладні, інформаційні, помилки та попередження) та формує структурований запит для LLM для аналізу та пропозиції виправлень. Потім він виконує запит LLM і повертає запропоноване рішення.

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoSupportForJsonSchema <String>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | Скрипт для виконання та аналізу помилок |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для випадковості відповіді (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Тип запиту LLM |
| `-Model` | String | — | — | Named | — | Ідентифікатор моделі або шаблон для використання в операціях ШІ |
| `-ApiEndpoint` | String | — | — | Named | — | URL кінцевої точки API для операцій штучного інтелекту |
| `-ApiKey` | String | — | — | Named | — | Ключ API для автентифікованих операцій зі штучним інтелектом |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Вказує, що LLM не підтримує JSON-схеми |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Час очікування в секундах для операцій зі штучним інтелектом |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Масив визначень функцій |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | Масив визначень команд PowerShell для використання як інструментів |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Масив назв команд, які не вимагають підтвердження |
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
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не зберігати сеанс у кеші сеансів |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс |
| `-Attachments` | Object | — | — | Named | — | Вкладення для включення в запит LLM. |
| `-ImageDetail` | Object | — | — | Named | — | Рівень деталізації зображення для запиту LLM. |
| `-TTLSeconds` | Object | — | — | Named | — | Час життя в секундах для запиту до LLM. |
| `-IncludeThoughts` | Object | — | — | Named | — | .
.SYNOPSIS
Надсилає HTTP-запит до PowerShell доставити команди для виконання.

.SYNTAX
Invoke-RestMethod [-Uri] <Uri> [-Method <WebRequestMethod>] [-Body <Object>] [-Headers <IDictionary>] [-ContentType <String>] [-UseDefaultCredentials] [-SessionVariable <String>] [-UserAgent <String>] [-TimeoutSec <Int32>] [-Certificate <X509Certificate>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-MaximumRedirection <Int32>] [-DisableKeepAlive] [-DisableRedirect] [-UseBasicParsing] [-OutFile <String>] [-PassThru] [-TransferEncoding <String>] [-SkipCertificateCheck] [-SkipHeaderValidation] [-CustomMethod <String>] [-Resume] [-StatusCodeVariable <String>] [<CommonParameters>]

.DESCRIPTION
Командлет `Invoke-RestMethod` надсилає HTTP-запит (або HTTPS) до веб-сервера, який очікує повернення структурованих даних (наприклад, JSON, XML, HTML). Повертає оброблені дані, а не сиру відповідь. Підтримує автентифікацію, проксі, сертифікати та інші параметри. Використовується для взаємодії з RESTful API.

.Параметри
-Uri <Uri>
    URL-адреса кінцевої точки REST.

-Method <WebRequestMethod>
    HTTP-метод (GET, POST, PUT, DELETE тощо). За замовчуванням GET.

-Body <Object>
    Дані, які надсилаються в тілі запиту. Може бути рядком, хеш-таблицею або об'єктом, який буде серіалізовано у формат JSON.

-Headers <IDictionary>
    Хеш-таблиця заголовків HTTP.

-ContentType <String>
    Тип вмісту тіла запиту (наприклад, application/json).

-UseDefaultCredentials
    Використовувати облікові дані поточного користувача Windows для автентифікації.

-SessionVariable <String>
    Ім'я змінної сесії для збереження веб-сесії.

-UserAgent <String>
    Рядок User Agent для запиту.

-TimeoutSec <Int32>
    Час очікування у секундах.

-Certificate <X509Certificate>
    Сертифікат клієнта для автентифікації.

-Proxy <Uri>
    Проксі-сервер.

-ProxyCredential <PSCredential>
    Облікові дані для проксі.

-ProxyUseDefaultCredentials
    Використовувати облікові дані за замовчуванням для проксі.

-MaximumRedirection <Int32>
    Максимальна кількість перенаправлень. За замовчуванням 5.

-DisableKeepAlive
    Вимкнути постійне з'єднання.

-DisableRedirect
    Заборонити автоматичне перенаправлення.

-UseBasicParsing
    Використовувати базовий парсинг відповіді.

-OutFile <String>
    Шлях для збереження відповіді у файл.

-PassThru
    Повертає базовий об'єкт HttpResponseMessage.

-TransferEncoding <String>
    Тип кодування передачі (chunked).

-SkipCertificateCheck
    Пропустити перевірку сертифіката.

-SkipHeaderValidation
    Пропустити перевірку заголовків.

-CustomMethod <String>
    Довільний HTTP-метод.

-Resume
    Продовжити завантаження файлу, вказаного в -OutFile.

-StatusCodeVariable <String>
    Ім'я змінної для збереження коду статусу HTTP.

.ПРИКЛАДИ
Приклад 1: Отримання даних
    Invoke-RestMethod -Uri 'https://api.example.com/users/1' -Method GET

Приклад 2: Створення ресурсу
    $body = @{ name = 'John'; email = 'john@example.com' }
    Invoke-RestMethod -Uri 'https://api.example.com/users' -Method POST -Body ($body | ConvertTo-Json) -ContentType 'application/json'

Приклад 3: Оновлення ресурсу
    $body = @{ name = 'Jane' }
    Invoke-RestMethod -Uri 'https://api.example.com/users/1' -Method PUT -Body ($body | ConvertTo-Json) -ContentType 'application/json'

Приклад 4: Видалення ресурсу
    Invoke-RestMethod -Uri 'https://api.example.com/users/1' -Method DELETE

.INPUTS
Можна передати об'єкт через конвеєр до параметра -Body.

.OUTPUTS
PSObject або примітивний тип. Повертає розібрані дані відповіді.

.NOTES
Командлет використовує .NET класи HttpWebRequest і WebResponse. |
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | ## .NOTES
Ім'я модуля: Hyper-V
Повністю кваліфіковане ім'я модуля: [Microsoft.HyperV.PowerShell]
## .DESCRIPTION
Команда Connect-VMNetworkAdapter підключає віртуальний мережевий адаптер до віртуальної машини шляхом створення віртуального з'єднання до комутатора. |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | .ДЕСКРИПЦІЯ
	Оновлює список мережевих інтерфейсів контейнера Hyper-V.
	Синтаксис
		Update-VMNetworkAdapter <VMName>
			[-VMNetworkAdapterName <String>]
			[-ComputerName <String[]>]
			[-Passthru]
			[-CimSession <PSCredential>]
			[-CimSessionParam <String>]
			[-Confirm]
			[-WhatIf]
			[<CommonParameters>]
	ОПИС
		Update-VMNetworkAdapter оновлює список мережевих інтерфейсів, доступних для віртуальної машини (ВМ), запущеної на Hyper-V хості. Це корисно, коли мережеві адаптери додаються або видаляються з ВМ після її запуску.
	ПАРАМЕТРИ
		-VMName <String>
			Визначає ім'я віртуальної машини.
			Необхідний? true
			Позиція? 1
			Значення за замовчуванням? none
			Приймати вхідні дані конвеєра? true (ByValue, ByPropertyName)
			Приймати символи підстановки? false
		-VMNetworkAdapterName <String>
			Визначає ім'я мережевого адаптера ВМ.
			Необхідний? false
			Позиція? 2
			Значення за замовчуванням? none
			Приймати вхідні дані конвеєра? true (ByPropertyName)
			Приймати символи підстановки? false
		-ComputerName <String[]>
			Визначає ім'я комп'ютера Hyper-V хоста.
			Необхідний? false
			Позиція? named
			Значення за замовчуванням? none
			Приймати вхідні дані конвеєра? false
			Приймати символи підстановки? false
		-Passthru
			Повертає оновлений мережевий адаптер ВМ.
			Необхідний? false
			Позиція? named
			Значення за замовчуванням? false
			Приймати вхідні дані конвеєра? false
		-CimSession <PSCredential>
			Визначає облікові дані для підключення до CIM-сесії.
			Необхідний? false
			Позиція? named
			Значення за замовчуванням? none
			Приймати вхідні дані конвеєра? false
		-CimSessionParam <String>
			Визначає параметри сесії CIM.
			Необхідний? false
			Позиція? named
			Значення за замовчуванням? none
			Приймати вхідні дані конвеєра? false
		-Confirm
			Запитує підтвердження перед виконанням команди.
			Необхідний? false
			Позиція? named
			Значення за замовчуванням? false
			Приймати вхідні дані конвеєра? false
		-WhatIf
			Показує, що станеться, якщо команда буде виконана, без фактичного виконання.
			Необхідний? false
			Позиція? named
			Значення за замовчуванням? false
			Приймати вхідні дані конвеєра? false
		<CommonParameters>
			Ця команда підтримує загальні параметри: Verbose, Debug,
			ErrorAction, ErrorVariable, WarningAction, WarningVariable,
			OutBuffer, PipelineVariable, та OutVariable. Додаткову інформацію див.
			about_CommonParameters.
	ВХІДНІ ДАНІ
		Microsoft.HyperV.PowerShell.NetworkAdapter
	ВИХІДНІ ДАНІ
		Microsoft.HyperV.PowerShell.NetworkAdapter	(через -Passthru)
	ПРИКЛАДИ
		---------- ПРИКЛАД 1 ----------
		PS C:\> Update-VMNetworkAdapter -VMName TestVM
		Оновлює список мережевих інтерфейсів для віртуальної машини TestVM. |
| `-ChatOnce` | Object | — | — | Named | — | Запустіть чат лише один раз для запиту LLM. |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | Максимальна довжина зворотного виклику інструмента для запиту LLM. |
| `-AudioTemperature` | Object | — | — | Named | — | Температура для генерації аудіо. |
| `-TemperatureResponse` | Object | — | — | Named | — | Температура для генерації відповіді. |
| `-Language` | Object | — | — | Named | — | Мова для запиту LLM. |
| `-CpuThreads` | Object | — | — | Named | — | Кількість потоків ЦП для використання. |
| `-SuppressRegex` | Object | — | — | Named | — | Регулярний вираз для придушення виведення. |
| `-AudioContextSize` | Object | — | — | Named | — | Розмір аудіоконтексту для запиту до LLM. |
| `-SilenceThreshold` | Object | — | — | Named | — | Поріг тиші для обробки аудіо. |
| `-LengthPenalty` | Object | — | — | Named | — | Штраф за довжину для виведення LLM. |
| `-EntropyThreshold` | Object | — | — | Named | — | Поріг ентропії для виводу LLM. |
| `-LogProbThreshold` | Object | — | — | Named | — | Поріг логарифмічної ймовірності для виведення LLM. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Поріг мовлення для обробки аудіо відсутній. |
| `-DontSpeak` | Object | — | — | Named | — | Не відтворювати аудіо вихід. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Назва модуля: ActiveDirectory

Короткий опис:
Цей командлет видаляє об'єкт політики паролів із домену Active Directory.

Синтаксис:
Remove-ADFineGrainedPasswordPolicy [-Identity] <ADFineGrainedPasswordPolicy> [-AuthType <ADAuthType>] [-Credential <PSCredential>] [-Server <String>] [-Confirm] [-WhatIf] [<CommonParameters>]

Опис:
Командлет Remove-ADFineGrainedPasswordPolicy видаляє об'єкт політики паролів із домену Active Directory.

Параметри:
-Identity <ADFineGrainedPasswordPolicy>
    Вказує об'єкт політики деталізованих паролів Active Directory, який потрібно видалити.
    Обов'язковий?                true
    Позиція?                    1
    За замовчуванням            none
    Чи приймає вхідні дані конвеєра? true (ByValue)
    Чи приймає символи підстановки? false

-AuthType <ADAuthType>
    Вказує метод автентифікації для використання.
    Допустимі значення: Negotiate або Basic.
    Обов'язковий?                false
    Позиція?                    named
    За замовчуванням            none
    Чи приймає вхідні дані конвеєра? false
    Чи приймає символи підстановки? false

-Credential <PSCredential>
    Вказує облікові дані облікового запису користувача, які мають дозвіл на виконання цієї дії.
    Якщо цей параметр не вказано, використовуються облікові дані поточного користувача.
    Обов'язковий?                false
    Позиція?                    named
    За замовчуванням            none
    Чи приймає вхідні дані конвеєра? false
    Чи приймає символи підстановки? false

-Server <String>
    Вказує екземпляр служб домену Active Directory, до якого потрібно підключитися.
    Обов'язковий?                false
    Позиція?                    named
    За замовчуванням            none
    Чи приймає вхідні дані конвеєра? false
    Чи приймає символи підстановки? false

-Confirm [<SwitchParameter>]
    Запитує підтвердження перед виконанням командлета.
    Обов'язковий?                false
    Позиція?                    named
    За замовчуванням            false
    Чи приймає вхідні дані конвеєра? false
    Чи приймає символи підстановки? false

-WhatIf [<SwitchParameter>]
    Показує, що станеться в разі виконання командлета. Командлет не виконується.
    Обов'язковий?                false
    Позиція?                    named
    За замовчуванням            false
    Чи приймає вхідні дані конвеєра? false
    Чи приймає символи підстановки? false

<CommonParameters>
    Цей командлет підтримує загальні параметри: Verbose, Debug,
    ErrorAction, ErrorVariable, WarningAction, WarningVariable,
    OutBuffer, PipelineVariable і OutVariable. Докладні відомості див.
    у довідці about_CommonParameters.

Вхідні дані:
    Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy
    Об'єкт політики деталізованих паролів отримується через конвеєр.

Вихідні дані:
    None

Примітки:
    Цей командлет не працює зі знімним носієм (дисками),
    а також з провайдерами, які не підтримують видалення елементів.

Приклад 1:
    Remove-ADFineGrainedPasswordPolicy -Identity MyPolicy

Опис:
    Ця команда видаляє об'єкт політики паролів з ідентифікатором MyPolicy.

Приклад 2:
    Get-ADFineGrainedPasswordPolicy -Filter 'Name -like "*Policy*"' | Remove-ADFineGrainedPasswordPolicy

Опис:
    Ця команда отримує всі об'єкти політики паролів, назва яких містить "Policy", і передає їх командлету Remove-ADFineGrainedPasswordPolicy для видалення.

Додаткові відомості:
    Отримайте додаткові відомості про роботу з цим командлетом у розділі, присвяченому Active Directory, TechNet.
    Щоб знайти довідку з цього командлета, введіть "Get-Help Remove-ADFineGrainedPasswordPolicy -detailed".
    Щоб отримати технічну довідку, введіть "Get-Help Remove-ADFineGrainedPasswordPolicy -full".

Пов'язані посилання:
    New-ADFineGrainedPasswordPolicy
    Get-ADFineGrainedPasswordPolicy
    Set-ADFineGrainedPasswordPolicy |
| `-NoVOX` | Object | — | — | Named | — | Вимкнути VOX для виведення звуку. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Використовуйте захоплення аудіо робочого столу. |
| `-NoContext` | Object | — | — | Named | — | # Set-ExecutionPolicy
## СИНТАКСИС
```powershell
Set-ExecutionPolicy
  [-ExecutionPolicy] <ExecutionPolicy>
  [[-Scope] <ExecutionPolicyScope>]
  [-Force]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

## ОПИС
Командлет `Set-ExecutionPolicy` задає політику виконання PowerShell для комп'ютера або для поточного користувача.

## ПРИКЛАДИ

### Приклад 1: Встановлення політики виконання
```powershell
Set-ExecutionPolicy Restricted
```

### Приклад 2: Встановлення політики виконання з підтвердженням
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm
```

## ПАРАМЕТРИ

### -ExecutionPolicy
Вказує політику виконання. Допустимі значення:
- `Restricted` - не завантажувати файли конфігурації та не запускати скрипти.
- `AllSigned` - вимагати, щоб всі скрипти та файли конфігурації були підписані довіреним видавцем.
- `RemoteSigned` - вимагати підпису для скриптів та файлів конфігурації, завантажених з Інтернету.
- `Unrestricted` - завантажувати всі файли конфігурації та запускати всі скрипти.
- `Bypass` - нічого не блокувати та не видавати попереджень.
- `Default` - встановити політику за замовчуванням: `Restricted` для Windows клієнтів, `RemoteSigned` для Windows серверів.

### -Scope
Вказує область дії політики виконання. Допустимі значення:
- `MachinePolicy` - політика, встановлена для всіх користувачів комп'ютера через групову політику.
- `UserPolicy` - політика, встановлена для поточного користувача через групову політику.
- `Process` - політика, що діє лише для поточного сеансу PowerShell.
- `CurrentUser` - політика, що діє лише для поточного користувача.
- `LocalMachine` - політика, що діє для всіх користувачів комп'ютера.

### -Force
Примусово встановлює політику виконання без запиту підтвердження.

### -WhatIf
Показує, що станеться в результаті виконання командлету, без фактичного виконання.

### -Confirm
Запитує підтвердження перед виконанням командлету.

### CommonParameters
Цей командлет підтримує загальні параметри PowerShell: -Verbose, -Debug, -ErrorAction, -ErrorVariable, -WarningAction, -WarningVariable, -OutBuffer, -PipelineVariable, -OutVariable, та інші.

## ВВІД
None
Ви не можете передавати об'єкти на вхід цього командлету.

## ВИВІД
Microsoft.PowerShell.ExecutionPolicy
`Set-ExecutionPolicy` повертає об'єкт `ExecutionPolicy`, що представляє нову політику виконання.

## ПРИМІТКИ
`Set-ExecutionPolicy` не змінює політики виконання, встановлені за допомогою групової політики. Щоб змінити політику виконання, встановлену груповою політикою, зверніться до адміністратора.

## ПОВ'ЯЗАНІ ПОСИЛАННЯ
- [Get-ExecutionPolicy](https://go.microsoft.com/fwlink/?LinkID=2096838)
- [about_Execution_Policies](https://go.microsoft.com/fwlink/?LinkID=2097034) |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Використовуйте стратегію вибірки променевого пошуку. |
| `-OnlyResponses` | Object | — | — | Named | — | ## Get-WUHistory

Отримує історію встановлених оновлень для системи, що працює під управлінням Windows 10 або новіших версій. |

## Examples

### $errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {     My-ScriptThatFails }

```powershell
$errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {
    My-ScriptThatFails
}
```

### getfixprompt { Get-ChildItem -NotExistingParameter } ##############################################################################

```powershell
getfixprompt { Get-ChildItem -NotExistingParameter }
##############################################################################
```

## Parameter Details

### `-Script <ScriptBlock>`

> Скрипт для виконання та аналізу помилок

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
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
### `-LLMQueryType <String>`

> Тип запиту LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Coding'` |
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
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Масив назв команд, які не вимагають підтвердження

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
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
### `-Attachments <Object>`

> Вкладення для включення в запит LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <Object>`

> Рівень деталізації зображення для запиту LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TTLSeconds <Object>`

> Час життя в секундах для запиту до LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts <Object>`

> .
.SYNOPSIS
Надсилає HTTP-запит до PowerShell доставити команди для виконання.

.SYNTAX
Invoke-RestMethod [-Uri] <Uri> [-Method <WebRequestMethod>] [-Body <Object>] [-Headers <IDictionary>] [-ContentType <String>] [-UseDefaultCredentials] [-SessionVariable <String>] [-UserAgent <String>] [-TimeoutSec <Int32>] [-Certificate <X509Certificate>] [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-MaximumRedirection <Int32>] [-DisableKeepAlive] [-DisableRedirect] [-UseBasicParsing] [-OutFile <String>] [-PassThru] [-TransferEncoding <String>] [-SkipCertificateCheck] [-SkipHeaderValidation] [-CustomMethod <String>] [-Resume] [-StatusCodeVariable <String>] [<CommonParameters>]

.DESCRIPTION
Командлет `Invoke-RestMethod` надсилає HTTP-запит (або HTTPS) до веб-сервера, який очікує повернення структурованих даних (наприклад, JSON, XML, HTML). Повертає оброблені дані, а не сиру відповідь. Підтримує автентифікацію, проксі, сертифікати та інші параметри. Використовується для взаємодії з RESTful API.

.Параметри
-Uri <Uri>
    URL-адреса кінцевої точки REST.

-Method <WebRequestMethod>
    HTTP-метод (GET, POST, PUT, DELETE тощо). За замовчуванням GET.

-Body <Object>
    Дані, які надсилаються в тілі запиту. Може бути рядком, хеш-таблицею або об'єктом, який буде серіалізовано у формат JSON.

-Headers <IDictionary>
    Хеш-таблиця заголовків HTTP.

-ContentType <String>
    Тип вмісту тіла запиту (наприклад, application/json).

-UseDefaultCredentials
    Використовувати облікові дані поточного користувача Windows для автентифікації.

-SessionVariable <String>
    Ім'я змінної сесії для збереження веб-сесії.

-UserAgent <String>
    Рядок User Agent для запиту.

-TimeoutSec <Int32>
    Час очікування у секундах.

-Certificate <X509Certificate>
    Сертифікат клієнта для автентифікації.

-Proxy <Uri>
    Проксі-сервер.

-ProxyCredential <PSCredential>
    Облікові дані для проксі.

-ProxyUseDefaultCredentials
    Використовувати облікові дані за замовчуванням для проксі.

-MaximumRedirection <Int32>
    Максимальна кількість перенаправлень. За замовчуванням 5.

-DisableKeepAlive
    Вимкнути постійне з'єднання.

-DisableRedirect
    Заборонити автоматичне перенаправлення.

-UseBasicParsing
    Використовувати базовий парсинг відповіді.

-OutFile <String>
    Шлях для збереження відповіді у файл.

-PassThru
    Повертає базовий об'єкт HttpResponseMessage.

-TransferEncoding <String>
    Тип кодування передачі (chunked).

-SkipCertificateCheck
    Пропустити перевірку сертифіката.

-SkipHeaderValidation
    Пропустити перевірку заголовків.

-CustomMethod <String>
    Довільний HTTP-метод.

-Resume
    Продовжити завантаження файлу, вказаного в -OutFile.

-StatusCodeVariable <String>
    Ім'я змінної для збереження коду статусу HTTP.

.ПРИКЛАДИ
Приклад 1: Отримання даних
    Invoke-RestMethod -Uri 'https://api.example.com/users/1' -Method GET

Приклад 2: Створення ресурсу
    $body = @{ name = 'John'; email = 'john@example.com' }
    Invoke-RestMethod -Uri 'https://api.example.com/users' -Method POST -Body ($body | ConvertTo-Json) -ContentType 'application/json'

Приклад 3: Оновлення ресурсу
    $body = @{ name = 'Jane' }
    Invoke-RestMethod -Uri 'https://api.example.com/users/1' -Method PUT -Body ($body | ConvertTo-Json) -ContentType 'application/json'

Приклад 4: Видалення ресурсу
    Invoke-RestMethod -Uri 'https://api.example.com/users/1' -Method DELETE

.INPUTS
Можна передати об'єкт через конвеєр до параметра -Body.

.OUTPUTS
PSObject або примітивний тип. Повертає розібрані дані відповіді.

.NOTES
Командлет використовує .NET класи HttpWebRequest і WebResponse.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly <Object>`

> ## .NOTES
Ім'я модуля: Hyper-V
Повністю кваліфіковане ім'я модуля: [Microsoft.HyperV.PowerShell]
## .DESCRIPTION
Команда Connect-VMNetworkAdapter підключає віртуальний мережевий адаптер до віртуальної машини шляхом створення віртуального з'єднання до комутатора.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <Object>`

> .ДЕСКРИПЦІЯ
	Оновлює список мережевих інтерфейсів контейнера Hyper-V.
	Синтаксис
		Update-VMNetworkAdapter <VMName>
			[-VMNetworkAdapterName <String>]
			[-ComputerName <String[]>]
			[-Passthru]
			[-CimSession <PSCredential>]
			[-CimSessionParam <String>]
			[-Confirm]
			[-WhatIf]
			[<CommonParameters>]
	ОПИС
		Update-VMNetworkAdapter оновлює список мережевих інтерфейсів, доступних для віртуальної машини (ВМ), запущеної на Hyper-V хості. Це корисно, коли мережеві адаптери додаються або видаляються з ВМ після її запуску.
	ПАРАМЕТРИ
		-VMName <String>
			Визначає ім'я віртуальної машини.
			Необхідний? true
			Позиція? 1
			Значення за замовчуванням? none
			Приймати вхідні дані конвеєра? true (ByValue, ByPropertyName)
			Приймати символи підстановки? false
		-VMNetworkAdapterName <String>
			Визначає ім'я мережевого адаптера ВМ.
			Необхідний? false
			Позиція? 2
			Значення за замовчуванням? none
			Приймати вхідні дані конвеєра? true (ByPropertyName)
			Приймати символи підстановки? false
		-ComputerName <String[]>
			Визначає ім'я комп'ютера Hyper-V хоста.
			Необхідний? false
			Позиція? named
			Значення за замовчуванням? none
			Приймати вхідні дані конвеєра? false
			Приймати символи підстановки? false
		-Passthru
			Повертає оновлений мережевий адаптер ВМ.
			Необхідний? false
			Позиція? named
			Значення за замовчуванням? false
			Приймати вхідні дані конвеєра? false
		-CimSession <PSCredential>
			Визначає облікові дані для підключення до CIM-сесії.
			Необхідний? false
			Позиція? named
			Значення за замовчуванням? none
			Приймати вхідні дані конвеєра? false
		-CimSessionParam <String>
			Визначає параметри сесії CIM.
			Необхідний? false
			Позиція? named
			Значення за замовчуванням? none
			Приймати вхідні дані конвеєра? false
		-Confirm
			Запитує підтвердження перед виконанням команди.
			Необхідний? false
			Позиція? named
			Значення за замовчуванням? false
			Приймати вхідні дані конвеєра? false
		-WhatIf
			Показує, що станеться, якщо команда буде виконана, без фактичного виконання.
			Необхідний? false
			Позиція? named
			Значення за замовчуванням? false
			Приймати вхідні дані конвеєра? false
		<CommonParameters>
			Ця команда підтримує загальні параметри: Verbose, Debug,
			ErrorAction, ErrorVariable, WarningAction, WarningVariable,
			OutBuffer, PipelineVariable, та OutVariable. Додаткову інформацію див.
			about_CommonParameters.
	ВХІДНІ ДАНІ
		Microsoft.HyperV.PowerShell.NetworkAdapter
	ВИХІДНІ ДАНІ
		Microsoft.HyperV.PowerShell.NetworkAdapter	(через -Passthru)
	ПРИКЛАДИ
		---------- ПРИКЛАД 1 ----------
		PS C:\> Update-VMNetworkAdapter -VMName TestVM
		Оновлює список мережевих інтерфейсів для віртуальної машини TestVM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce <Object>`

> Запустіть чат лише один раз для запиту LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Object>`

> Максимальна довжина зворотного виклику інструмента для запиту LLM.

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
### `-TemperatureResponse <Object>`

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
### `-Language <Object>`

> Мова для запиту LLM.

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
### `-SuppressRegex <Object>`

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
### `-AudioContextSize <Object>`

> Розмір аудіоконтексту для запиту до LLM.

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
### `-LengthPenalty <Object>`

> Штраф за довжину для виведення LLM.

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

> Поріг ентропії для виводу LLM.

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

> Поріг логарифмічної ймовірності для виведення LLM.

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

> Поріг мовлення для обробки аудіо відсутній.

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

> Не відтворювати аудіо вихід.

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

> Назва модуля: ActiveDirectory

Короткий опис:
Цей командлет видаляє об'єкт політики паролів із домену Active Directory.

Синтаксис:
Remove-ADFineGrainedPasswordPolicy [-Identity] <ADFineGrainedPasswordPolicy> [-AuthType <ADAuthType>] [-Credential <PSCredential>] [-Server <String>] [-Confirm] [-WhatIf] [<CommonParameters>]

Опис:
Командлет Remove-ADFineGrainedPasswordPolicy видаляє об'єкт політики паролів із домену Active Directory.

Параметри:
-Identity <ADFineGrainedPasswordPolicy>
    Вказує об'єкт політики деталізованих паролів Active Directory, який потрібно видалити.
    Обов'язковий?                true
    Позиція?                    1
    За замовчуванням            none
    Чи приймає вхідні дані конвеєра? true (ByValue)
    Чи приймає символи підстановки? false

-AuthType <ADAuthType>
    Вказує метод автентифікації для використання.
    Допустимі значення: Negotiate або Basic.
    Обов'язковий?                false
    Позиція?                    named
    За замовчуванням            none
    Чи приймає вхідні дані конвеєра? false
    Чи приймає символи підстановки? false

-Credential <PSCredential>
    Вказує облікові дані облікового запису користувача, які мають дозвіл на виконання цієї дії.
    Якщо цей параметр не вказано, використовуються облікові дані поточного користувача.
    Обов'язковий?                false
    Позиція?                    named
    За замовчуванням            none
    Чи приймає вхідні дані конвеєра? false
    Чи приймає символи підстановки? false

-Server <String>
    Вказує екземпляр служб домену Active Directory, до якого потрібно підключитися.
    Обов'язковий?                false
    Позиція?                    named
    За замовчуванням            none
    Чи приймає вхідні дані конвеєра? false
    Чи приймає символи підстановки? false

-Confirm [<SwitchParameter>]
    Запитує підтвердження перед виконанням командлета.
    Обов'язковий?                false
    Позиція?                    named
    За замовчуванням            false
    Чи приймає вхідні дані конвеєра? false
    Чи приймає символи підстановки? false

-WhatIf [<SwitchParameter>]
    Показує, що станеться в разі виконання командлета. Командлет не виконується.
    Обов'язковий?                false
    Позиція?                    named
    За замовчуванням            false
    Чи приймає вхідні дані конвеєра? false
    Чи приймає символи підстановки? false

<CommonParameters>
    Цей командлет підтримує загальні параметри: Verbose, Debug,
    ErrorAction, ErrorVariable, WarningAction, WarningVariable,
    OutBuffer, PipelineVariable і OutVariable. Докладні відомості див.
    у довідці about_CommonParameters.

Вхідні дані:
    Microsoft.ActiveDirectory.Management.ADFineGrainedPasswordPolicy
    Об'єкт політики деталізованих паролів отримується через конвеєр.

Вихідні дані:
    None

Примітки:
    Цей командлет не працює зі знімним носієм (дисками),
    а також з провайдерами, які не підтримують видалення елементів.

Приклад 1:
    Remove-ADFineGrainedPasswordPolicy -Identity MyPolicy

Опис:
    Ця команда видаляє об'єкт політики паролів з ідентифікатором MyPolicy.

Приклад 2:
    Get-ADFineGrainedPasswordPolicy -Filter 'Name -like "*Policy*"' | Remove-ADFineGrainedPasswordPolicy

Опис:
    Ця команда отримує всі об'єкти політики паролів, назва яких містить "Policy", і передає їх командлету Remove-ADFineGrainedPasswordPolicy для видалення.

Додаткові відомості:
    Отримайте додаткові відомості про роботу з цим командлетом у розділі, присвяченому Active Directory, TechNet.
    Щоб знайти довідку з цього командлета, введіть "Get-Help Remove-ADFineGrainedPasswordPolicy -detailed".
    Щоб отримати технічну довідку, введіть "Get-Help Remove-ADFineGrainedPasswordPolicy -full".

Пов'язані посилання:
    New-ADFineGrainedPasswordPolicy
    Get-ADFineGrainedPasswordPolicy
    Set-ADFineGrainedPasswordPolicy

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

> Вимкнути VOX для виведення звуку.

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
### `-NoContext <Object>`

> # Set-ExecutionPolicy
## СИНТАКСИС
```powershell
Set-ExecutionPolicy
  [-ExecutionPolicy] <ExecutionPolicy>
  [[-Scope] <ExecutionPolicyScope>]
  [-Force]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

## ОПИС
Командлет `Set-ExecutionPolicy` задає політику виконання PowerShell для комп'ютера або для поточного користувача.

## ПРИКЛАДИ

### Приклад 1: Встановлення політики виконання
```powershell
Set-ExecutionPolicy Restricted
```

### Приклад 2: Встановлення політики виконання з підтвердженням
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm
```

## ПАРАМЕТРИ

### -ExecutionPolicy
Вказує політику виконання. Допустимі значення:
- `Restricted` - не завантажувати файли конфігурації та не запускати скрипти.
- `AllSigned` - вимагати, щоб всі скрипти та файли конфігурації були підписані довіреним видавцем.
- `RemoteSigned` - вимагати підпису для скриптів та файлів конфігурації, завантажених з Інтернету.
- `Unrestricted` - завантажувати всі файли конфігурації та запускати всі скрипти.
- `Bypass` - нічого не блокувати та не видавати попереджень.
- `Default` - встановити політику за замовчуванням: `Restricted` для Windows клієнтів, `RemoteSigned` для Windows серверів.

### -Scope
Вказує область дії політики виконання. Допустимі значення:
- `MachinePolicy` - політика, встановлена для всіх користувачів комп'ютера через групову політику.
- `UserPolicy` - політика, встановлена для поточного користувача через групову політику.
- `Process` - політика, що діє лише для поточного сеансу PowerShell.
- `CurrentUser` - політика, що діє лише для поточного користувача.
- `LocalMachine` - політика, що діє для всіх користувачів комп'ютера.

### -Force
Примусово встановлює політику виконання без запиту підтвердження.

### -WhatIf
Показує, що станеться в результаті виконання командлету, без фактичного виконання.

### -Confirm
Запитує підтвердження перед виконанням командлету.

### CommonParameters
Цей командлет підтримує загальні параметри PowerShell: -Verbose, -Debug, -ErrorAction, -ErrorVariable, -WarningAction, -WarningVariable, -OutBuffer, -PipelineVariable, -OutVariable, та інші.

## ВВІД
None
Ви не можете передавати об'єкти на вхід цього командлету.

## ВИВІД
Microsoft.PowerShell.ExecutionPolicy
`Set-ExecutionPolicy` повертає об'єкт `ExecutionPolicy`, що представляє нову політику виконання.

## ПРИМІТКИ
`Set-ExecutionPolicy` не змінює політики виконання, встановлені за допомогою групової політики. Щоб змінити політику виконання, встановлену груповою політикою, зверніться до адміністратора.

## ПОВ'ЯЗАНІ ПОСИЛАННЯ
- [Get-ExecutionPolicy](https://go.microsoft.com/fwlink/?LinkID=2096838)
- [about_Execution_Policies](https://go.microsoft.com/fwlink/?LinkID=2097034)

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
### `-OnlyResponses <Object>`

> ## Get-WUHistory

Отримує історію встановлених оновлень для системи, що працює під управлінням Windows 10 або новіших версій.

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

- `Object[]`

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
