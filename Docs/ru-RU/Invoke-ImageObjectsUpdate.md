# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageObjectsUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Language <String>] [-LLMQueryType <String>] [-Model <String>] [-OnlyNew] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Пути к каталогам, содержащим изображения для обработки |
| `-Recurse` | SwitchParameter | — | — | Named | — | Обработать изображения в указанной директории и всех поддиректориях |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Will retry previously failed image keyword updates |
| `-Language` | String | — | — | Named | — | Язык для генерируемых описаний и ключевых слов |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)
