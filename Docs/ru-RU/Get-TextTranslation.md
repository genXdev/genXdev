# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Вы — полезный ассистент, предназначенный для вывода JSON. |
| `-Instructions` | String | — | — | 1 | — | Дополнительные инструкции для модели ИИ, направляющие стиль и контекст перевода |
| `-Attachments` | String[] | — | — | 2 | `@()` | Массив путей к файлам для прикрепления |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Уровень детализации изображения |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Массив определений функций |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Массив определений команд PowerShell для использования в качестве инструментов |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Массив имен команд, не требующих подтверждения |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the enhanced text to clipboard |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | The quick brown fox jumps over the lazy dog. The transformation is complete. |
| `-Speak` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не хранить сессию в кэше сессии |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Разрешить использование стандартных AI-инструментов во время обработки |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-AudioTemperature` | Double | — | — | Named | — | Температура для случайности звукового ответа (передается LLM) |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для генерации ответа (передается LLM) |
| `-Language` | String | — | — | Named | — | ru-RU |
| `-CpuThreads` | Int32 | — | — | Named | — | Number of CPU threads to use (passed to LLM) |
| `-SuppressRegex` | String | — | — | Named | — | Регулярное выражение для подавления вывода (передаётся LLM) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста для обработки (передается LLM) |
| `-SilenceThreshold` | Double | — | — | Named | — | Порог тишины для обнаружения аудио (передается LLM) |
| `-LengthPenalty` | Double | — | — | Named | — | Коэффициент штрафа за длину для генерации последовательности (передается LLM) |
| `-EntropyThreshold` | Double | — | — | Named | — | Порог энтропии для фильтрации вывода (передается LLM) |
| `-LogProbThreshold` | Double | — | — | Named | — | Порог логарифмической вероятности для фильтрации вывода (передается LLM) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Отсутствует порог речи для обнаружения аудио (передается LLM) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Отключить речевой вывод (передаётся LLM) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Отключить речевой вывод для мыслей (передается LLM) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Отключить VOX (голосовую активацию) (передано в LLM) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Используйте захват аудио с рабочего стола (передаётся в LLM) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage (passed to LLM) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Включить стратегию выборки с лучевым поиском (передается LLM) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Пользователь спрашивает, как создать новый аккаунт. Ответьте, что для этого нужно нажать кнопку 'Зарегистрироваться' на главной странице и следовать инструкциям. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <user>
Вы — полезный ассистент, предназначенный для вывода JSON.
## Формат ответа

Отвечайте ТОЛЬКО объектом JSON. Никакого другого текста.

===== КРИТИЧЕСКОЕ ТРЕБОВАНИЕ К ВЫВОДУ JSON =====
Вы ДОЛЖНЫ отвечать ТОЛЬКО валидным json. Никакого другого текста не допускается.
Не включайте никаких пояснений, комментариев или текста до или после json.
Ваш ответ должен быть парсируемым json, который ТОЧНО соответствует этой схеме:
{
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "Преобразованный текстовый вывод"
        }
      },
      "type": "object"
    }
  }
}

Пример формата ответа: {"response":"ваш фактический ответ здесь"}
===== КОНЕЦ ТРЕБОВАНИЯ =====
</user> |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types (passed to LLM) |
| `-NoCache` | SwitchParameter | — | — | Named | — | Пропустить кэш перевода; всегда вызывать API LLM |
| `-ClearCache` | SwitchParameter | — | — | Named | — | 清空所有语言的翻译缓存 |

## Outputs

- `String`

## Related Links

- [Get-TextTranslation on GitHub](https://github.com/genXdev/genXdev)
