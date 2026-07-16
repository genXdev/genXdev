# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Атомарно записывает байты в файл для предотвращения повреждения.

## Description

* Атомарная запись: используется стратегия временного файла + переименования, чтобы гарантировать, что целевой файл никогда не останется в поврежденном состоянии при прерывании процесса.
* Логика повторных попыток: повторяет запись до MaxRetries раз с задержкой RetryDelayMs миллисекунд между попытками.
* Поддержка дребезга: когда DebounceMs > 0, быстрые последовательные записи в один и тот же файл объединяются — записывается только последнее содержимое, когда файл не затрагивался в течение DebounceMs мс.
* Создание каталогов: автоматически создает родительские каталоги, если они не существуют.

## Syntax

```powershell
Write-FileAtomic [-FilePath] <string> [[-Data] <byte[]>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Путь к файлу для записи. |
| `-Data` | Byte[] | — | — | 1 | — | Байтовый массив для записи в файл. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Максимальное количество попыток повторного выполнения атомарной операции записи. По умолчанию 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Задержка в миллисекундах между повторными попытками. По умолчанию 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Если больше 0, то дебаунс записывает в этот файл. По умолчанию 0 (отключено). |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

Атомарно записывает массив байтов в data.bin с настройками повторных попыток по умолчанию.

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

Быстро записывает 100 раз, но на диск сохраняется только конечный результат (100) после 5-секундного периода тишины.

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

Writes with custom retry: up to 10 attempts with 500ms between each.

## Related Links

- [Write-FileAtomic on GitHub](https://github.com/genXdev/genXdev)
