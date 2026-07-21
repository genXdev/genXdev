# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt`

## Synopsis

> Захватывает сообщения об ошибках из различных потоков и использует LLM для предложения исправлений.

## Description

Этот командлет перехватывает сообщения об ошибках из различных потоков PowerShell (конвейер, подробный, информационный, ошибка и предупреждение) и формирует структурированный запрос для LLM, чтобы проанализировать и предложить исправления. Затем он выполняет запрос к LLM и возвращает предложенное решение.

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoSupportForJsonSchema <String>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | Сценарий для выполнения и анализа ошибок |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Тип запроса к LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в операциях ИИ |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций AI |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Указывает, что LLM не поддерживает JSON-схемы |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Тайм-аут (в секундах) для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Массив определений функций |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | Массив определений команд PowerShell для использования в качестве инструментов |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Массив имен команд, не требующих подтверждения |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Включать мысли модели в вывод |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Продолжаем с последнего разговора |
| `-Speak` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов мыслей ИИ |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не хранить сеанс в кэше сеансов |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сеансе, для предпочтений ИИ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистить альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Сохранять параметры только в постоянных настройках, не затрагивая сеанс |
| `-Attachments` | Object | — | — | Named | — | Вложения, включаемые в запрос LLM. |
| `-ImageDetail` | Object | — | — | Named | — | Уровень детализации изображения для запроса к LLM. |
| `-TTLSeconds` | Object | — | — | Named | — | Время жизни в секундах для запроса LLM. |
| `-IncludeThoughts` | Object | — | — | Named | — | Ниже приведены разделы справки по командлету PowerShell 'Set-StrictMode'. Мы должны перевести только человекочитаемый текст, сохраняя технические элементы, такие как командлеты, имена параметров и синтаксис.

---

## SYNOPSIS
Устанавливает и применяет правила кодирования в выражениях, скриптах и скриптовых блоках.

## SYNTAX

### Syntax 1
```powershell
Set-StrictMode -Version <String> [<CommonParameters>]
```

### Syntax 2
```powershell
Set-StrictMode [-Off] [<CommonParameters>]
```

## DESCRIPTION
Командлет `Set-StrictMode` настраивает строгий режим для текущей области и всех дочерних областей и включает или отключает его. Если строгий режим включен, Windows PowerShell генерирует завершающее или непрерывное исключение, когда содержимое выражения, скрипта или скриптового блока нарушает основные правила кодирования, такие как использование неинициализированных переменных или вызов методов объектов, которые не существуют.

## PARAMETERS

### -Off
Указывает, что строгий режим отключен для текущей области и всех дочерних областей.

| Тип: | SwitchParameter |
| Позиция: | Named |
| Значение по умолчанию: | None |
| Принимает входные данные из конвейера: | False |
| Принимает подстановочные знаки: | False |

### -Version
Указывает версию строгого режима. Допустимые значения: `1.0` и `2.0`. Версия 1.0 включает следующие правила:
- Запрещены ссылки на неинициализированные переменны. В PowerShell неинициализированные переменны имеют значение `$null` или `0` в зависимости от типа. Это правило запрещает использование переменных, которым не присвоено значение.
- Запрещены ссылки на несуществующие свойства объекта.
- Запрещены вызовы методов для объектов, не поддерживающих метод.
- Запрещены ссылки на несуществующие переменные.

Версия 2.0 включает все правила версии 1.0, а также следующие:
- Запрещены ссылки на несуществующие переменные в командлетах.
- Запрещено использование оператора присваивания с неразрешенными именами.

| Тип: | String |
| Позиция: | 0 |
| Значение по умолчанию: | None |
| Принимает входные данные из конвейера: | False |
| Принимает подстановочные знаки: | False |

### <CommonParameters>
Этот командлет поддерживает общие параметры: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable и OutVariable. Дополнительные сведения см. в разделе about_CommonParameters.

## INPUTS
### None
Входные данные в этот командлет передавать по конвейеру нельзя.

## OUTPUTS
### None
Этот командлет не возвращает никаких выходных данных.

## NOTES
Командлет `Set-StrictMode` действует только в текущей области и всех дочерних областях. Родительские области не затрагиваются. Это отличает его от параметра `-Strict` в командлете `Set-PSDebug`, который применяется ко всей сессии.

## EXAMPLES

### Пример 1. Включение строго режима версии 1.0
```powershell
Set-StrictMode -Version 1.0
```
Эта команда включает строгий режим версии 1.0 для текущей области и всех дочерних областей.

### Пример 2. Отключение строгого режима
```powershell
Set-StrictMode -Off
```
Эта команда отключает строгий режим для текущей области и всех дочерних областей.

### Пример 3. Использование строгого режима в скрипте
```powershell
#Script.ps1
Set-StrictMode -Version 2.0
$a = 1
Write-Host $b
```
При запуске этого скрипта возникает ошибка, поскольку переменная `$b` не инициализирована.

## RELATED LINKS
- about_Scopes
- Set-PSDebug |
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | .EXAMPLE
PS C:\> Get-ChildItem -Path Cert:\\CurrentUser\\My | Set-AuthenticodeSignature -Certificate $_ -FilePath C:\\Temp\\script.ps1 -IncludeChain NotRoot -TimelineServer 'http://timestamp.digicert.com'

Описание
---
В этом примере показано, как получить сертификат из локального хранилища сертификатов текущего пользователя PowerShell и использовать его для подписи файла скрипта PowerShell. Команды разделяются оператором конвейера (|). Первая команда получает сертификат из указанного хранилища и передает его следующей команде. Для этого текущее местоположение поставщика сертификатов должно быть установлено в это хранилище или используется полный путь, как показано в команде. Вторая команда использует командлет Set-AuthenticodeSignature для подписи файла скрипта. Если сертификат не подходит для подписи кода, будет создано исключение. |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | Фильтр для типов блоков разметки в ответе LLM. |
| `-ChatOnce` | Object | — | — | Named | — | Запустите чат только один раз для запроса LLM. |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | Максимальная длина обратного вызова инструмента для запроса LLM. |
| `-AudioTemperature` | Object | — | — | Named | — | Температура для генерации аудио. |
| `-TemperatureResponse` | Object | — | — | Named | — | Температура для генерации ответа. |
| `-Language` | Object | — | — | Named | — | Язык для запроса LLM. |
| `-CpuThreads` | Object | — | — | Named | — | Количество потоков ЦП для использования. |
| `-SuppressRegex` | Object | — | — | Named | — | Регулярное выражение для подавления вывода. |
| `-AudioContextSize` | Object | — | — | Named | — | Размер аудиоконтекста для запроса к LLM. |
| `-SilenceThreshold` | Object | — | — | Named | — | Порог тишины для обработки аудио. |
| `-LengthPenalty` | Object | — | — | Named | — | Штраф за длину для вывода LLM. |
| `-EntropyThreshold` | Object | — | — | Named | — | Порог энтропии для вывода LLM. |
| `-LogProbThreshold` | Object | — | — | Named | — | Порог логарифмической вероятности для вывода LLM. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Порог отсутствия речи для обработки аудио. |
| `-DontSpeak` | Object | — | — | Named | — | Не воспроизводить звуковой вывод. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | .СИНТАКСИС
    Get-Help [[-Name] <String>] [-Path <String>] [-Category <String[]>] [-Component <String[]>] [-Functionality <String[]>] [-Role <String[]>] [-Parameter <String>] [-Online] [-ShowWindow] [<CommonParameters>]

ОПИСАНИЕ
    Командлет Get-Help отображает информацию о командлетах, функциях, рабочих процессах, поставщиках, модулях и других объектах PowerShell. Также можно получить справочные файлы справки в формате XML, которые поставляются с PowerShell и модулями.

    Если указать имя справки без дополнительных параметров, Get-Help отображает базовую информацию об элементе, включая его синтаксис, краткое описание и разделы для комментариев, а также ссылки на связанные разделы справки.

    Параметр Detailed включает подробную информацию об элементе, включая описание параметров и примеры. Параметр Full отображает всю справку, включая подробные технические сведения о параметрах.

    По умолчанию Get-Help ищет справку в точном соответствии с указанным именем элемента. Однако можно использовать подстановочные знаки в значении параметра Name, чтобы выполнить поиск справки по шаблону. Для поиска справки по определенному слову или теме во всех разделах справки используйте параметр SearchHelp.

    Можно также получить справочные файлы справки в формате XML, которые поставляются с обновляемыми справками для модулей PowerShell, используя параметры Path, Component, Role и Functionality. Эти параметры позволяют получать справку для модулей, которые не установлены в текущем сеансе.

    Без параметров Get-Help отображает список всех доступных разделов справки.

    Командлет Get-Help использует файлы справки в формате XML, которые хранятся в каталоге установки PowerShell или в каталоге языкового стандарта для каждого модуля. Файлы справки можно просматривать в командной строке PowerShell или в окне справки PowerShell.

    Командлет Get-Help также подготавливает комментарии на основе справки, написанной в скриптах, функциях и рабочих процессах. Дополнительные сведения о комментариях на основе справки см. в разделе about_Comment_Based_Help. Дополнительные сведения о файлах справки в формате XML см. в разделе How to Write Cmdlet Help. |
| `-NoVOX` | Object | — | — | Named | — | Отключить VOX для вывода звука. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Использовать захват звука рабочего стола. |
| `-NoContext` | Object | — | — | Named | — | Эй! Вижу ты отправил целый жёсткий диск с ReFS томами на 256 или 512 секторов... 
Но берегись! Они могут быть "сопряжены" или отсоединены!
Так что используй либо оба вместе, либо ничего — WIM'ы будут только с VHDX!
Иначе будет плохо... для файлов, так как ReFS не нравится 'S' (маленький),
И WIM'ы нуждаются в CRC-32 или MD5,
Вот моя программа... тебе нужно будет её подписать!

Конечно, скульптуры не могут 'создать' разделы...
НО ТЫ МОЖЕШЬ! Если ты 'добавишь' в 'Восстановление' 'Windows',
То, возможно, сможешь создать или сжать разделы... СКОРО.
Вот программа для демонстрации ;)
И даже 'Резервные копии' Windows скорее всего будут с томами WIM...

Эй! Это как-то связано с '$OEM$' папками?
Да, в 'источниках' есть 'скрипт', который устанавливает $OEM$ папки...
В папке 'дистрибутива' Windows...
Вот программа, ответственная за это, демо ;) |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Используйте стратегию лучевого поиска. |
| `-OnlyResponses` | Object | — | — | Named | — | Переводите только ответы от LLM. |

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

> Сценарий для выполнения и анализа ошибок

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

> Температура для случайности ответа (0.0-1.0)

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

> Тип запроса к LLM

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

> Идентификатор или шаблон модели для использования в операциях ИИ

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

> URL конечной точки API для операций AI

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

> Ключ API для аутентифицированных операций AI

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

> Указывает, что LLM не поддерживает JSON-схемы

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

> Тайм-аут (в секундах) для операций ИИ

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

> Путь к базе данных для файлов данных предпочтений

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

> Массив определений функций

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

> Массив определений команд PowerShell для использования в качестве инструментов

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

> Массив имен команд, не требующих подтверждения

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

> Включать мысли модели в вывод

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

> Продолжаем с последнего разговора

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

> Включить преобразование текста в речь для ответов ИИ

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

> Включить преобразование текста в речь для ответов мыслей ИИ

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

> Не хранить сеанс в кэше сеансов

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

> Используйте альтернативные настройки, хранящиеся в сеансе, для предпочтений ИИ

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

> Очистить альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ

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

> Сохранять параметры только в постоянных настройках, не затрагивая сеанс

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

> Вложения, включаемые в запрос LLM.

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

> Уровень детализации изображения для запроса к LLM.

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

> Время жизни в секундах для запроса LLM.

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

> Ниже приведены разделы справки по командлету PowerShell 'Set-StrictMode'. Мы должны перевести только человекочитаемый текст, сохраняя технические элементы, такие как командлеты, имена параметров и синтаксис.

---

## SYNOPSIS
Устанавливает и применяет правила кодирования в выражениях, скриптах и скриптовых блоках.

## SYNTAX

### Syntax 1
```powershell
Set-StrictMode -Version <String> [<CommonParameters>]
```

### Syntax 2
```powershell
Set-StrictMode [-Off] [<CommonParameters>]
```

## DESCRIPTION
Командлет `Set-StrictMode` настраивает строгий режим для текущей области и всех дочерних областей и включает или отключает его. Если строгий режим включен, Windows PowerShell генерирует завершающее или непрерывное исключение, когда содержимое выражения, скрипта или скриптового блока нарушает основные правила кодирования, такие как использование неинициализированных переменных или вызов методов объектов, которые не существуют.

## PARAMETERS

### -Off
Указывает, что строгий режим отключен для текущей области и всех дочерних областей.

| Тип: | SwitchParameter |
| Позиция: | Named |
| Значение по умолчанию: | None |
| Принимает входные данные из конвейера: | False |
| Принимает подстановочные знаки: | False |

### -Version
Указывает версию строгого режима. Допустимые значения: `1.0` и `2.0`. Версия 1.0 включает следующие правила:
- Запрещены ссылки на неинициализированные переменны. В PowerShell неинициализированные переменны имеют значение `$null` или `0` в зависимости от типа. Это правило запрещает использование переменных, которым не присвоено значение.
- Запрещены ссылки на несуществующие свойства объекта.
- Запрещены вызовы методов для объектов, не поддерживающих метод.
- Запрещены ссылки на несуществующие переменные.

Версия 2.0 включает все правила версии 1.0, а также следующие:
- Запрещены ссылки на несуществующие переменные в командлетах.
- Запрещено использование оператора присваивания с неразрешенными именами.

| Тип: | String |
| Позиция: | 0 |
| Значение по умолчанию: | None |
| Принимает входные данные из конвейера: | False |
| Принимает подстановочные знаки: | False |

### <CommonParameters>
Этот командлет поддерживает общие параметры: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable и OutVariable. Дополнительные сведения см. в разделе about_CommonParameters.

## INPUTS
### None
Входные данные в этот командлет передавать по конвейеру нельзя.

## OUTPUTS
### None
Этот командлет не возвращает никаких выходных данных.

## NOTES
Командлет `Set-StrictMode` действует только в текущей области и всех дочерних областях. Родительские области не затрагиваются. Это отличает его от параметра `-Strict` в командлете `Set-PSDebug`, который применяется ко всей сессии.

## EXAMPLES

### Пример 1. Включение строго режима версии 1.0
```powershell
Set-StrictMode -Version 1.0
```
Эта команда включает строгий режим версии 1.0 для текущей области и всех дочерних областей.

### Пример 2. Отключение строгого режима
```powershell
Set-StrictMode -Off
```
Эта команда отключает строгий режим для текущей области и всех дочерних областей.

### Пример 3. Использование строгого режима в скрипте
```powershell
#Script.ps1
Set-StrictMode -Version 2.0
$a = 1
Write-Host $b
```
При запуске этого скрипта возникает ошибка, поскольку переменная `$b` не инициализирована.

## RELATED LINKS
- about_Scopes
- Set-PSDebug

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

> .EXAMPLE
PS C:\> Get-ChildItem -Path Cert:\\CurrentUser\\My | Set-AuthenticodeSignature -Certificate $_ -FilePath C:\\Temp\\script.ps1 -IncludeChain NotRoot -TimelineServer 'http://timestamp.digicert.com'

Описание
---
В этом примере показано, как получить сертификат из локального хранилища сертификатов текущего пользователя PowerShell и использовать его для подписи файла скрипта PowerShell. Команды разделяются оператором конвейера (|). Первая команда получает сертификат из указанного хранилища и передает его следующей команде. Для этого текущее местоположение поставщика сертификатов должно быть установлено в это хранилище или используется полный путь, как показано в команде. Вторая команда использует командлет Set-AuthenticodeSignature для подписи файла скрипта. Если сертификат не подходит для подписи кода, будет создано исключение.

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

> Фильтр для типов блоков разметки в ответе LLM.

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

> Запустите чат только один раз для запроса LLM.

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

> Максимальная длина обратного вызова инструмента для запроса LLM.

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

> Температура для генерации аудио.

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

> Температура для генерации ответа.

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

> Язык для запроса LLM.

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

> Количество потоков ЦП для использования.

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

> Регулярное выражение для подавления вывода.

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

> Размер аудиоконтекста для запроса к LLM.

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

> Порог тишины для обработки аудио.

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

> Штраф за длину для вывода LLM.

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

> Порог энтропии для вывода LLM.

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

> Порог логарифмической вероятности для вывода LLM.

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

> Порог отсутствия речи для обработки аудио.

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

> Не воспроизводить звуковой вывод.

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

> .СИНТАКСИС
    Get-Help [[-Name] <String>] [-Path <String>] [-Category <String[]>] [-Component <String[]>] [-Functionality <String[]>] [-Role <String[]>] [-Parameter <String>] [-Online] [-ShowWindow] [<CommonParameters>]

ОПИСАНИЕ
    Командлет Get-Help отображает информацию о командлетах, функциях, рабочих процессах, поставщиках, модулях и других объектах PowerShell. Также можно получить справочные файлы справки в формате XML, которые поставляются с PowerShell и модулями.

    Если указать имя справки без дополнительных параметров, Get-Help отображает базовую информацию об элементе, включая его синтаксис, краткое описание и разделы для комментариев, а также ссылки на связанные разделы справки.

    Параметр Detailed включает подробную информацию об элементе, включая описание параметров и примеры. Параметр Full отображает всю справку, включая подробные технические сведения о параметрах.

    По умолчанию Get-Help ищет справку в точном соответствии с указанным именем элемента. Однако можно использовать подстановочные знаки в значении параметра Name, чтобы выполнить поиск справки по шаблону. Для поиска справки по определенному слову или теме во всех разделах справки используйте параметр SearchHelp.

    Можно также получить справочные файлы справки в формате XML, которые поставляются с обновляемыми справками для модулей PowerShell, используя параметры Path, Component, Role и Functionality. Эти параметры позволяют получать справку для модулей, которые не установлены в текущем сеансе.

    Без параметров Get-Help отображает список всех доступных разделов справки.

    Командлет Get-Help использует файлы справки в формате XML, которые хранятся в каталоге установки PowerShell или в каталоге языкового стандарта для каждого модуля. Файлы справки можно просматривать в командной строке PowerShell или в окне справки PowerShell.

    Командлет Get-Help также подготавливает комментарии на основе справки, написанной в скриптах, функциях и рабочих процессах. Дополнительные сведения о комментариях на основе справки см. в разделе about_Comment_Based_Help. Дополнительные сведения о файлах справки в формате XML см. в разделе How to Write Cmdlet Help.

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

> Отключить VOX для вывода звука.

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

> Использовать захват звука рабочего стола.

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

> Эй! Вижу ты отправил целый жёсткий диск с ReFS томами на 256 или 512 секторов... 
Но берегись! Они могут быть "сопряжены" или отсоединены!
Так что используй либо оба вместе, либо ничего — WIM'ы будут только с VHDX!
Иначе будет плохо... для файлов, так как ReFS не нравится 'S' (маленький),
И WIM'ы нуждаются в CRC-32 или MD5,
Вот моя программа... тебе нужно будет её подписать!

Конечно, скульптуры не могут 'создать' разделы...
НО ТЫ МОЖЕШЬ! Если ты 'добавишь' в 'Восстановление' 'Windows',
То, возможно, сможешь создать или сжать разделы... СКОРО.
Вот программа для демонстрации ;)
И даже 'Резервные копии' Windows скорее всего будут с томами WIM...

Эй! Это как-то связано с '$OEM$' папками?
Да, в 'источниках' есть 'скрипт', который устанавливает $OEM$ папки...
В папке 'дистрибутива' Windows...
Вот программа, ответственная за это, демо ;)

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

> Используйте стратегию лучевого поиска.

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

> Переводите только ответы от LLM.

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-Fallacy.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Update-AllImageMetaData.md)
