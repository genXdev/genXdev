# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> Обновляет метаданные обнаружения объектов для файлов изображений в указанной директории.

## Description

Эта функция обрабатывает изображения в указанной директории для обнаружения объектов с помощью искусственного интеллекта. Она создает JSON-файлы метаданных, содержащие обнаруженные объекты, их положения, оценки достоверности и метки. Функция поддерживает пакетную обработку с настраиваемыми порогами достоверности и может опционально пропускать существующие файлы метаданных или повторять ранее неудачные обнаружения.

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

## Examples

### Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse
```

В этом примере обрабатываются все изображения в C:\Photos и D:\Pictures и всех подкаталогах с использованием настроек по умолчанию с порогом уверенности 0.5.

### Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew

```powershell
Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
```

Этот пример обрабатывает только новые изображения и повторяет ранее неудавшиеся в нескольких директориях с использованием синтаксиса позиционных параметров.

### Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `     -ConfidenceThreshold 0.7

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `
    -ConfidenceThreshold 0.7
```

Этот пример использует ускорение GPU с более высоким порогом уверенности 0,7 для более точного, но меньшего количества обнаружений объектов.

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)
