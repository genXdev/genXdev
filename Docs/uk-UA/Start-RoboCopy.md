# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Забезпечує оболонку PowerShell для утиліти Robust Copy (RoboCopy) від Microsoft.

## Description

Всеосяжна обгортка для утиліти командного рядка RoboCopy, яка забезпечує надійне копіювання файлів та каталогів. Ця функція відкриває широкий набір можливостей RoboCopy через параметри, зручні для PowerShell, зберігаючи більшість її потужних функцій.

Основні можливості:
- Синхронізація каталогів з параметрами дзеркалювання
- Підтримка наддовгих шляхів (>256 символів)
- Збереження налаштувань безпеки
- Розширена обробка атрибутів файлів
- Управління символічними посиланнями та точками з'єднання
- Режим моніторингу для безперервної синхронізації
- Оптимізація продуктивності для великих файлів
- Підтримка стиснення мережі
- Режим відновлення для пристроїв, що виходять з ладу

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | Каталог, шлях до файлу або каталог+маска пошуку |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | Каталог призначення, до якого потрібно помістити скопійовані файли та каталоги. Якщо цього каталогу ще не існує, всі відсутні каталоги будуть створені. Значення за замовчуванням = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Необов'язкова маска пошуку для вибору файлів, які потрібно скопіювати. Значення за замовчуванням = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Синхронізує вміст зазначених каталогів, а також видаляє будь-які файли та каталоги в місці призначення, яких не існує в джерелі. |
| `-Move` | SwitchParameter | — | — | Named | — | Переміщувати всі файли з джерела до призначення замість копіювання |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Буде також скопійовано інформацію про власника, дескриптори безпеки та аудит файлів і каталогів. |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Копіює лише файли з джерела, пропускаючи підкаталоги (без рекурсії) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Не копіює каталоги, якщо вони були б порожніми *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Створити лише дерево каталогів *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Створює дерево каталогів і файли нульової довжини |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Не копіюйте символічні посилання, з'єднання або вміст, на який вони вказують. |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Не копіюйте символічні посилання на файли, але переходьте по з'єднаннях директорій |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Замість копіювання вмісту, на який вказують символічні посилання, копіюйте самі посилання |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Не копіюйте з'єднання каталогів (символічні посилання на папки) або вміст, на який вони вказують *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Замість копіювання вмісту, на який вказують з'єднання, копіюйте самі з'єднання *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Копіюватиме всі файли, навіть якщо вони старіші за ті, що знаходяться в цільовій папці. |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Копіює лише файли, у яких встановлено атрибут архіву |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Окрім копіювання лише файлів, у яких встановлено архівний атрибут, також скидає цей атрибут у джерела. |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Виключити будь-які файли, що збігаються з будь-якими з цих назв/шляхів/масок 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Виключити будь-які каталоги, які відповідають будь-якому з цих назв/шляхів/шаблонів *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Копіювати лише файли, для яких встановлено всі ці атрибути [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Виключіть файли, які мають будь-який із цих атрибутів [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Встановить задані атрибути для скопійованих файлів [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Вилучить задані атрибути зі скопійованих файлів [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Копіювати лише верхні n рівнів дерева вихідного каталогу *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Пропускати файли, розмір яких менше n байтів |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Пропустити файли, розмір яких перевищує n байтів |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Пропустити файли, які не старіші за: n днів або створені до дати n (якщо n < 1900, то n = n днів, інакше n = дата у форматі YYYYMMDD) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Пропустити файли, які старіші за: n днів АБО створені після n дати (якщо n < 1900, то n = n днів, інакше n = дата у форматі YYYYMMDD) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Пропускати файли, до яких був доступ протягом останніх: n днів АБО до дати n (якщо n < 1900, то n = n днів, інакше n = дата у форматі YYYYMMDD) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Пропустити файли, до яких не було доступу: n днів АБО після n дати (якщо n < 1900, то n = n днів, інакше n = дата у форматі YYYYMMDD) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Незабаром призупинить і повторить спробу, коли під час копіювання виникнуть помилки введення/виведення. |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Залишатиметься активним після копіювання та копіюватиме додаткові зміни після стандартного порогу у 10 хвилин. |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Повторний запуск через n хвилин, якщо змінилося |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Запустити знову, коли буде виявлено більше ніж n змін |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Години роботи - час, коли можуть бути запущені нові копії, час початку, діапазон 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Години роботи — час, коли можна запускати нові копії, час завершення, діапазон 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Якщо вказано, ведення журналу також буде виконуватися до вказаного файлу |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Не додавати до вказаного файлу журналу, а перезаписувати |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Включіть усі назви просканованих каталогів у вихідні дані |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Включайте всі назви сканованих файлів у вихідні дані, навіть пропущені |
| `-Unicode` | SwitchParameter | — | — | Named | — | The `-Unicode` parameter. |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Увімкнути оптимізацію для копіювання великих файлів |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Оптимізуйте продуктивність за допомогою багатопотокового копіювання |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Якщо це можливо, використовуйте стиснення під час копіювання файлів між серверами, щоб заощадити пропускну здатність і час. |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Якщо встановлено, буде використовуватися зіставлення міток часу в мілісекундах замість стандартного допуску в 2 секунди. |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Перезаписує, видаляє або додає будь-який вказаний параметр robocopy.

Використання:

Додати або замінити параметр:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Видалити параметр:

    -Override -/Switch

Множинні перезаписи:

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

> Каталог, шлях до файлу або каталог+маска пошуку

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

> Каталог призначення, до якого потрібно помістити скопійовані файли та каталоги. Якщо цього каталогу ще не існує, всі відсутні каталоги будуть створені. Значення за замовчуванням = ".\"

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

> Необов'язкова маска пошуку для вибору файлів, які потрібно скопіювати. Значення за замовчуванням = '*'

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

> Синхронізує вміст зазначених каталогів, а також видаляє будь-які файли та каталоги в місці призначення, яких не існує в джерелі.

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

> Переміщувати всі файли з джерела до призначення замість копіювання

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

> Буде також скопійовано інформацію про власника, дескриптори безпеки та аудит файлів і каталогів.

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

> Копіює лише файли з джерела, пропускаючи підкаталоги (без рекурсії)

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

> Не копіює каталоги, якщо вони були б порожніми

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

> Створити лише дерево каталогів

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

> Створює дерево каталогів і файли нульової довжини

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

> Не копіюйте символічні посилання, з'єднання або вміст, на який вони вказують.

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

> Не копіюйте символічні посилання на файли, але переходьте по з'єднаннях директорій

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

> Замість копіювання вмісту, на який вказують символічні посилання, копіюйте самі посилання

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

> Не копіюйте з'єднання каталогів (символічні посилання на папки) або вміст, на який вони вказують

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

> Замість копіювання вмісту, на який вказують з'єднання, копіюйте самі з'єднання

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

> Копіюватиме всі файли, навіть якщо вони старіші за ті, що знаходяться в цільовій папці.

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

> Копіює лише файли, у яких встановлено атрибут архіву

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

> Окрім копіювання лише файлів, у яких встановлено архівний атрибут, також скидає цей атрибут у джерела.

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

> Виключити будь-які файли, що збігаються з будь-якими з цих назв/шляхів/масок

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

> Виключити будь-які каталоги, які відповідають будь-якому з цих назв/шляхів/шаблонів

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

> Копіювати лише файли, для яких встановлено всі ці атрибути [RASHCNETO]

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

> Виключіть файли, які мають будь-який із цих атрибутів [RASHCNETO]

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

> Встановить задані атрибути для скопійованих файлів [RASHCNETO]

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

> Вилучить задані атрибути зі скопійованих файлів [RASHCNETO]

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

> Копіювати лише верхні n рівнів дерева вихідного каталогу

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

> Пропускати файли, розмір яких менше n байтів

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

> Пропустити файли, розмір яких перевищує n байтів

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

> Пропустити файли, які не старіші за: n днів або створені до дати n (якщо n < 1900, то n = n днів, інакше n = дата у форматі YYYYMMDD)

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

> Пропустити файли, які старіші за: n днів АБО створені після n дати (якщо n < 1900, то n = n днів, інакше n = дата у форматі YYYYMMDD)

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

> Пропускати файли, до яких був доступ протягом останніх: n днів АБО до дати n (якщо n < 1900, то n = n днів, інакше n = дата у форматі YYYYMMDD)

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

> Пропустити файли, до яких не було доступу: n днів АБО після n дати (якщо n < 1900, то n = n днів, інакше n = дата у форматі YYYYMMDD)

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

> Незабаром призупинить і повторить спробу, коли під час копіювання виникнуть помилки введення/виведення.

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

> Залишатиметься активним після копіювання та копіюватиме додаткові зміни після стандартного порогу у 10 хвилин.

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

> Повторний запуск через n хвилин, якщо змінилося

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

> Запустити знову, коли буде виявлено більше ніж n змін

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

> Години роботи - час, коли можуть бути запущені нові копії, час початку, діапазон 0000:2359

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

> Години роботи — час, коли можна запускати нові копії, час завершення, діапазон 0000:2359

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

> Якщо вказано, ведення журналу також буде виконуватися до вказаного файлу

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

> Не додавати до вказаного файлу журналу, а перезаписувати

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

> Включіть усі назви просканованих каталогів у вихідні дані

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

> Включайте всі назви сканованих файлів у вихідні дані, навіть пропущені

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

> The `-Unicode` parameter.

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

> Увімкнути оптимізацію для копіювання великих файлів

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

> Оптимізуйте продуктивність за допомогою багатопотокового копіювання

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

> Якщо це можливо, використовуйте стиснення під час копіювання файлів між серверами, щоб заощадити пропускну здатність і час.

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

> Якщо встановлено, буде використовуватися зіставлення міток часу в мілісекундах замість стандартного допуску в 2 секунди.

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

> Перезаписує, видаляє або додає будь-який вказаний параметр robocopy.

Використання:

Додати або замінити параметр:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Видалити параметр:

    -Override -/Switch

Множинні перезаписи:

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Write-TextFileAtomic.md)
