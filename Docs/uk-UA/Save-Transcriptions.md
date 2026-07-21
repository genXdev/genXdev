# Save-Transcriptions

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Генерує файли субтитрів для аудіо та відеофайлів за допомогою OpenAI Whisper.

## Description

Рекурсивно шукає медіафайли у вказаному каталозі та використовує локальну модель OpenAI Whisper для створення файлів субтитрів у форматі SRT. Функція підтримує кілька аудіо/відео форматів і може за бажанням перекладати субтитри іншою мовою за допомогою запиту LLM. Іменування файлів відповідає стандартизованому шаблону з кодами мов (наприклад, video.mp4.en.srt).

## Syntax

```powershell
Save-Transcriptions [[-DirectoryPath] <String>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DirectoryPath` | String | — | — | 0 | `'.\'` | Шлях до каталогу для пошуку медіафайлів |
| `-LanguageIn` | String | — | — | 1 | — | Мова, яка очікується в аудіо. |
| `-LanguageOut` | String | — | — | 2 | — | Встановлює мову для перекладу. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Поріг суми для часових міток токенів, за замовчуванням 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | `20` | Максимальна кількість токенів на сегмент |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Максимальна тривалість тиші перед автоматичним зупиненням запису |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Поріг виявлення тиші (0..32767, за замовчуванням 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Кількість потоків ЦП для використання, за замовчуванням 0 (авто) |
| `-Temperature` | Single | — | — | Named | `0.5` | Температура для розпізнавання мовлення |
| `-TemperatureInc` | Single | — | — | Named | — | Інкремент температури |
| `-Prompt` | String | — | — | Named | — | Підказка для використання моделі |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex для придушення токенів у виведенні |
| `-AudioContextSize` | Int32 | — | — | Named | — | Розмір аудіоконтексту |
| `-MaxDuration` | Object | — | — | Named | — | Максимальна тривалість аудіо |
| `-Offset` | Object | — | — | Named | — | Зсув для аудіо |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Максимальна кількість останніх текстових токенів |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Максимальна довжина сегменту |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Розпочати відлік часу з цього моменту |
| `-LengthPenalty` | Single | — | — | Named | — | Штраф за довжину |
| `-EntropyThreshold` | Single | — | — | Named | — | Поріг ентропії |
| `-LogProbThreshold` | Single | — | — | Named | — | Поріг логарифмічної ймовірності |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Поріг відсутності мовлення |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Чи включати часові мітки токенів у вихідні дані |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Чи розділяти за межами слів |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Чи ігнорувати тишу (порушить часові мітки) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Чи показувати хід виконання |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Чи не пригнічувати порожні рядки |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Використовувати лише один сегмент |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Чи друкувати спеціальні токени |
| `-NoContext` | SwitchParameter | — | — | Named | — | .SYNOPSIS
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
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Використовувати стратегію променевого пошуку (beam search sampling) |
| `-ModelType` | String | — | — | Named | — | Тип моделі Whisper для використання, за замовчуванням LargeV3Turbo |
| `-PassThru` | SwitchParameter | — | — | Named | — | Повертає об'єкти замість рядків |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Чи використовувати захоплення звуку робочого столу замість введення з мікрофона |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сесії, для налаштувань ШІ, таких як мова, колекції зображень тощо |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сесії, для вподобань ШІ, таких як мова, колекції зображень тощо |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не використовуйте альтернативні налаштування, збережені в сеансі, для параметрів ШІ, таких як мова, колекції зображень тощо |

## Examples

### Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"

```powershell
Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"
```

### Save-Transcriptions "C:\Media" "Japanese" "English"

```powershell
Save-Transcriptions "C:\Media" "Japanese" "English"
```

## Parameter Details

### `-DirectoryPath <String>`

> Шлях до каталогу для пошуку медіафайлів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> Мова, яка очікується в аудіо.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageOut <String>`

> Встановлює мову для перекладу.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxTokensPerSegment <Int32>`

> Максимальна кількість токенів на сегмент

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `20` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDurationOfSilence <Object>`

> Максимальна тривалість тиші перед автоматичним зупиненням запису

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

> Поріг виявлення тиші (0..32767, за замовчуванням 30)

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

> Кількість потоків ЦП для використання, за замовчуванням 0 (авто)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Single>`

> Температура для розпізнавання мовлення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureInc <Single>`

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
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

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
### `-MaxDuration <Object>`

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
### `-Offset <Object>`

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
### `-MaxLastTextTokens <Int32>`

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
### `-MaxSegmentLength <Int32>`

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
### `-MaxInitialTimestamp <Object>`

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
### `-LengthPenalty <Single>`

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
### `-EntropyThreshold <Single>`

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
### `-LogProbThreshold <Single>`

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
### `-NoSpeechThreshold <Single>`

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
### `-WithTokenTimestamps`

> Чи включати часові мітки токенів у вихідні дані

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoreSilence`

> Чи ігнорувати тишу (порушить часові мітки)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <String>`

> Тип моделі Whisper для використання, за замовчуванням LargeV3Turbo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Повертає об'єкти замість рядків

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Чи використовувати захоплення звуку робочого столу замість введення з мікрофона

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

> Використовуйте альтернативні налаштування, збережені в сесії, для налаштувань ШІ, таких як мова, колекції зображень тощо

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

> Очистити альтернативні налаштування, збережені в сесії, для вподобань ШІ, таких як мова, колекції зображень тощо

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

> Не використовуйте альтернативні налаштування, збережені в сеансі, для параметрів ШІ, таких як мова, колекції зображень тощо

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
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-FoundImageFaces.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Update-AllImageMetaData.md)
