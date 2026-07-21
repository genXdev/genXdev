# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> Находит первый подходящий файл или папку и перемещает расположение к нему.

## Description

Этот командлет поможет быстро переключать каталоги, используя поисковые запросы, которые найдут первую подходящую папку или файл (необязательно), и перейдет в этот каталог. Поддерживает расширенную фильтрацию по содержимому, атрибутам файлов, размеру, датам изменения и многим другим критериям.

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
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Имя файла или шаблон для поиска из входных данных конвейера. По умолчанию '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Регулярное выражение для поиска в содержимом файлов *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Только файлы, принадлежащие выбранным категориям |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Максимальная степень параллелизма для задач с каталогами |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Необязательно: время ожидания отмены (в секундах) |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Поиск по всем доступным дискам |
| `-File` | SwitchParameter | — | — | Named | — | Поиск только по именам файлов и переход в папку первого найденного файла |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Включить поиск по имени файла и перейти в папку первого найденного файла |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Включать альтернативные потоки данных в результаты поиска |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Не выполнять рекурсию в подкаталоги |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Следовать символьным ссылкам и точкам соединения при обходе каталогов |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Включить оптические дисководы |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Необязательно: поиск на определенных дисках |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Необязательно: поиск на определенных дисках |
| `-Root` | String[] | — | — | Named | `@()` | Необязательно: выполнять поиск в указанных базовых папках в сочетании с предоставленными именами |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Включать нетекстовые файлы (двоичные, изображения и т. д.) при поиске содержимого файлов |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Получает или задает чувствительность к регистру для файлов и каталогов |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | При установке выполняет поиск содержимого в альтернативных потоках данных (ADS). Если не установлен, выводит информацию о файлах ADS без поиска их содержимого. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Максимальная глубина рекурсии для обхода каталогов. 0 означает неограниченно. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Максимальный размер файла в байтах для включения в результаты. 0 означает без ограничений. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Минимальный размер файла в байтах для включения в результаты. 0 означает отсутствие минимума. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Включать только файлы, измененные после этой даты/времени (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Включать только файлы, измененные до этой даты/времени (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Атрибуты файлов, которые следует пропустить (например, «Системный», «Скрытый» или «Нет»). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Исключить файлы или каталоги, соответствующие этим шаблонам с подстановочными знаками (например, *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Указывает, что совпадения командлета учитывают регистр. По умолчанию совпадения не учитывают регистр. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Задает имя языка для сопоставления с указанным шаблоном. Параметр Culture необходимо использовать с параметром SimpleMatch. Поведение по умолчанию использует язык текущего пространства выполнения PowerShell (сеанса). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Задает тип кодировки для целевого файла. Значение по умолчанию — utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Параметр NotMatch ищет текст, который не соответствует указанному шаблону. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Указывает, что командлет использует простое сопоставление, а не сопоставление с регулярным выражением. При простом сопоставлении Select-String ищет во входных данных текст из параметра Pattern. Он не интерпретирует значение параметра Pattern как выражение регулярного выражения. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Используйте Push-Location вместо Set-Location и поместите расположение в стек расположений |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | При установке учитываются только точные совпадения имен. По умолчанию используется сопоставление с подстановочными знаками, если имя не содержит символов подстановки. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

Изменения в первый каталог, соответствующий шаблону '*.Console'.

### lcd *.Console

```powershell
lcd *.Console
```

Изменения первого каталога, соответствующего шаблону '*.Console', с использованием псевдонима.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

Переход в каталог, содержащий первый файл PowerShell, в котором встречается слово 'function'.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Изменения в каталоге, содержащем первый файл с «test» в имени.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

Изменения каталога, содержащего первый файл, содержимое которого соответствует шаблону '1.\d+\.2025'.

## Parameter Details

### `-Name <String>`

> Имя файла или шаблон для поиска.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-InputObject <Object>`

> Имя файла или шаблон для поиска из входных данных конвейера. По умолчанию '*'

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | InputObject |

<hr/>
### `-Content <String[]>`

> Регулярное выражение для поиска в содержимом файлов

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@(".*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-Category <String[]>`

> Только файлы, принадлежащие выбранным категориям

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> Максимальная степень параллелизма для задач с каталогами

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Необязательно: время ожидания отмены (в секундах)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> Поиск по всем доступным дискам

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-File`

> Поиск только по именам файлов и переход в папку первого найденного файла

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filename` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DirectoriesAndFiles`

> Включить поиск по имени файла и перейти в папку первого найденного файла

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `FilesAndDirectories` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Включать альтернативные потоки данных в результаты поиска

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Не выполнять рекурсию в подкаталоги

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Следовать символьным ссылкам и точкам соединения при обходе каталогов

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> Включить оптические дисководы

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> Необязательно: поиск на определенных дисках

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> Необязательно: поиск на определенных дисках

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> Необязательно: выполнять поиск в указанных базовых папках в сочетании с предоставленными именами

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Включать нетекстовые файлы (двоичные, изображения и т. д.) при поиске содержимого файлов

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Получает или задает чувствительность к регистру для файлов и каталогов

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.MatchCasing]::PlatformDefault)` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> При установке выполняет поиск содержимого в альтернативных потоках данных (ADS). Если не установлен, выводит информацию о файлах ADS без поиска их содержимого.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> Максимальная глубина рекурсии для обхода каталогов. 0 означает неограниченно.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> Максимальный размер файла в байтах для включения в результаты. 0 означает без ограничений.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> Минимальный размер файла в байтах для включения в результаты. 0 означает отсутствие минимума.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <DateTime>`

> Включать только файлы, измененные после этой даты/времени (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <DateTime>`

> Включать только файлы, измененные до этой даты/времени (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> Атрибуты файлов, которые следует пропустить (например, «Системный», «Скрытый» или «Нет»).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.FileAttributes]::System)` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Исключить файлы или каталоги, соответствующие этим шаблонам с подстановочными знаками (например, *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@("*\\.git\\*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseSensitive`

> Указывает, что совпадения командлета учитывают регистр. По умолчанию совпадения не учитывают регистр.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> Задает имя языка для сопоставления с указанным шаблоном. Параметр Culture необходимо использовать с параметром SimpleMatch. Поведение по умолчанию использует язык текущего пространства выполнения PowerShell (сеанса).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> Задает тип кодировки для целевого файла. Значение по умолчанию — utf8NoBOM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"UTF8NoBOM"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> Параметр NotMatch ищет текст, который не соответствует указанному шаблону.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> Указывает, что командлет использует простое сопоставление, а не сопоставление с регулярным выражением. При простом сопоставлении Select-String ищет во входных данных текст из параметра Pattern. Он не интерпретирует значение параметра Pattern как выражение регулярного выражения.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Push`

> Используйте Push-Location вместо Set-Location и поместите расположение в стек расположений

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> При установке учитываются только точные совпадения имен. По умолчанию используется сопоставление с подстановочными знаками, если имя не содержит символов подстановки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Rename-InProject.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Write-TextFileAtomic.md)
