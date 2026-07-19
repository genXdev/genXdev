# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf

## Synopsis

> Find duplicate files across multiple directories based on configurable criteria.

## Description

Рекурсивно ищет дубликаты файлов в указанных директориях. Файлы считаются дубликатами, если их содержимое полностью совпадает или начинается с одинакового содержимого (для частичного сравнения с помощью параметра -ComparePartial). Командлет использует быстрый хеш начальных байтов файла для эффективной группировки перед выполнением полного сравнения содержимого. Размер этого быстрого хеша можно настроить с помощью параметра -CompareByteLength, что позволяет найти баланс между производительностью и точностью обнаружения дубликатов. Для обнаружения дубликатов учитываются только файлы, минимальная длина которых не меньше значения CompareByteLength; файлы меньшего размера группируются только по имени.

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | Имя файла или шаблон для поиска. По умолчанию '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Имя файла или шаблон для поиска из входных данных конвейера. Значение по умолчанию — '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | Регулярное выражение для поиска в содержимом *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Базовый путь для разрешения относительных путей в выводе |
| `-Category` | String[] | — | — | Named | — | Only output files belonging to selected categories |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Максимальная степень параллелизма для задач каталога |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Необязательно: время ожидания отмены в секундах |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Выполнить поиск по всем доступным дискам |
| `-Directory` | SwitchParameter | — | — | Named | — | Search for directories only |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Включите как файлы, так и каталоги |
| `-PassThru` | SwitchParameter | — | — | Named | — | [
  {
    "name": "John Doe",
    "age": 30,
    "email": "john.doe@example.com"
  },
  {
    "name": "Jane Smith",
    "age": 25,
    "email": "jane.smith@example.com"
  }
] |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Включить альтернативные потоки данных в результаты поиска |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Не рекурсировать в подкаталоги |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Следовать символическим ссылкам и точкам соединения при обходе каталогов |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Включая оптические дисководы |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Необязательно: поиск по конкретным дискам |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Необязательно: поиск по конкретным дискам |
| `-Root` | String[] | — | — | Named | `@()` | Опционально: поиск в конкретных каталогах |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Обеспечивает поиск только в корневых каталогах путем удаления компонентов пути из входных имен |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Включать не текстовые файлы при поиске содержимого файлов |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Принудительный автономный режим, ссылки не будут создаваться |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Получает или задает чувствительность к регистру для файлов и каталогов |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | При установке выполняет поиск содержимого в альтернативных потоках данных (ADS) |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Максимальная глубина рекурсии для обхода директорий. 0 означает без ограничений. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Максимальная глубина рекурсии для поиска продолжения вверх по дереву. 0 означает отключено. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Максимальный размер файла в байтах для включения в результаты. 0 означает без ограничений. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Минимальный размер файла в байтах для включения в результаты. 0 означает отсутствие минимума. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Включать только файлы, измененные после этой даты/времени (UTC) |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Only include files modified before this date/time (UTC) |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Атрибуты файлов для пропуска (например, System, Hidden или None) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Исключить файлы или каталоги, соответствующие этим шаблонам с подстановочными знаками |
| `-AllMatches` | SwitchParameter | — | — | Named | — | Search for more than one match in each line of text *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Совпадения чувствительны к регистру *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Захватывает строки контекста вокруг совпадений *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Имя культуры, используемое для сопоставления с образцом *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Задает кодировку для целевых файлов *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Возвращается только первое совпадение на файл *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Отключает подсветку совпадающих строк в выводе *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Параметр NotMatch находит текст, который не соответствует шаблону *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Output only matching strings instead of MatchInfo objects *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Use simple string matching instead of regex *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | Будет возвращать файлы разного размера, если они начинаются с одного и того же имени файла и содержимого, это обнаруживает поврежденные процессы загрузки/копирования |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | Быстрое сравнение размера файлов в байтах, используется для быстрой индексации и поиска дубликатов. Этот метод не сравнивает содержимое файлов. |

## Examples

### Find duplicate text files in the Documents folder based on exact content: Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial

```powershell
Find duplicate text files in the Documents folder based on exact content:
Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial
```

### Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set: (Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose

```powershell
Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set:
(Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose
```

## Related Links

- [Find-DuplicateFiles on GitHub](https://github.com/genXdev/genXdev)
