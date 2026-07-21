# Get-SpeechToText

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Перетворює аудіофайли в текст за допомогою моделі розпізнавання мовлення Whisper від OpenAI.

## Description

Обробляє аудіофайли та перетворює мовлення на текст за допомогою бібліотеки Whisper.NET, яка реалізує систему автоматичного розпізнавання мовлення (ASR) Whisper від OpenAI. Вона підтримує кілька мов, можливості перекладу та різні налаштування якості транскрипції.

## Syntax

```powershell
Get-SpeechToText -Input <Object> [-AudioContextSize <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-LanguageIn <String>] [-LengthPenalty <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-LogProbThreshold <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-MaxDuration <Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-MaxInitialTimestamp <Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-MaxLastTextTokens <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-MaxSegmentLength <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-MaxTokensPerSegment <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModelFileDirectoryPath <String>] [-ModelType <Whisper.net.Ggml.GgmlType>] [-NoContext] [-NoSpeechThreshold <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-Offset <Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-Passthru] [-PrintSpecialTokens] [-Prompt <String>] [-SingleSegmentOnly] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-TemperatureInc <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-TokenTimestampsSumThreshold <Single>] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [-WithTranslate] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Шлях до каталогу файла моделі |
| `-Input` | Object | ✅ | ✅ (ByValue) | 0 | — | Шлях до аудіофайлу, об'єкт FileInfo або будь-який аудіоформат, що підтримується Whisper. |
| `-LanguageIn` | String | — | — | Named | — | Встановлює мову вводу для розпізнавання, за замовчуванням 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Встановлює мову виводу |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Температура для виявлення мовлення |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Інкремент температури |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Поріг відсутності мовлення |
| `-Prompt` | String | — | — | Named | — | Підказка для використання моделі |
| `-SuppressRegex` | String | — | — | Named | — | Regex для придушення токенів у виведенні |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Поріг суми для часових міток токенів, за замовчуванням 0.5 |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальна кількість токенів на сегмент |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Розмір аудіоконтексту |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальна тривалість аудіо |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Зсув для аудіо |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальна кількість останніх текстових токенів |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальна довжина сегменту |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Розпочати відлік часу з цього моменту |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Штраф за довжину |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Поріг ентропії |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Поріг логарифмічної ймовірності |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Тип моделі Whisper для використання, за замовчуванням LargeV3Turbo |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Повертає об'єкти замість рядків |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Чи включати часові мітки токенів |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Чи розділяти за межами слів |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Чи перекладати вихідні дані |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Чи показувати хід виконання |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Чи не пригнічувати порожні рядки |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Використовувати лише один сегмент |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Чи друкувати спеціальні токени |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | .SYNOPSIS
Отримує дерево властивостей об'єкта.

.DESCRIPTION
Цей командлет отримує властивості об'єкта за допомогою розширюваної системи типів.
Робота командлета полягає в отриманні об'єкта та поверненні опису всіх властивостей об'єкта.
Для цього командлету об'єкт — це будь-яке кероване програмне забезпеченням
, яке може бути представлено та кероване за допомогою PowerShell.

.PARAMETER InputObject
Об'єкт, для якого потрібно отримати властивості.

.PARAMETER View
Ім'я альтернативного подання, що визначає властивості, які мають відображатися.
Якщо ви не вказуєте це значення, відображаються властивості за замовчуванням.

.PARAMETER Depth
Вказує, скільки рівнів укладених об'єктів має бути розгорнуто в
вихідних даних. Значення за замовчуванням — 1. Значення за замовчуванням
можна замінити за допомогою змінної $FormatEnumerationLimit.

.PARAMETER Property
Вказує набір властивостей, які потрібно відобразити. Якщо властивість
існує, відображаються її значення. Якщо вона не існує, значення
дорівнює $null.

.PARAMETER ExcludeProperty
Вказує набір властивостей, які потрібно виключити з відображення.
Ці властивості не відображаються у вихідних даних.

.PARAMETER Force
Вказує командлету відображати всі властивості об'єкта, включаючи
властивості, які інакше були б приховані, такі як властивості з
атрибутом Hidden або властивості, визначені в розширеній системі
типів, які зазвичай приховані. Цей параметр не підтримується
всіма постачальниками.

.PARAMETER Expand
Вказує, чи мають властивості, що містять колекції, бути розгорнуті
та відображатися окремо.

.PARAMETER Sta
Запускає командлет з використанням однониткового апартаменту (STA).
Цей параметр доступний лише в Windows PowerShell.

.PARAMETER NoEnumerate
Вказує командлету не перераховувати колекції. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Використовувати стратегію променевого пошуку (beam search sampling) |

## Examples

### Example 1

```powershell
Get-SpeechToText -Input "C:\audio\recording.wav"
```

Транскрибує аудіофайл у текст із використанням стандартних налаштувань.

### Example 2

```powershell
Get-ChildItem "C:\audio\*.wav" | Get-SpeechToText
```

Транскрибує всі файли WAV у каталозі.

### Example 3

```powershell
Get-SpeechToText -Input "audio.mp3" -LanguageIn "es" -WithTranslate
```

Транскрибує іспанське аудіо та перекладає його англійською.

### Example 4

```powershell
Get-SpeechToText -Input "recording.wav" -Passthru -WithTokenTimestamps
```

Повертає об'єкти SegmentData з точними часовими даними.

## Parameter Details

### `-ModelFileDirectoryPath <String>`

> Шлях до каталогу файла моделі

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Input <Object>`

> Шлях до аудіофайлу, об'єкт FileInfo або будь-який аудіоформат, що підтримується Whisper.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | `WaveFile` |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> Встановлює мову вводу для розпізнавання, за замовчуванням 'en'

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

> Встановлює мову виводу

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Температура для виявлення мовлення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureInc <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Інкремент температури

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Поріг відсутності мовлення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> Підказка для використання моделі

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

> Regex для придушення токенів у виведенні

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TokenTimestampsSumThreshold <Single>`

> Поріг суми для часових міток токенів, за замовчуванням 0.5

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxTokensPerSegment <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Максимальна кількість токенів на сегмент

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Розмір аудіоконтексту

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDuration <Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Максимальна тривалість аудіо

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Offset <Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Зсув для аудіо

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastTextTokens <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Максимальна кількість останніх текстових токенів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSegmentLength <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Максимальна довжина сегменту

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxInitialTimestamp <Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Розпочати відлік часу з цього моменту

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Штраф за довжину

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Поріг ентропії

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Поріг логарифмічної ймовірності

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <Whisper.net.Ggml.GgmlType>`

> Тип моделі Whisper для використання, за замовчуванням LargeV3Turbo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `Tiny` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Passthru`

> Повертає об'єкти замість рядків

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithTokenTimestamps`

> Чи включати часові мітки токенів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SplitOnWord`

> Чи розділяти за межами слів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithTranslate`

> Чи перекладати вихідні дані

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithProgress`

> Чи показувати хід виконання

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSuppressBlank`

> Чи не пригнічувати порожні рядки

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleSegmentOnly`

> Використовувати лише один сегмент

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PrintSpecialTokens`

> Чи друкувати спеціальні токени

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> .SYNOPSIS
Отримує дерево властивостей об'єкта.

.DESCRIPTION
Цей командлет отримує властивості об'єкта за допомогою розширюваної системи типів.
Робота командлета полягає в отриманні об'єкта та поверненні опису всіх властивостей об'єкта.
Для цього командлету об'єкт — це будь-яке кероване програмне забезпеченням
, яке може бути представлено та кероване за допомогою PowerShell.

.PARAMETER InputObject
Об'єкт, для якого потрібно отримати властивості.

.PARAMETER View
Ім'я альтернативного подання, що визначає властивості, які мають відображатися.
Якщо ви не вказуєте це значення, відображаються властивості за замовчуванням.

.PARAMETER Depth
Вказує, скільки рівнів укладених об'єктів має бути розгорнуто в
вихідних даних. Значення за замовчуванням — 1. Значення за замовчуванням
можна замінити за допомогою змінної $FormatEnumerationLimit.

.PARAMETER Property
Вказує набір властивостей, які потрібно відобразити. Якщо властивість
існує, відображаються її значення. Якщо вона не існує, значення
дорівнює $null.

.PARAMETER ExcludeProperty
Вказує набір властивостей, які потрібно виключити з відображення.
Ці властивості не відображаються у вихідних даних.

.PARAMETER Force
Вказує командлету відображати всі властивості об'єкта, включаючи
властивості, які інакше були б приховані, такі як властивості з
атрибутом Hidden або властивості, визначені в розширеній системі
типів, які зазвичай приховані. Цей параметр не підтримується
всіма постачальниками.

.PARAMETER Expand
Вказує, чи мають властивості, що містять колекції, бути розгорнуті
та відображатися окремо.

.PARAMETER Sta
Запускає командлет з використанням однониткового апартаменту (STA).
Цей параметр доступний лише в Windows PowerShell.

.PARAMETER NoEnumerate
Вказує командлету не перераховувати колекції.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Використовувати стратегію променевого пошуку (beam search sampling)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AILLMSettings.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-DeepLinkImageFile.md)
