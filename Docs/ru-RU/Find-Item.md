# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l

## Synopsis

> Поиск файлов и каталогов с расширенными возможностями фильтрации.

## Description

* Поиск файлов с помощью Find-Item -> l
        * Быстрый многопоточный поиск: использует параллельную и асинхронную обработку ввода-вывода с настраиваемой максимальной степенью параллелизма (по умолчанию на основе ядер ЦП) для эффективного сканирования файлов и каталогов.
        * Расширенное сопоставление шаблонов: поддерживает подстановочные знаки (*, ?), рекурсивные шаблоны, такие как **, и сложные структуры путей для точных запросов файлов и каталогов. **/filename будет рекурсировать только до тех пор, пока не будет найдено имя файла. Допускается несколько таких шаблонов, если они предваряются именем файла или каталога для сопоставления. Этот анализатор шаблонов обладает мощностью Resolve-Path, но имеет возможности рекурсии и поддерживает только * и ? в качестве подстановочных знаков, предотвращая ошибки с путями, содержащими квадратные скобки [ ], устраняя необходимость в параметре -LiteralPath, сохраняя целостность для частей путей без подстановочных знаков, в отличие от сопоставления с подстановочным знаком по всему полному пути.
        * Расширенный поиск содержимого: полная интеграция Select-String с шаблонами регулярных выражений в содержимом файлов с помощью параметра -Content.
            * Оптимизация больших файлов: обрабатывает очень большие файлы с помощью интеллектуальных перекрывающихся буферов и минимального выделения кучи
            * Несколько вариантов совпадений: поиск всех совпадений в строке (-AllMatches) или только первого совпадения в файле (-List)
            * Управление чувствительностью к регистру: чувствительное к регистру сопоставление (-CaseSensitive) с опциями, зависящими от культуры (-Culture)
            * Захват контекста: отображение строк до и после совпадений (-Context) для лучшего понимания
            * Обратное сопоставление: поиск файлов, не содержащих шаблон (-NotMatch)
            * Форматы вывода: необработанный строковый вывод (-Raw), тихий булевый ответ (-Quiet) или полные объекты MatchInfo
            * Типы шаблонов: регулярные выражения (по умолчанию) или простое сопоставление с литеральной строкой (-SimpleMatch)
            * Поддержка кодировок: указание кодировки файла (-Encoding) для точной обработки текста
        * Гибкость типа пути: обрабатывает относительные, абсолютные, UNC, корневые пути и альтернативные потоки данных NTFS (ADS) с возможностью поиска содержимого в потоках.
        * Поддержка нескольких дисков: поиск по всем дискам с -AllDrives или по конкретным дискам через -SearchDrives, включая оптические диски, если указано.
        * Фильтрация каталогов и файлов: опции для поиска только каталогов (-Directory), как файлов, так и каталогов (-FilesAndDirectories) или файлов с совпадением содержимого.
        * Исключения и ограничения: шаблоны исключения с -Exclude, установка максимальной глубины рекурсии (-MaxRecursionDepth), ограничения размера файла (-MaxFileSize, -MinFileSize) и фильтры по дате изменения (-ModifiedAfter, -ModifiedBefore).
        * Настройка вывода: поддерживает PassThru для объектов FileInfo/DirectoryInfo, относительные пути, гиперссылки в интерактивном режиме или обычные пути в неинтерактивном режиме (используйте -NoLinks в случае ошибок для принудительного неинтерактивного режима).
        * Оптимизация производительности: пропускает не текстовые файлы по умолчанию при поиске содержимого (переопределяется с помощью -IncludeNonTextFileMatching), обрабатывает длинные пути (>260 символов) и следует по символическим ссылкам/соединениям.
        * Функции безопасности: поддержка тайм-аута (-TimeoutSeconds), игнорирует недоступные элементы, пропускает системные атрибуты по умолчанию и предотвращает бесконечные циклы с отслеживанием посещенных узлов.

## Syntax

```powershell
Find-Item [[-Name] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [<CommonParameters>]

Find-Item [[-Name] <string[]>] [[-Content] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [-AllMatches] [-CaseSensitive] [-Context <int[]>] [-Culture <string>] [-Encoding <string>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Имя файла или шаблон для поиска. По умолчанию '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Имя файла или шаблон для поиска. По умолчанию '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Регулярное выражение для поиска в содержимом *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Базовый путь для разрешения относительных путей в выводе |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Максимальная степень параллелизма для задач каталога |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Необязательно: время ожидания отмены в секундах |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Выполнить поиск по всем доступным дискам |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Search for directories only |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Включите как файлы, так и каталоги |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | [
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
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Включить альтернативные потоки данных в результаты поиска |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Не рекурсировать в подкаталоги |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Следовать символическим ссылкам и точкам соединения при обходе каталогов |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Включая оптические дисководы |
| `-SearchDrives` | String[] | — | — | Named | — | Необязательно: поиск по конкретным дискам |
| `-DriveLetter` | Char[] | — | — | Named | — | Необязательно: поиск по конкретным дискам |
| `-Root` | String[] | — | — | Named | — | Опционально: поиск в конкретных каталогах |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Обеспечивает поиск только в корневых каталогах путем удаления компонентов пути из входных имен |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Включать не текстовые файлы при поиске содержимого файлов |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Принудительный автономный режим, ссылки не будут создаваться |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Получает или задает чувствительность к регистру для файлов и каталогов |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | При установке выполняет поиск содержимого в альтернативных потоках данных (ADS). Если не установлен, выводит информацию о файлах ADS без поиска их содержимого. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Максимальная глубина рекурсии для обхода директорий. 0 означает без ограничений. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Максимальная глубина рекурсии для продолжения поиска вверх по дереву при относительных поисках, пока не будут найдены элементы. 0 означает отключено. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Максимальный размер файла в байтах для включения в результаты. 0 означает без ограничений. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Минимальный размер файла в байтах для включения в результаты. 0 означает отсутствие минимума. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Включать только файлы, измененные после этой даты/времени (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Включать только файлы, изменённые до этой даты/времени (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Атрибуты файлов для пропуска (например, «Системный», «Скрытый» или «Нет»). |
| `-Exclude` | String[] | — | — | Named | — | Исключить файлы или каталоги, соответствующие этим шаблонам подстановки (например, *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Указывает, что командлет ищет более одного совпадения в каждой строке текста. Без этого параметра Select-String находит только первое совпадение в каждой строке текста. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Указывает, что совпадения командлета чувствительны к регистру. По умолчанию совпадения не чувствительны к регистру. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Фиксирует указанное количество строк до и после строки, соответствующей шаблону. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Указывает имя культуры, соответствующее указанному шаблону. Параметр Culture должен использоваться с параметром SimpleMatch. По умолчанию используется культура текущего пространства выполнения PowerShell (сеанса). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Указывает тип кодировки для целевого файла. Поддерживает значения, совместимые с Select-String, и расширенные кодировки .NET. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Только первый экземпляр совпадающего текста возвращается из каждого входного файла. Это наиболее эффективный способ получить список файлов, содержимое которых соответствует регулярному выражению. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Отключает подсветку совпадающих строк в выводе. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | Параметр NotMatch находит текст, не соответствующий указанному шаблону. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Указывает, что командлет возвращает простой ответ вместо объекта MatchInfo. Возвращаемое значение равно $true, если шаблон найден, или $null, если шаблон не найден. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Заставляет командлет выводить только совпадающие строки, а не объекты MatchInfo. Это приводит к поведению, наиболее похожему на команды Unix grep или Windows findstr.exe. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Указывает, что командлет использует простое сопоставление, а не сопоставление с регулярным выражением. При простом сопоставлении Select-String ищет во входных данных текст, указанный в параметре Pattern. Он не интерпретирует значение параметра Pattern как выражение регулярного выражения. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Поиск файлов, содержащих определенное слово
Найти все файлы в текущем каталоге и подкаталогах, которые содержат слово "translation".

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Найти JavaScript-файлы со строкой версии
Искать JavaScript-файлы, содержащие строку версии в формате "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Вывести все каталоги
Найти все каталоги в текущем каталоге и его подкаталогах.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Найти XML-файлы и передать объекты
Искать все файлы .xml и передать результаты как объекты через конвейер.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Включить альтернативные потоки данных
Искать все файлы и включать их альтернативные потоки данных в результаты.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Поиск по всем дискам
Найти все PDF-файлы на всех доступных дисках.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Настраиваемый тайм-аут и параллелизм
Поиск файлов журналов с тайм-аутом 5 минут и ограниченным параллелизмом.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Передача данных в конвейер
Передать пути файлов из Get-ChildItem для поиска файлов, содержащих "error".

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Ограничить глубину рекурсии
Искать текстовые файлы, но ограничить рекурсию глубиной в 2 уровня каталогов.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Фильтр по размеру файла
Найти файлы размером более 1 МБ, но менее 10 МБ.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Фильтр по дате изменения
Найти файлы, измененные после 1 января 2025 года.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Исключить определенные шаблоны
Искать все файлы, но исключить временные файлы и каталоги bin.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Поиск на определенных дисках
Поиск файлов .docx только на дисках C: и D:.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Контекстно-зависимый поиск содержимого
Искать файлы, содержащие "Error" (с учетом регистра) в их содержимом.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Поиск содержимого альтернативных потоков данных
Поиск файлов с альтернативными потоками данных, содержащими "secret".

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Найти все совпадения в каждой строке
Искать все вхождения "function" в каждой строке, а не только первое совпадение.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Показывать контекст вокруг совпадений
Отображать 2 строки до и 3 строки после каждого совпадения для лучшего понимания.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Извлекать только совпадающие строки
Возвращать только строки совпадающего текста вместо полных объектов совпадений.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Простая проверка на true/false
Возвращайте true/false вместо деталей совпадения, чтобы проверить, существует ли шаблон.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Находить только первое совпадение в файле
Останавливаться на первом совпадении в каждом файле для эффективного отображения файлов.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Поиск точного совпадения строки
Поиск точного текста без интерпретации регулярных выражений с помощью SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Поиск файлов, не содержащих шаблон
Используйте NotMatch для поиска файлов, не содержащих указанный шаблон.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Укажите кодировку файла
Поиск файлов с определенной кодировкой для точной обработки текста.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Сравнение культурных текстов
Используйте культурно-специфическое сопоставление с SimpleMatch для международного текста.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Сложный поиск содержимого с фильтрами по файлам
Объедините фильтры по размеру файла, дате и содержимому для точного поиска.

## Related Links

- [Find-Item on GitHub](https://github.com/genXdev/genXdev)
