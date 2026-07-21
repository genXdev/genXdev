# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Анализирует содержимое изображения с помощью возможностей ИИ-зрения

## Description

Обрабатывает изображения с помощью возможностей ИИ для визуального анализа содержимого и ответов на запросы, связанные с изображением. Функция поддерживает различные параметры анализа, включая контроль температуры для случайности ответов и ограничения на количество токенов для длины выходных данных.

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | Строка запроса для анализа изображения |
| `-ImagePath` | String | ✅ | — | 1 | — | Путь к файлу изображения для анализа |
| `-Instructions` | String | — | — | 2 | — | Ниже представлен справка по командлету PowerShell Set-AzureADDirectorySetting, переведенная на русский язык:

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
| `-ResponseFormat` | String | — | — | Named | `$null` | Справка по командлету. |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Уровень детализации изображения |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | Тип запроса к LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в операциях ИИ |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций AI |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Указывает, что LLM не поддерживает JSON-схемы |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Тайм-аут (в секундах) для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Включать мысли модели в вывод |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сеансе, для предпочтений ИИ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистить альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Сохранять параметры только в постоянных настройках, не затрагивая сеанс |
| `-Functions` | String[] | — | — | Named | — | Указывает функции, используемые для операции ИИ. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Задает доступные командлеты для операции ИИ. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Указывает имена функций инструментов, не требующие подтверждения. |
| `-AudioTemperature` | Double | — | — | Named | — | Температура для генерации аудиоответа. |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для генерации ответа. |
| `-Language` | String | — | — | Named | — | Язык для сгенерированных описаний и ключевых слов |
| `-CpuThreads` | Int32 | — | — | Named | — | Количество потоков ЦП для использования. |
| `-SuppressRegex` | String | — | — | Named | — | Регулярное выражение для подавления вывода. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер контекста аудио для обработки. |
| `-SilenceThreshold` | Double | — | — | Named | — | Порог тишины для обработки аудио. |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за длину для генерации последовательности. |
| `-EntropyThreshold` | Double | — | — | Named | — | Порог энтропии для фильтрации выходных данных. |
| `-LogProbThreshold` | Double | — | — | Named | — | Пороговое значение логарифмической вероятности для фильтрации выходных данных. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Порог отсутствия речи для обнаружения звука. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Если указано, не произносите вывод. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Если указано, не озвучивайте мысли модели. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | При указании отключает VOX. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | При указании выполнять захват звука с рабочего стола. |
| `-NoContext` | SwitchParameter | — | — | Named | — | При указании отключает использование контекста. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Если указано, используйте стратегию выборки с лучевым поиском. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Если указано, возвращать только ответы. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Если указано, не добавляйте мысли в историю. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Продолжить последний разговор. |
| `-Speak` | SwitchParameter | — | — | Named | — | Текст, который нужно перевести, отсутствует во вводе. Пожалуйста, предоставьте текст для перевода. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | @{response=Я — помощник, созданный компанией DeepSeek. Моя задача — помогать пользователям, отвечая на их вопросы и выполняя различные задачи.} |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Вы — полезный помощник, предназначенный для вывода JSON.
## Формат ответа

Отвечайте только объектом JSON. Никакого другого текста. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Фильтр для типов блоков разметки. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Если указано, общайтесь только один раз. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Отключить кэширование сеансов. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальная длина обратного вызова для вызовов инструментов. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Принудительно отобразить запрос согласия, даже если заданы настройки для установки пакета ImageSharp. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически согласиться на установку стороннего программного обеспечения и установить постоянный флаг для пакетов ImageSharp. |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

Анализирует изображение с заданными ограничениями по температуре и количеству токенов.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

Простой анализ изображения с использованием псевдонима и позиционных параметров.

## Parameter Details

### `-Query <String>`

> Строка запроса для анализа изображения

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

> Путь к файлу изображения для анализа

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
| **Position?** | 2 |
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
### `-ImageDetail <String>`

> Уровень детализации изображения

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

> Тип запроса к LLM

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
### `-Functions <String[]>`

> Указывает функции, используемые для операции ИИ.

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

> Задает доступные командлеты для операции ИИ.

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

> Указывает имена функций инструментов, не требующие подтверждения.

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

> Температура для генерации аудиоответа.

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
### `-Language <String>`

> Язык для сгенерированных описаний и ключевых слов

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
### `-SuppressRegex <String>`

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
### `-AudioContextSize <Int32>`

> Размер контекста аудио для обработки.

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
### `-LengthPenalty <Double>`

> Штраф за длину для генерации последовательности.

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

> Порог энтропии для фильтрации выходных данных.

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

> Пороговое значение логарифмической вероятности для фильтрации выходных данных.

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

> Порог отсутствия речи для обнаружения звука.

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

> Если указано, не произносите вывод.

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

> Если указано, не озвучивайте мысли модели.

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

> При указании отключает VOX.

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

> При указании выполнять захват звука с рабочего стола.

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

> При указании отключает использование контекста.

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

> Если указано, используйте стратегию выборки с лучевым поиском.

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

> Если указано, возвращать только ответы.

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

> Если указано, не добавляйте мысли в историю.

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

> Продолжить последний разговор.

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

> Текст, который нужно перевести, отсутствует во вводе. Пожалуйста, предоставьте текст для перевода.

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

> @{response=Я — помощник, созданный компанией DeepSeek. Моя задача — помогать пользователям, отвечая на их вопросы и выполняя различные задачи.}

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

> Вы — полезный помощник, предназначенный для вывода JSON.
## Формат ответа

Отвечайте только объектом JSON. Никакого другого текста.

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

> Фильтр для типов блоков разметки.

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

> Если указано, общайтесь только один раз.

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

> Отключить кэширование сеансов.

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

> Максимальная длина обратного вызова для вызовов инструментов.

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

> Принудительно отобразить запрос согласия, даже если заданы настройки для установки пакета ImageSharp.

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

> Автоматически согласиться на установку стороннего программного обеспечения и установить постоянный флаг для пакетов ImageSharp.

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
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMTextTransformation.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Update-AllImageMetaData.md)
