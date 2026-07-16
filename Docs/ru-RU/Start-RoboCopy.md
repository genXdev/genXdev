# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc, `rc

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | Каталог, путь к файлу или каталог+маска поиска |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | Целевой каталог для размещения скопированных файлов и папок.
            Если этот каталог еще не существует, все недостающие каталоги будут созданы.
            Значение по умолчанию = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Необязательная маска поиска для выбора файлов, которые необходимо скопировать.
            Значение по умолчанию = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Синхронизирует содержимое указанных каталогов, также удаляет все файлы и каталоги в целевом расположении, которых нет в исходном |
| `-Move` | SwitchParameter | — | — | Named | — | Будет перемещать вместо копирования все файлы из источника в назначение |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Также будет скопирована информация о владельце, дескрипторах безопасности и аудите файлов и каталогов |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Копирует только файлы из источника, пропуская подкаталоги (без рекурсии) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Не копирует каталоги, если они были бы пустыми *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | project/
├── src/
│   ├── main.py
│   └── utils.py
├── tests/
│   ├── test_main.py
│   └── test_utils.py
├── config.json
└── README.md *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Create directory tree and zero-length files only |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Не копируйте символические ссылки, соединения или содержимое, на которое они указывают |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Не копировать символьные ссылки на файлы, но следовать за каталогами-переходами |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Вместо копирования содержимого, на которое указывают символические ссылки, копируйте сами ссылки |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Не копируйте соединения каталогов (символические ссылки на папки) и их содержимое *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Instead of copying the content where junctions point to, copy the junctions themselves *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Будет копировать все файлы, даже если они старее, чем файлы в месте назначения |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Копирует только файлы, у которых установлен атрибут архивации |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | В дополнение к копированию только тех файлов, у которых установлен атрибут архивации, будет сброшен этот атрибут на исходном файле. |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Exclude any files that match any of these names/paths/wildcards 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Исключить любые директории, соответствующие любым из этих имен/путей/шаблонов *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Копировать только файлы, у которых установлены все эти атрибуты [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Исключить файлы, у которых есть любой из этих атрибутов: [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Will set the given attributes to copied files [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Удалить указанные атрибуты из скопированных файлов [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Only copy the top n levels of the source directory tree *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Пропускать файлы, размер которых меньше n байт. |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Skip files that are larger than n bytes |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Skip files that are not at least: n days old OR created before n date (if n < 1900 then n = n days, else n = YYYYMMDD date) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Пропустить файлы, которые старше: n дней ИЛИ созданы после даты n (если n < 1900, то n = n дней, иначе n = дата в формате ГГГГММДД) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Пропустить файлы, к которым обращались в течение последних: n дней ИЛИ до n даты (если n < 1900, то n = n дней, иначе n = дата ГГГГММДД) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Пропустить файлы, к которым не обращались: n дней ИЛИ после n даты (если n < 1900, то n = n дней, иначе n = дата ГГГГММДД) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | При возникновении ошибок ввода-вывода во время копирования будет выполнена кратковременная пауза с последующей повторной попыткой |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Будет оставаться активным после копирования и копировать дополнительные изменения после стандартного порога в 10 минут |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Запустить снова через n минут, если изменилось |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Запустить снова, когда будет замечено более n изменений |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Часы работы - время, когда могут быть запущены новые копии, время начала, диапазон 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Run hours - times when new copies may be started, end-time, range 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Если указано, логирование также будет выполняться в указанный файл |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Не добавлять к указанному файлу журнала, а перезаписывать |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | All scanned directory names are included in the output. |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Include all scanned file names in output, even skipped onces |
| `-Unicode` | SwitchParameter | — | — | Named | — | Статус: УСПЕХ |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Включает оптимизацию для копирования больших файлов |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Оптимизируйте производительность с помощью многопоточного копирования |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | При возможности используйте сжатие при копировании файлов между серверами для экономии пропускной способности и времени |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | При установке будет использоваться сопоставление меток времени в миллисекундах вместо стандартного допуска в 2 секунды |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Переопределяет, удаляет или добавляет любой заданный параметр robocopy.

Использование:

Добавить или заменить параметр:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Удалить параметр:

    -Override -/Switch

Несколько переопределений:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Related Links

- [Start-RoboCopy on GitHub](https://github.com/genXdev/genXdev)
