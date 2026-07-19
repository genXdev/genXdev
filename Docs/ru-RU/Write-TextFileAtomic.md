# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Атомарно записывает текст в файл для предотвращения повреждений.

## Description

• Атомарная запись: использует стратегию временного файла и переименования, чтобы гарантировать, что целевой файл никогда не перейдет в поврежденное состояние, если процесс будет прерван.
• Логика повторных попыток: повторяет запись до MaxRetries раз с задержкой RetryDelayMs миллисекунд между попытками.
• Поддержка кодировок: принимает параметр System.Text.Encoding для управления выходной кодировкой. По умолчанию UTF-8.
• Поддержка антидребезга: когда DebounceMs > 0, быстрые последовательные записи в один и тот же файл объединяются — записывается только последняя полезная нагрузка, когда файл не изменялся в течение DebounceMs мс.
• Создание каталогов: автоматически создает родительские каталоги, если их не существует.

## Syntax

```powershell
Write-TextFileAtomic [-FilePath] <string> [[-Data] <string>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-Encoding <Encoding>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Путь к файлу для записи. |
| `-Data` | String | — | — | 1 | — | The text content to write to the file. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Максимальное количество попыток повторного выполнения атомарной операции записи. По умолчанию 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Задержка в миллисекундах между повторными попытками. По умолчанию 200. |
| `-Encoding` | Text.Encoding | — | — | Named | — | Кодировка текста, используемая при записи файла. По умолчанию UTF-8. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Если больше 0, то дебаунс записывает в этот файл. По умолчанию 0 (отключено). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

Writes a string to config.txt using UTF-8 encoding atomically.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

Потоки передают 50 строк быстро; только последняя строка сохраняется после 2-секундной паузы.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

Записывает строку в data.csv, используя ASCII-кодировку, атомарно.

### Example 4

```powershell
# Debounce with custom retry: coalesce UI state saves
$watcher = Start-ThreadJob -ScriptBlock {
    param($path)
    while ($true) {
        Write-TextFileAtomic -FilePath $path `
            -Data (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') `
            -DebounceMs 1000 -MaxRetries 3
        Start-Sleep -Milliseconds 100
    }
} -ArgumentList "timestamp.txt"
```

Фоновая задача записывает временные метки каждые 100 мс, но дебаунс объединяет их — на диск фактически попадает только одна запись в секунду.

## Related Links

- [Write-TextFileAtomic on GitHub](https://github.com/genXdev/genXdev)
