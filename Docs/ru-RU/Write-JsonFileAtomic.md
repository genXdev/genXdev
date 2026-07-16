# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Атомарно записывает объект в файл в формате JSON для предотвращения повреждений.

## Description

* Атомарная запись: использует стратегию временный файл + переименование, чтобы гарантировать, что целевой файл никогда не останется в повреждённом состоянии при прерывании процесса.
* Логика повторных попыток: повторяет запись до MaxRetries раз с задержкой RetryDelayMs миллисекунд между попытками.
* Поддержка объектов: принимает любой объект, а не только Hashtable. Сериализует через System.Text.Json с запасным вариантом ConvertTo-Json для сложных типов .NET, которые не могут быть сериализованы нативно.
* Поддержка дебаунса: когда DebounceMs > 0, быстрые последовательные записи в один и тот же файл объединяются — записывается только последний полезный груз, когда файл не изменялся в течение DebounceMs мс.
* Создание каталогов: автоматически создаёт родительские каталоги, если они не существуют.

## Syntax

```powershell
Write-JsonFileAtomic [-FilePath] <string> [[-Data] <Object>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [-Depth <int>] [-Compress] [-AsArray] [-EnumsAsStrings] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Путь к файлу для записи. |
| `-Data` | Object | — | — | 1 | — | Объект для сериализации в JSON и записи в файл. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Максимальное количество попыток повторного выполнения атомарной операции записи. По умолчанию 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Задержка в миллисекундах между повторными попытками. По умолчанию 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Если больше 0, то дебаунс записывает в этот файл. По умолчанию 0 (отключено). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальная глубина для JSON-сериализации. По умолчанию 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | {"type":"json_schema","json_schema":{"name":"text_transformation_response","schema":{"properties":{"response":{"description":"The transformed text output","type":"string"}},"required":["response"],"type":"object"},"strict":true}} |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "schema": {
      "properties": {
        "response": {
          "description": "Преобразованный текстовый вывод",
          "type": "string"
        }
      },
      "required": [
        "response"
      ],
      "type": "object"
    },
    "strict": true
  }
} |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Предоставляет альтернативный вариант сериализации, который преобразует все перечисления в их строковое представление. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Writes a Hashtable as indented JSON to config.json atomically.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Атомарно записывает объекты процессов в сжатом формате JSON.

## Related Links

- [Write-JsonFileAtomic on GitHub](https://github.com/genXdev/genXdev)
