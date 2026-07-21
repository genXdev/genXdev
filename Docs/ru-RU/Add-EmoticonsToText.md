# Add-EmoticonsToText

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `emojify`

## Synopsis

> Улучшает текст, добавляя контекстуально подходящие смайлики с помощью ИИ.

## Description

Эта функция обрабатывает входной текст, добавляя смайлики, соответствующие эмоциональному контексту. Она может принимать ввод непосредственно через параметры, из конвейера или из системного буфера обмена. Функция использует модели ИИ для анализа текста и выбора подходящих смайликов, делая сообщения более выразительными и увлекательными.

## Syntax

```powershell
Add-EmoticonsToText [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Текст для улучшения с помощью смайликов |
| `-Instructions` | String | — | — | 1 | `''` | ### .SYNOPSIS
Возвращает список доступных команд.

### .DESCRIPTION
Командлет Get-Command возвращает список всех доступных команд в текущем сеансе PowerShell. Он может отображать команды, загруженные с помощью модулей, а также встроенные команды. С помощью параметров можно фильтровать результаты по типу команды, модулю или имени.

### .PARAMETER Name
Указывает имя или шаблон имени для поиска команд. Можно использовать подстановочные знаки.

### .PARAMETER Module
Указывает модуль, из которого нужно получить команды.

### .PARAMETER CommandType
Указывает тип команды для поиска. Допустимые значения: Alias, Function, Cmdlet, Application, ExternalScript, Filter, Configuration, All.

### .PARAMETER TotalCount
Указывает максимальное количество возвращаемых команд.

### .PARAMETER Syntax
Указывает, что возвращается только синтаксис команды.

### .PARAMETER All
Указывает, что возвращаются все версии команд, включая скрытые.

### .INPUTS
System.String[]
Вы можете передать по конвейеру имена команд в командлет Get-Command.

### .OUTPUTS
System.Management.Automation.CommandInfo
Командлет возвращает объекты, представляющие команды.

### .EXAMPLE 1
```powershell
Get-Command -Name Get-*
```
Эта команда возвращает все команды, начинающиеся с «Get-».

### .EXAMPLE 2
```powershell
Get-Command -Module Microsoft.PowerShell.Utility -CommandType Cmdlet
```
Эта команда возвращает все командлеты из модуля Microsoft.PowerShell.Utility.

### .LINK
about_Command_Precedence
about_Modules |
| `-Attachments` | String[] | — | — | 2 | `@()` | Массив путей к файлам для присоединения |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Уровень детализации изображения |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Массив определений функций |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Массив определений команд PowerShell для использования в качестве инструментов |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Массив имен команд, не требующих подтверждения |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Тип запроса к LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в операциях ИИ |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций AI |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Указывает, что LLM не поддерживает JSON-схемы |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Тайм-аут (в секундах) для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Скопировать улучшенный текст в буфер обмена |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Включать мысли модели в вывод |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Продолжаем с последнего разговора |
| `-Speak` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов мыслей ИИ |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не хранить сеанс в кэше сеансов |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Разрешить использование стандартных ИИ-инструментов во время обработки |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сеансе, для предпочтений ИИ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистить альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Сохранять параметры только в постоянных настройках, не затрагивая сеанс |
| `-AudioTemperature` | Double | — | — | Named | — | Температура для случайности аудиоответов (передается в LLMQuery) |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для генерации ответа (передается в LLMQuery) |
| `-Language` | String | — | — | Named | — | Код языка или имя для обработки (передается в LLMQuery) |
| `-CpuThreads` | Int32 | — | — | Named | — | Количество потоков CPU для использования (передается в LLMQuery) |
| `-SuppressRegex` | String | — | — | Named | — | Регулярное выражение для подавления вывода (передается в LLMQuery) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста для обработки (передается в LLMQuery) |
| `-SilenceThreshold` | Double | — | — | Named | — | Порог тишины для обнаружения аудио (передается в LLMQuery) |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за длину для генерации последовательности (передаётся в LLMQuery) |
| `-EntropyThreshold` | Double | — | — | Named | — | Порог энтропии для фильтрации вывода (передается в LLMQuery) |
| `-LogProbThreshold` | Double | — | — | Named | — | Пороговое значение логарифмической вероятности для фильтрации выходных данных (передано в LLMQuery) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Порог отсутствия речи для обнаружения аудио (передается в LLMQuery) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Отключить речевой вывод (передается в LLMQuery) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Отключить речевой вывод для мыслей (передано в LLMQuery) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Отключить VOX (голосовую активацию) (передано в LLMQuery) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Используйте захват аудио рабочего стола (передано в LLMQuery) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Отключить использование контекста (передано в LLMQuery) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Включить стратегию выбора с лучевым поиском (передается в LLMQuery) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Командлет `Get-WinEvent` получает события из журналов событий и из журналов трассировки событий Windows (ETW) в Windows Vista и более поздних версиях Windows.

Он получает события в порядке убывания времени от начала.

По умолчанию `Get-WinEvent` возвращает информацию о событиях в формате таблицы, отображая свойства `TimeCreated`, `Id` и `Level` для каждого события.

Командлет `Get-WinEvent` может отображать список зарегистрированных классов поставщиков ETW, включая как классические поставщики (с помощью структуры EVENT_TRACE_PROPERTIES), так и поставщики на основе манифеста (с помощью API трассировки событий). |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | ```powershell
<#
.SYNOPSIS
  Обновляет таблицу преобразования T4 в указанном проекте.

.DESCRIPTION
  Этот скрипт обновляет файл преобразования T4 (.tt) в заданном проекте.
  Использует объект DTE для поиска файла и удаления существующего, если он имеется.

.PARAMETER ProjectItem
  Элемент проекта (ProjectItem), в котором нужно обновить таблицу.
  Если не указан, используется элемент по умолчанию (ItemOperations.NewItem).

.EXAMPLE
  Update-T4Transformation -ProjectItem $project.ProjectItems.Item("MyTemplate.tt")
#>
``` |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Фильтр для типов блоков разметки (передается в LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальная длина обратного вызова инструмента (передается в LLMQuery) |

## Examples

### Add-EmoticonsToText -Text "Hello, how are you today?" -SetClipboard

```powershell
Add-EmoticonsToText -Text "Hello, how are you today?" -SetClipboard
```

### "Time to celebrate!" | emojify ##############################################################################

```powershell
"Time to celebrate!" | emojify
##############################################################################
```

## Parameter Details

### `-Text <String>`

> Текст для улучшения с помощью смайликов

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

> ### .SYNOPSIS
Возвращает список доступных команд.

### .DESCRIPTION
Командлет Get-Command возвращает список всех доступных команд в текущем сеансе PowerShell. Он может отображать команды, загруженные с помощью модулей, а также встроенные команды. С помощью параметров можно фильтровать результаты по типу команды, модулю или имени.

### .PARAMETER Name
Указывает имя или шаблон имени для поиска команд. Можно использовать подстановочные знаки.

### .PARAMETER Module
Указывает модуль, из которого нужно получить команды.

### .PARAMETER CommandType
Указывает тип команды для поиска. Допустимые значения: Alias, Function, Cmdlet, Application, ExternalScript, Filter, Configuration, All.

### .PARAMETER TotalCount
Указывает максимальное количество возвращаемых команд.

### .PARAMETER Syntax
Указывает, что возвращается только синтаксис команды.

### .PARAMETER All
Указывает, что возвращаются все версии команд, включая скрытые.

### .INPUTS
System.String[]
Вы можете передать по конвейеру имена команд в командлет Get-Command.

### .OUTPUTS
System.Management.Automation.CommandInfo
Командлет возвращает объекты, представляющие команды.

### .EXAMPLE 1
```powershell
Get-Command -Name Get-*
```
Эта команда возвращает все команды, начинающиеся с «Get-».

### .EXAMPLE 2
```powershell
Get-Command -Module Microsoft.PowerShell.Utility -CommandType Cmdlet
```
Эта команда возвращает все командлеты из модуля Microsoft.PowerShell.Utility.

### .LINK
about_Command_Precedence
about_Modules

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
| **Default value** | `'low'` |
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
| **Default value** | `@()` |
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
### `-SetClipboard`

> Скопировать улучшенный текст в буфер обмена

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
### `-AllowDefaultTools`

> Разрешить использование стандартных ИИ-инструментов во время обработки

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
### `-AudioTemperature <Double>`

> Температура для случайности аудиоответов (передается в LLMQuery)

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

> Температура для генерации ответа (передается в LLMQuery)

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

> Код языка или имя для обработки (передается в LLMQuery)

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

> Количество потоков CPU для использования (передается в LLMQuery)

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

> Регулярное выражение для подавления вывода (передается в LLMQuery)

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

> Размер аудиоконтекста для обработки (передается в LLMQuery)

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

> Порог тишины для обнаружения аудио (передается в LLMQuery)

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

> Штраф за длину для генерации последовательности (передаётся в LLMQuery)

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

> Порог энтропии для фильтрации вывода (передается в LLMQuery)

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

> Пороговое значение логарифмической вероятности для фильтрации выходных данных (передано в LLMQuery)

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

> Порог отсутствия речи для обнаружения аудио (передается в LLMQuery)

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

> Отключить речевой вывод (передается в LLMQuery)

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

> Отключить речевой вывод для мыслей (передано в LLMQuery)

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

> Отключить VOX (голосовую активацию) (передано в LLMQuery)

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

> Используйте захват аудио рабочего стола (передано в LLMQuery)

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

> Отключить использование контекста (передано в LLMQuery)

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

> Включить стратегию выбора с лучевым поиском (передается в LLMQuery)

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

> Командлет `Get-WinEvent` получает события из журналов событий и из журналов трассировки событий Windows (ETW) в Windows Vista и более поздних версиях Windows.

Он получает события в порядке убывания времени от начала.

По умолчанию `Get-WinEvent` возвращает информацию о событиях в формате таблицы, отображая свойства `TimeCreated`, `Id` и `Level` для каждого события.

Командлет `Get-WinEvent` может отображать список зарегистрированных классов поставщиков ETW, включая как классические поставщики (с помощью структуры EVENT_TRACE_PROPERTIES), так и поставщики на основе манифеста (с помощью API трассировки событий).

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

> ```powershell
<#
.SYNOPSIS
  Обновляет таблицу преобразования T4 в указанном проекте.

.DESCRIPTION
  Этот скрипт обновляет файл преобразования T4 (.tt) в заданном проекте.
  Использует объект DTE для поиска файла и удаления существующего, если он имеется.

.PARAMETER ProjectItem
  Элемент проекта (ProjectItem), в котором нужно обновить таблицу.
  Если не указан, используется элемент по умолчанию (ItemOperations.NewItem).

.EXAMPLE
  Update-T4Transformation -ProjectItem $project.ProjectItems.Item("MyTemplate.tt")
#>
```

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

> Фильтр для типов блоков разметки (передается в LLMQuery)

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

> Максимальная длина обратного вызова инструмента (передается в LLMQuery)

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

- `String`

## Related Links

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
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Update-AllImageMetaData.md)
