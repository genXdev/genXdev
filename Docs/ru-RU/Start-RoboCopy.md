# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Предоставляет оболочку PowerShell для утилиты Robust Copy (RoboCopy) корпорации Майкрософт.

## Description

Полноценная обертка для служебной программы командной строки RoboCopy, обеспечивающая надежное копирование файлов и каталогов. Эта функция предоставляет обширный набор возможностей RoboCopy через параметры, удобные для PowerShell, сохраняя при этом большую часть ее мощного функционала.

Ключевые возможности:
- Синхронизация каталогов с опциями зеркалирования
- Поддержка очень длинных имен путей (>256 символов)
- Сохранение параметров безопасности
- Расширенная обработка атрибутов файлов
- Управление символическими ссылками и точками соединения
- Режим мониторинга для непрерывной синхронизации
- Оптимизация производительности для больших файлов
- Поддержка сжатия в сети
- Режим восстановления для отказавших устройств

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
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | Каталог назначения для размещения скопированных файлов и каталогов. Если этот каталог еще не существует, все недостающие каталоги будут созданы. Значение по умолчанию = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Необязательная маска поиска для выбора файлов, которые необходимо скопировать.
            Значение по умолчанию = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Синхронизирует содержимое указанных каталогов, также удаляет все файлы и каталоги в папке назначения, которых нет в исходной папке |
| `-Move` | SwitchParameter | — | — | Named | — | Вместо копирования переместит все файлы из источника в назначение |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Также будет копировать права владения, дескрипторы безопасности и информацию аудита файлов и каталогов |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Копирует только файлы из источника и пропускает подкаталоги (без рекурсии) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Не копирует каталоги, если они будут пустыми *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Создать только дерево папок *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Создание дерева каталогов и файлов нулевой длины |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Не копировать символические ссылки, точки соединения или содержимое, на которое они указывают |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Не копировать символические ссылки на файлы, но следовать соединениям каталогов |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Вместо копирования содержимого, на которое указывают символические ссылки, копируйте сами ссылки |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Не копируйте точки соединения каталогов (символические ссылки на папки) и их целевое содержимое. *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Вместо копирования содержимого, на которое указывают точки соединения, копируйте сами точки соединения *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Будет копировать все файлы, даже если они старше файлов в назначении |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Копирует только файлы, у которых установлен атрибут архива |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | В дополнение к копированию только файлов, у которых установлен атрибархивации, затем сбросит этот атрибут на источнике |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Исключите все файлы, соответствующие любому из этих имен/путей/шаблонов 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Исключите все каталоги, соответствующие любому из этих имен/путей/шаблонов. *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Копировать только файлы с этими атрибутами [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Исключить файлы, у которых установлены любые из этих атрибутов [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Применит указанные атрибуты к скопированным файлам [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Удаляет указанные атрибуты из скопированных файлов [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Копировать только верхние n уровней дерева исходного каталога *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Пропускать файлы, размер которых меньше n байт |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Пропустить файлы, размер которых превышает n байт |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Пропускать файлы, которые не старше: n дней или созданы до даты n (если n < 1900, то n = n дней, иначе n = дата ГГГГММДД) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Пропускать файлы, которые старше: n дней ИЛИ созданы после даты n (если n < 1900, то n = n дней, иначе n = дата ГГГГММДД) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Пропускать файлы, к которым обращались в течение последних: n дней ИЛИ до даты n (если n < 1900, то n = n дней, иначе n = дата в формате ГГГГММДД) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Пропустить файлы, к которым не было доступа: через n дней ИЛИ после n даты (если n < 1900, то n = n дней, иначе n = дата в формате ГГГГММДД) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Будет выполнена короткая пауза и повторная попытка при возникновении ошибок ввода-вывода во время копирования |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Останется активным после копирования и будет копировать дополнительные изменения после истечения порога по умолчанию в 10 минут |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Запустить повторно через N минут, если изменилось |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Запустить снова, когда будет обнаружено более n изменений |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Время выполнения - моменты, когда могут быть запущены новые копии, время начала, диапазон 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Часы работы - время, когда могут быть запущены новые копии, время окончания, диапазон 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Если указано, ведение журнала также будет выполняться в указанный файл |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Не добавлять в указанный файл журнала, а перезаписывать его |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Включить в вывод все имена сканированных каталогов |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Включайте в вывод все имена просканированных файлов, даже пропущенные |
| `-Unicode` | SwitchParameter | — | — | Named | — | Вывести статус в Юникоде |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Включает оптимизацию для копирования больших файлов |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Оптимизация производительности за счет многопоточного копирования |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | По возможности используйте сжатие при копировании файлов между серверами для экономии пропускной способности и времени. |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | При установке будет использоваться сопоставление меток времени в миллисекундах вместо допуска по умолчанию в 2 секунды |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Переопределяет, удаляет или добавляет любой указанный параметр robocopy.

Использование:

Добавить или заменить параметр:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Удалить параметр:

    -Override -/Switch

Несколько переопределений:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> Каталог, путь к файлу или каталог+маска поиска

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> Каталог назначения для размещения скопированных файлов и каталогов. Если этот каталог еще не существует, все недостающие каталоги будут созданы. Значение по умолчанию = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> Необязательная маска поиска для выбора файлов, которые необходимо скопировать.
            Значение по умолчанию = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> Синхронизирует содержимое указанных каталогов, также удаляет все файлы и каталоги в папке назначения, которых нет в исходной папке

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> Вместо копирования переместит все файлы из источника в назначение

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> Также будет копировать права владения, дескрипторы безопасности и информацию аудита файлов и каталогов

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> Копирует только файлы из источника и пропускает подкаталоги (без рекурсии)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> Не копирует каталоги, если они будут пустыми

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> Создать только дерево папок

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> Создание дерева каталогов и файлов нулевой длины

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> Не копировать символические ссылки, точки соединения или содержимое, на которое они указывают

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> Не копировать символические ссылки на файлы, но следовать соединениям каталогов

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> Вместо копирования содержимого, на которое указывают символические ссылки, копируйте сами ссылки

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> Не копируйте точки соединения каталогов (символические ссылки на папки) и их целевое содержимое.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> Вместо копирования содержимого, на которое указывают точки соединения, копируйте сами точки соединения

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> Будет копировать все файлы, даже если они старше файлов в назначении

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> Копирует только файлы, у которых установлен атрибут архива

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> В дополнение к копированию только файлов, у которых установлен атрибархивации, затем сбросит этот атрибут на источнике

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> Исключите все файлы, соответствующие любому из этих имен/путей/шаблонов

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> Исключите все каталоги, соответствующие любому из этих имен/путей/шаблонов.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> Копировать только файлы с этими атрибутами [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> Исключить файлы, у которых установлены любые из этих атрибутов [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> Применит указанные атрибуты к скопированным файлам [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> Удаляет указанные атрибуты из скопированных файлов [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> Копировать только верхние n уровней дерева исходного каталога

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> Пропускать файлы, размер которых меньше n байт

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> Пропустить файлы, размер которых превышает n байт

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> Пропускать файлы, которые не старше: n дней или созданы до даты n (если n < 1900, то n = n дней, иначе n = дата ГГГГММДД)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> Пропускать файлы, которые старше: n дней ИЛИ созданы после даты n (если n < 1900, то n = n дней, иначе n = дата ГГГГММДД)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> Пропускать файлы, к которым обращались в течение последних: n дней ИЛИ до даты n (если n < 1900, то n = n дней, иначе n = дата в формате ГГГГММДД)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> Пропустить файлы, к которым не было доступа: через n дней ИЛИ после n даты (если n < 1900, то n = n дней, иначе n = дата в формате ГГГГММДД)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> Будет выполнена короткая пауза и повторная попытка при возникновении ошибок ввода-вывода во время копирования

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> Останется активным после копирования и будет копировать дополнительные изменения после истечения порога по умолчанию в 10 минут

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> Запустить повторно через N минут, если изменилось

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> Запустить снова, когда будет обнаружено более n изменений

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> Время выполнения - моменты, когда могут быть запущены новые копии, время начала, диапазон 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> Часы работы - время, когда могут быть запущены новые копии, время окончания, диапазон 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> Если указано, ведение журнала также будет выполняться в указанный файл

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> Не добавлять в указанный файл журнала, а перезаписывать его

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> Включить в вывод все имена сканированных каталогов

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> Включайте в вывод все имена просканированных файлов, даже пропущенные

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> Вывести статус в Юникоде

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> Включает оптимизацию для копирования больших файлов

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> Оптимизация производительности за счет многопоточного копирования

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> По возможности используйте сжатие при копировании файлов между серверами для экономии пропускной способности и времени.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> При установке будет использоваться сопоставление меток времени в миллисекундах вместо допуска по умолчанию в 2 секунды

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> Переопределяет, удаляет или добавляет любой указанный параметр robocopy.

Использование:

Добавить или заменить параметр:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Удалить параметр:

    -Override -/Switch

Несколько переопределений:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

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
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Write-TextFileAtomic.md)
