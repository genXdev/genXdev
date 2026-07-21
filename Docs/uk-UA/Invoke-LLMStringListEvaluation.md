# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getlist`, `getstring`

## Synopsis

> Витягує або генерує список відповідних рядків із вхідного тексту за допомогою аналізу ШІ.

## Description

Ця функція використовує моделі штучного інтелекту для аналізу вхідного тексту та вилучення або генерації списку відповідних рядків. Вона може обробляти текст для визначення ключових точок, вилучати елементи зі списків або генерувати пов'язані концепції. Вхідні дані можна надавати безпосередньо через параметри, з конвеєра або з системного буфера обміну. Функція повертає масив рядків і опціонально копіює результати в буфер обміну.

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | .SYNOPSIS
Завантажує пакет Azure.
.DESCRIPTION
Командлет Import-AzAutomationSharedResource завантажує пакет у службу автоматизації Azure.
Щоб отримати модуль, який потрібно імпортувати, скористайтеся командлетом Get-AzAutomationModule.
.PARAMETER AutomationAccountName
Назва облікового запису автоматизації.
.PARAMETER ContentLink
URL-адреса, за якою розміщено вміст пакета.
.PARAMETER ResourceGroupName
Назва групи ресурсів.
.PARAMETER Name
Назва пакета.
.PARAMETER SubscriptionId
Ідентифікатор підписки Azure.
.EXAMPLE
PS C:\> Import-AzAutomationSharedResource -AutomationAccountName "Contoso17" -ResourceGroupName "ResourceGroup01" -Name "MyModule" -ContentLink "http://validUri"

Ця команда імпортує спільний ресурс з іменем "MyModule" в обліковий запис автоматизації "Contoso17".
.INPUTS
Microsoft.Azure.Commands.Automation.Model.Module
.OUTPUTS
Microsoft.Azure.Commands.Automation.Model.Module
.NOTES
Командлет Import-AzAutomationSharedResource застарів і більше не підтримується. Замість нього використовуйте New-AzAutomationModule.
.LINK
New-AzAutomationModule (AzureRM. Automation) |
| `-Instructions` | String | — | — | 1 | `''` | Наступний опис містить довідку з команди PowerShell. Команда `Get-NetAdapter` повертає всі мережеві адаптери, доступні в системі. Для фільтрації результатів використовуйте параметри, як-от `-Name`, `-InterfaceDescription` або `-PhysicalMediaType`. Ось приклад: 

```powershell
Get-NetAdapter -Name "Ethernet*"
```
Це поверне всі адаптери, ім'я яких починається з "Ethernet". Щоб отримати детальнішу інформацію, використовуйте `Get-NetAdapter -Name "Ethernet0" | Format-List *`. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Масив шляхів до файлів для приєднання |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для випадковості відповіді (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Рівень деталізації зображення |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Масив визначень функцій |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Масив визначень команд PowerShell для використання як інструментів |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Масив назв команд, які не вимагають підтвердження |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Тип запиту LLM |
| `-Model` | String | — | — | Named | — | Ідентифікатор моделі або шаблон для використання в операціях ШІ |
| `-ApiEndpoint` | String | — | — | Named | — | URL кінцевої точки API для операцій штучного інтелекту |
| `-ApiKey` | String | — | — | Named | — | Ключ API для автентифікованих операцій зі штучним інтелектом |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Вказує, що LLM не підтримує JSON-схеми |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Час очікування в секундах для операцій зі штучним інтелектом |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Копіювати результат у буфер обміну |
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
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Увімкнути інструменти за замовчуванням для моделі ШІ |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс |
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
| `-AudioTemperature` | Double | — | — | Named | — | Температура для випадковості аудіовідповіді. |
| `-TemperatureResponse` | Double | — | — | Named | — | Ймовірність випадковості тексту відповіді. |
| `-Language` | String | — | — | Named | — | uk-UA |
| `-CpuThreads` | Int32 | — | — | Named | — | Кількість потоків ЦП для використання. |
| `-SuppressRegex` | String | — | — | Named | — | Регулярний вираз для придушення певних вихідних даних. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Розмір аудіоконтексту для обробки. |
| `-SilenceThreshold` | Double | — | — | Named | — | Поріг тиші для виявлення аудіо. |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за довжину для генерації послідовності. |
| `-EntropyThreshold` | Double | — | — | Named | — | Поріг ентропії для фільтрації виведення. |
| `-LogProbThreshold` | Double | — | — | Named | — | Поріг логарифмічної ймовірності для фільтрації виводу. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Відсутній поріг мовлення для виявлення аудіо. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Вимкнути мовленнєвий вивід. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Вимкнути голосовий вивід для думок. |
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
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальна довжина зворотного виклику для викликів інструментів. |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Parameter Details

### `-Text <String>`

> .SYNOPSIS
Завантажує пакет Azure.
.DESCRIPTION
Командлет Import-AzAutomationSharedResource завантажує пакет у службу автоматизації Azure.
Щоб отримати модуль, який потрібно імпортувати, скористайтеся командлетом Get-AzAutomationModule.
.PARAMETER AutomationAccountName
Назва облікового запису автоматизації.
.PARAMETER ContentLink
URL-адреса, за якою розміщено вміст пакета.
.PARAMETER ResourceGroupName
Назва групи ресурсів.
.PARAMETER Name
Назва пакета.
.PARAMETER SubscriptionId
Ідентифікатор підписки Azure.
.EXAMPLE
PS C:\> Import-AzAutomationSharedResource -AutomationAccountName "Contoso17" -ResourceGroupName "ResourceGroup01" -Name "MyModule" -ContentLink "http://validUri"

Ця команда імпортує спільний ресурс з іменем "MyModule" в обліковий запис автоматизації "Contoso17".
.INPUTS
Microsoft.Azure.Commands.Automation.Model.Module
.OUTPUTS
Microsoft.Azure.Commands.Automation.Model.Module
.NOTES
Командлет Import-AzAutomationSharedResource застарів і більше не підтримується. Замість нього використовуйте New-AzAutomationModule.
.LINK
New-AzAutomationModule (AzureRM. Automation)

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

> Наступний опис містить довідку з команди PowerShell. Команда `Get-NetAdapter` повертає всі мережеві адаптери, доступні в системі. Для фільтрації результатів використовуйте параметри, як-от `-Name`, `-InterfaceDescription` або `-PhysicalMediaType`. Ось приклад: 

```powershell
Get-NetAdapter -Name "Ethernet*"
```
Це поверне всі адаптери, ім'я яких починається з "Ethernet". Щоб отримати детальнішу інформацію, використовуйте `Get-NetAdapter -Name "Ethernet0" | Format-List *`.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
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
| **Default value** | `'low'` |
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
| **Default value** | `@()` |
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

> Копіювати результат у буфер обміну

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

> Увімкнути інструменти за замовчуванням для моделі ШІ

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
### `-AudioTemperature <Double>`

> Температура для випадковості аудіовідповіді.

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

> Ймовірність випадковості тексту відповіді.

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

> uk-UA

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

> Поріг тиші для виявлення аудіо.

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

> Вимкнути голосовий вивід для думок.

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

- `String[]`

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
