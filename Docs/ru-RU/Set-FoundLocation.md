# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Имя файла или шаблон для поиска. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Имя файла или шаблон для поиска из входных данных конвейера. Значение по умолчанию — '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Регулярное выражение для поиска в содержимом файла *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Only output files belonging to selected categories |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Максимальная степень параллелизма для задач каталога |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Необязательно: время ожидания отмены в секундах |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Выполнить поиск по всем доступным дискам |
| `-File` | SwitchParameter | — | — | Named | — | Search for filenames only and change to folder of first found file |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Include filename matching and change to folder of first found file |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Включить альтернативные потоки данных в результаты поиска |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Не рекурсировать в подкаталоги |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Следовать символическим ссылкам и точкам соединения при обходе каталогов |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Включая оптические дисководы |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Необязательно: поиск по конкретным дискам |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Необязательно: поиск по конкретным дискам |
| `-Root` | String[] | — | — | Named | `@()` | Необязательно: указать конкретные базовые папки в сочетании с заданными именами |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Включить не текстовые файлы (бинарные, изображения и т.д.) при поиске по содержимому файлов |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Получает или задает чувствительность к регистру для файлов и каталогов |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | При установке выполняет поиск содержимого в альтернативных потоках данных (ADS). Если не установлен, выводит информацию о файлах ADS без поиска их содержимого. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Максимальная глубина рекурсии для обхода директорий. 0 означает без ограничений. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Максимальный размер файла в байтах для включения в результаты. 0 означает без ограничений. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Минимальный размер файла в байтах для включения в результаты. 0 означает отсутствие минимума. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Включать только файлы, измененные после этой даты/времени (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Включать только файлы, изменённые до этой даты/времени (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Атрибуты файлов для пропуска (например, «Системный», «Скрытый» или «Нет»). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Exclude files or directories matching these wildcard patterns (e.g., *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Указывает, что совпадения командлета чувствительны к регистру. По умолчанию совпадения не чувствительны к регистру. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Указывает имя культуры, соответствующее указанному шаблону. Параметр Culture должен использоваться с параметром SimpleMatch. По умолчанию используется культура текущего пространства выполнения PowerShell (сеанса). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Указывает тип кодировки для целевого файла. Значение по умолчанию — utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Параметр NotMatch находит текст, не соответствующий указанному шаблону. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Указывает, что командлет использует простое сопоставление, а не сопоставление с регулярным выражением. При простом сопоставлении Select-String ищет во входных данных текст, указанный в параметре Pattern. Он не интерпретирует значение параметра Pattern как выражение регулярного выражения. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Use Push-Location instead of Set-Location and push the location onto the location stack |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Если установлено, учитываются только точные совпадения имен. По умолчанию используется подстановочное сопоставление, если только имя не содержит символы подстановки. |

## Related Links

- [Set-FoundLocation on GitHub](https://github.com/genXdev/genXdev)
