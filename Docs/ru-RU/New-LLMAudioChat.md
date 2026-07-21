# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat`

## Synopsis

> Создает интерактивный сеанс аудиочата с моделью LLM.

## Description

Инициирует голосовой разговор с языковой моделью, поддерживающий аудиоввод и аудиовыход. Функция обрабатывает запись аудио, транскрипцию, запросы к модели и синтез речи из текста. Поддерживает несколько языковых моделей и различные параметры конфигурации, включая управление окнами, ускорение GPU и расширенные функции обработки аудио.

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-ShowToolChainInvocations] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | . ПАРАМЕТРЫ
    -IncludeEqual
        Включает в результирующий набор элементы, которые равны при проверке на соответствие условию.

        По умолчанию параметр -IncludeEqual не задан и равен $false.

        Требуется ли позиционирование? false
        Принимает ли входные данные из конвейера? false
        Принимает ли подстановочные знаки? false

    -Not
        Указывает, что командлет исключает элементы из результирующего набора.

        По умолчанию параметр -Not не задан и равен $false.

        Требуется ли позиционирование? false
        Принимает ли входные данные из конвейера? false
        Принимает ли подстановочные знаки? false |
| `-Instructions` | String | — | — | 1 | — | Ниже представлен справка по командлету PowerShell Set-AzureADDirectorySetting, переведенная на русский язык:

---

НАЗВАНИЕ
    Set-AzureADDirectorySetting

КРАТКОЕ ОПИСАНИЕ
    Обновляет параметры каталога в Azure Active Directory.

СИНТАКСИС
    Set-AzureADDirectorySetting -Id <String> [-DirectorySetting <DirectorySetting>] [<CommonParameters>]

ОПИСАНИЕ
    Командлет Set-AzureADDirectorySetting обновляет параметры каталога в Azure Active Directory.

ПАРАМЕТРЫ
    -Id <String>
        Указывает идентификатор параметра каталога, который нужно обновить.

    -DirectorySetting <DirectorySetting>
        Указывает объект параметра каталога с новыми значениями.

    <CommonParameters>
        Этот командлет поддерживает общие параметры: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable и OutVariable. Дополнительные сведения см. в разделе about_CommonParameters.

ПРИМЕРЫ
    Пример 1: Обновление параметра каталога
        PS C:\> $Setting = Get-AzureADDirectorySetting | Where {$_.DisplayName -eq "Group.Unified"}
        PS C:\> $Setting.Values[1].Value = "true"
        PS C:\> Set-AzureADDirectorySetting -Id $Setting.Id -DirectorySetting $Setting

        Эта команда обновляет параметр каталога "Group.Unified", изменяя второе значение на "true".

ПРИМЕЧАНИЯ
    Для просмотра описания этого командлета в модуле Azure Active Directory PowerShell введите:
    Get-Help Set-AzureADDirectorySetting -Full

    Дополнительные сведения см. в документации по командлету Set-AzureADDirectorySetting. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Массив путей к файлам для присоединения |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | Тип модели Whisper для использования, по умолчанию LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | Температура для распознавания аудиовхода (0.0–1.0) |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | Параметр температуры для управления случайностью ответа. |
| `-LanguageIn` | String | — | — | Named | — | Задает язык для обнаружения |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Количество потоков ЦП для использования, по умолчанию 0 (авто) |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex для подавления токенов из вывода |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | Порог обнаружения тишины (0..32767, по умолчанию 30) |
| `-LengthPenalty` | Single | — | — | Named | — | Штраф за длину |
| `-EntropyThreshold` | Single | — | — | Named | — | Порог энтропии |
| `-LogProbThreshold` | Single | — | — | Named | — | Порог логарифмической вероятности |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Порог отсутствия речи |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Тип запроса к LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в операциях ИИ |
| `-ImageDetail` | String | — | — | Named | `'low'` | Уровень детализации изображения |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций AI |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Указывает, что LLM не поддерживает JSON-схемы |
| `-ShowToolChainInvocations` | SwitchParameter | — | — | Named | — | Отображает вызовы цепочки инструментов в консоли |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Тайм-аут (в секундах) для операций ИИ |
| `-ResponseFormat` | String | — | — | Named | `$null` | Справка по командлету. |
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
        )` | Будет выводить только блоки разметки указанных типов |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Массив определений команд PowerShell для использования в качестве инструментов |
| `-Functions` | ScriptBlock[] | — | — | Named | — | Массив блоков сценариев инструментальных функций для предоставления LLM (сквозная передача в Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Массив имен функций инструментов, не требующих подтверждения (прямая передача в Invoke-LLMQuery) |
| `-ChatMode` | String | — | — | Named | — | Режим чата для запроса LLM (сквозная передача в Invoke-LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальная длина обратного вызова инструмента (передается в Invoke-LLMQuery) |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Включать мысли модели в вывод |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Включать мысли модели в вывод |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Продолжаем с последнего разговора |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Отключить преобразование текста в речь для ответов AI |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Отключить преобразование текста в речь для ответов AI |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Не используйте определение тишины для автоматической остановки записи. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Использовать захват звука с рабочего стола вместо ввода с микрофона |
| `-AudioDevice` | String | — | — | Named | — | Имя или GUID аудиоустройства (поддерживает подстановочные знаки, выбирает первое совпадение) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Используйте как настольное устройство, так и записывающее устройство |
| `-NoContext` | SwitchParameter | — | — | Named | — | Не используйте контекст |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Используйте стратегию поиска с лучевым семплированием |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Подавлять ли распознанный текст в выводе |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не хранить сеанс в кэше сеансов |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Отображать только ответы в блоке разметки |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сеансе, для предпочтений ИИ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистить альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Сохранять параметры только в постоянных настройках, не затрагивая сеанс |

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

> . ПАРАМЕТРЫ
    -IncludeEqual
        Включает в результирующий набор элементы, которые равны при проверке на соответствие условию.

        По умолчанию параметр -IncludeEqual не задан и равен $false.

        Требуется ли позиционирование? false
        Принимает ли входные данные из конвейера? false
        Принимает ли подстановочные знаки? false

    -Not
        Указывает, что командлет исключает элементы из результирующего набора.

        По умолчанию параметр -Not не задан и равен $false.

        Требуется ли позиционирование? false
        Принимает ли входные данные из конвейера? false
        Принимает ли подстановочные знаки? false

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

> Ниже представлен справка по командлету PowerShell Set-AzureADDirectorySetting, переведенная на русский язык:

---

НАЗВАНИЕ
    Set-AzureADDirectorySetting

КРАТКОЕ ОПИСАНИЕ
    Обновляет параметры каталога в Azure Active Directory.

СИНТАКСИС
    Set-AzureADDirectorySetting -Id <String> [-DirectorySetting <DirectorySetting>] [<CommonParameters>]

ОПИСАНИЕ
    Командлет Set-AzureADDirectorySetting обновляет параметры каталога в Azure Active Directory.

ПАРАМЕТРЫ
    -Id <String>
        Указывает идентификатор параметра каталога, который нужно обновить.

    -DirectorySetting <DirectorySetting>
        Указывает объект параметра каталога с новыми значениями.

    <CommonParameters>
        Этот командлет поддерживает общие параметры: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable и OutVariable. Дополнительные сведения см. в разделе about_CommonParameters.

ПРИМЕРЫ
    Пример 1: Обновление параметра каталога
        PS C:\> $Setting = Get-AzureADDirectorySetting | Where {$_.DisplayName -eq "Group.Unified"}
        PS C:\> $Setting.Values[1].Value = "true"
        PS C:\> Set-AzureADDirectorySetting -Id $Setting.Id -DirectorySetting $Setting

        Эта команда обновляет параметр каталога "Group.Unified", изменяя второе значение на "true".

ПРИМЕЧАНИЯ
    Для просмотра описания этого командлета в модуле Azure Active Directory PowerShell введите:
    Get-Help Set-AzureADDirectorySetting -Full

    Дополнительные сведения см. в документации по командлету Set-AzureADDirectorySetting.

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

> Массив путей к файлам для присоединения

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

> Тип модели Whisper для использования, по умолчанию LargeV3Turbo

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

> Температура для распознавания аудиовхода (0.0–1.0)

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
### `-TemperatureResponse <Double>`

> Параметр температуры для управления случайностью ответа.

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

> Задает язык для обнаружения

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

> Количество потоков ЦП для использования, по умолчанию 0 (авто)

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

> Regex для подавления токенов из вывода

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

> Размер аудиоконтекста

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

> Порог обнаружения тишины (0..32767, по умолчанию 30)

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

> Штраф за длину

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

> Порог энтропии

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

> Порог логарифмической вероятности

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

> Порог отсутствия речи

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

> Тип запроса к LLM

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
### `-ImageDetail <String>`

> Уровень детализации изображения

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
### `-ShowToolChainInvocations`

> Отображает вызовы цепочки инструментов в консоли

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
### `-ResponseFormat <String>`

> Справка по командлету.

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

> Будет выводить только блоки разметки указанных типов

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
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Массив определений команд PowerShell для использования в качестве инструментов

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

> Массив блоков сценариев инструментальных функций для предоставления LLM (сквозная передача в Invoke-LLMQuery)

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

> Массив имен функций инструментов, не требующих подтверждения (прямая передача в Invoke-LLMQuery)

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

> Режим чата для запроса LLM (сквозная передача в Invoke-LLMQuery)

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

> Максимальная длина обратного вызова инструмента (передается в Invoke-LLMQuery)

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
### `-DontSpeak`

> Отключить преобразование текста в речь для ответов AI

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

> Отключить преобразование текста в речь для ответов AI

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

> Не используйте определение тишины для автоматической остановки записи.

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

> Использовать захват звука с рабочего стола вместо ввода с микрофона

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

> Имя или GUID аудиоустройства (поддерживает подстановочные знаки, выбирает первое совпадение)

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

> Используйте как настольное устройство, так и записывающее устройство

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

> Не используйте контекст

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

> Используйте стратегию поиска с лучевым семплированием

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

> Подавлять ли распознанный текст в выводе

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
### `-OutputMarkdownBlocksOnly`

> Отображать только ответы в блоке разметки

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
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-GenXdevMCPToken.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-DeepLinkImageFile.md)
