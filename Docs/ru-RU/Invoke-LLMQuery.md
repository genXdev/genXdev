# Invoke-LLMQuery

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `qllm`, `llm`

## Synopsis

> Отправляет запросы к совместимому с OpenAI API для завершения чатов с большой языковой моделью и обрабатывает ответы.

## Description

Эта функция отправляет запросы в совместимый с OpenAI API для больших языковых моделей чата и обрабатывает ответы. Она поддерживает ввод текста и изображений, обрабатывает вызовы инструментальных функций и может работать в различных режимах чата, включая текст и аудио.

Функция обеспечивает полную поддержку взаимодействия с LLM, включая:
- Обработку ввода текста и изображений
- Вызов инструментальных функций и выполнение команд
- Интерактивные режимы чата (текст и аудио)
- Инициализацию и настройку модели
- Форматирование и обработку ответов
- Управление сессиями и кэширование
- Управление позиционированием окна и отображением

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilterForJsonOutput] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-QuietToolChainInvocations] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | Запрос текста для отправки модели |
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
| `-ResponseFormat` | String | — | — | Named | — | Справка по командлету. |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Массив определений функций |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Массив определений команд PowerShell для использования в качестве инструментов |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Функции инструментов, не требующие подтверждения пользователя |
| `-QuietToolChainInvocations` | SwitchParameter | — | — | Named | — | Подавляет вывод Write-Host во время промежуточных вызовов цепочки инструментов |
| `-ImageDetail` | String | — | — | Named | `'low'` | Уровень детализации изображения |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Тип запроса к LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в операциях ИИ |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций AI |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Указывает, что LLM не поддерживает JSON-схемы |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Тайм-аут (в секундах) для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-AudioTemperature` | Double | — | — | Named | — | Степень случайности при генерации аудио |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для случайности ответа (аудиочат) |
| `-Language` | String | — | — | Named | — | Код языка или название для аудиочата |
| `-CpuThreads` | Int32 | — | — | Named | — | Количество потоков ЦП для использования в аудиочате |
| `-SuppressRegex` | String | — | — | Named | — | Регулярное выражение для подавления определенных выходных данных в аудиочате |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста для аудиочата |
| `-SilenceThreshold` | Double | — | — | Named | — | Порог тишины для аудиочата |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за длину ответов в аудиочате |
| `-EntropyThreshold` | Double | — | — | Named | — | Порог энтропии для аудиочата |
| `-LogProbThreshold` | Double | — | — | Named | — | Порог логарифмической вероятности для аудиочата |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Отсутствие порога речи для аудиочата |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Не воспроизводить голосовые ответы |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Не воспринимайте звуковые мысли |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Отключить VOX (голосовую активацию) для аудиочата |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Использовать захват звука с рабочего стола для аудиочата |
| `-NoContext` | SwitchParameter | — | — | Named | — | Отключить контекст для аудиочата |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Используйте стратегию лучевого поиска для аудиочата |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Этот командлет доступен только на платформах Windows. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Включать мысли модели в вывод |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Исключить последовательности мыслей из истории разговора |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Продолжаем с последнего разговора |
| `-Speak` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов мыслей ИИ |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Отображать только ответы в блоке разметки |
| `-FilterForJsonOutput` | SwitchParameter | — | — | Named | — | Извлекает крайний объект JSON или массив из ответа, отбрасывая маркдаун-ограничители и окружающий текст. Автоматически включается, когда установлен -ResponseFormat; используйте этот параметр, чтобы принудительно включить его для вызовов с простым текстом, ожидающих вывод JSON. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | Будет выводить только блоки разметки указанных типов |
| `-ChatMode` | String | — | — | Named | — | Включить режим чата |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Используется внутренне, чтобы вызвать режим чата только один раз после вызова llm |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не хранить сеанс в кэше сеансов |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сеансе, для предпочтений ИИ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистить альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Сохранять параметры только в постоянных настройках, не затрагивая сеанс |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | Максимальная длина вывода обратного вызова инструмента в символах. Вывод, превышающий эту длину, будет обрезан с предупреждающим сообщением. По умолчанию 100000 символов. |

## Examples

### Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7

```powershell
Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7
```

Отправляет простой математический запрос модели qwen с указанной температурой.

### qllm "What is 2+2?" -Model "qwen"

```powershell
qllm "What is 2+2?" -Model "qwen"
```

Использует псевдоним для отправки запроса с параметрами по умолчанию.

### Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"

```powershell
Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"
```

Отправляет запрос с прикрепленным изображением для анализа.

### llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"

```powershell
llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"
```

Запускает интерактивный сеанс текстового чата с указанной моделью.

## Parameter Details

### `-Query <String>`

> Запрос текста для отправки модели

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
### `-ResponseFormat <String>`

> Справка по командлету.

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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Функции инструментов, не требующие подтверждения пользователя

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

> Подавляет вывод Write-Host во время промежуточных вызовов цепочки инструментов

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
### `-LLMQueryType <String>`

> Тип запроса к LLM

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
### `-AudioTemperature <Double>`

> Степень случайности при генерации аудио

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

> Температура для случайности ответа (аудиочат)

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

> Код языка или название для аудиочата

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

> Количество потоков ЦП для использования в аудиочате

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

> Регулярное выражение для подавления определенных выходных данных в аудиочате

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

> Размер аудиоконтекста для аудиочата

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

> Порог тишины для аудиочата

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

> Штраф за длину ответов в аудиочате

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

> Порог энтропии для аудиочата

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

> Порог логарифмической вероятности для аудиочата

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

> Отсутствие порога речи для аудиочата

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

> Не воспроизводить голосовые ответы

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

> Не воспринимайте звуковые мысли

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

> Отключить VOX (голосовую активацию) для аудиочата

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

> Использовать захват звука с рабочего стола для аудиочата

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

> Отключить контекст для аудиочата

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

> Используйте стратегию лучевого поиска для аудиочата

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

> Этот командлет доступен только на платформах Windows.

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

> Исключить последовательности мыслей из истории разговора

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
### `-FilterForJsonOutput`

> Извлекает крайний объект JSON или массив из ответа, отбрасывая маркдаун-ограничители и окружающий текст. Автоматически включается, когда установлен -ResponseFormat; используйте этот параметр, чтобы принудительно включить его для вызовов с простым текстом, ожидающих вывод JSON.

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

> Будет выводить только блоки разметки указанных типов

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

> Включить режим чата

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

> Используется внутренне, чтобы вызвать режим чата только один раз после вызова llm

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
### `-MaxToolcallBackLength <Int32>`

> Максимальная длина вывода обратного вызова инструмента в символах. Вывод, превышающий эту длину, будет обрезан с предупреждающим сообщением. По умолчанию 100000 символов.

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMBooleanEvaluation.md)
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
