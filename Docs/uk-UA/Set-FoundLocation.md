# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> Знаходить перший відповідний файл або теку та встановлює на нього розташування.

## Description

Цей командлет допоможе швидко змінювати каталоги за допомогою пошукових фраз, які знайдуть першу відповідну папку або файл (необов'язково) та змінять каталог на нього. Підтримує розширену фільтрацію за вмістом, атрибутами файлів, розміром, датами зміни та багатьма іншими критеріями.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Ім'я файлу або шаблон для пошуку. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Ім'я файлу або шаблон для пошуку з конвеєра вхідних даних. За замовчуванням '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Регулярний вираз для пошуку вмісту файлів *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Лише виводити файли, що належать до вибраних категорій |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Максимальний ступінь паралелізму для завдань каталогу |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Необов'язково: час очікування скасування в секундах |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Пошук на всіх доступних дисках |
| `-File` | SwitchParameter | — | — | Named | — | Шукати лише імена файлів та перейти до папки першого знайденого файлу |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Включити пошук за назвою файлу та перейти до папки з першим знайденим файлом |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Включити альтернативні потоки даних у результати пошуку |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Не входити до підкаталогів |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Слідувати символьним посиланням і зв'язкам під час обходу каталогів |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Включає оптичні дисководи |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Необов'язково: пошук на конкретних дисках |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Необов'язково: пошук на конкретних дисках |
| `-Root` | String[] | — | — | Named | `@()` | Необов'язково: пошук у визначених базових папках у поєднанні з наданими іменами |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Включати нетекстові файли (двійкові файли, зображення тощо) під час пошуку вмісту файлів |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Отримує або задає чутливість до регістру для файлів та каталогів |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Якщо встановлено, виконує пошук вмісту в альтернативних потоках даних (ADS). Якщо не встановлено, виводить інформацію про файли ADS без пошуку їх вмісту. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Максимальна глибина рекурсії для обходу каталогів. 0 означає необмежено. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Максимальний розмір файлу в байтах для включення в результати. 0 означає без обмежень. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Мінімальний розмір файлу в байтах для включення в результати. 0 означає без мінімуму. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Включати лише файли, змінені після цієї дати/часу (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Включати лише файли, змінені до цієї дати/часу (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Атрибути файлів для пропуску (наприклад, System, Hidden або None). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Виключати файли або каталоги, які відповідають цим шаблонам символів підстановки (наприклад, *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Вказує, що збіги командлета чутливі до регістру. За замовчуванням збіги не чутливі до регістру. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Вказує назву культури для зіставлення з указаним шаблоном. Параметр Culture потрібно використовувати разом із параметром SimpleMatch. Поведінка за замовчуванням використовує культуру поточного простору виконання PowerShell (сеансу). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Визначає тип кодування для цільового файлу. Значення за замовчуванням — utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Параметр NotMatch знаходить текст, який не відповідає вказаному шаблону. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Вказує, що cmdlet використовує простий збіг, а не збіг за регулярним виразом. При простому збігу Select-String шукає вхідний текст для тексту в параметрі Pattern. Він не інтерпретує значення параметра Pattern як вираз регулярного виразу. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Використовуйте Push-Location замість Set-Location, щоб помістити розташування в стек розташувань. |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Якщо встановлено, враховуються лише точні збіги імен. За замовчуванням використовується відповідність за маскою, якщо назва не містить символів підстановки. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

Зміни до першого каталогу, що відповідає шаблону '*.Console'.

### lcd *.Console

```powershell
lcd *.Console
```

Зміни до першого каталогу, що відповідає шаблону '*.Console', з використанням псевдоніма.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

Змінює каталог, що містить перший файл PowerShell, який містить слово 'function'.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Змінює каталог на той, що містить перший файл з 'test' у назві.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

Зміни до каталогу, що містить перший файл, вміст якого відповідає шаблону '1.\d+\.2025'.

## Parameter Details

### `-Name <String>`

> Ім'я файлу або шаблон для пошуку.

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

> Ім'я файлу або шаблон для пошуку з конвеєра вхідних даних. За замовчуванням '*'

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

> Регулярний вираз для пошуку вмісту файлів

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

> Лише виводити файли, що належать до вибраних категорій

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

> Максимальний ступінь паралелізму для завдань каталогу

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

> Необов'язково: час очікування скасування в секундах

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

> Пошук на всіх доступних дисках

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

> Шукати лише імена файлів та перейти до папки першого знайденого файлу

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

> Включити пошук за назвою файлу та перейти до папки з першим знайденим файлом

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

> Включити альтернативні потоки даних у результати пошуку

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

> Не входити до підкаталогів

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

> Слідувати символьним посиланням і зв'язкам під час обходу каталогів

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

> Включає оптичні дисководи

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

> Необов'язково: пошук на конкретних дисках

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

> Необов'язково: пошук на конкретних дисках

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

> Необов'язково: пошук у визначених базових папках у поєднанні з наданими іменами

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

> Включати нетекстові файли (двійкові файли, зображення тощо) під час пошуку вмісту файлів

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

> Отримує або задає чутливість до регістру для файлів та каталогів

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

> Якщо встановлено, виконує пошук вмісту в альтернативних потоках даних (ADS). Якщо не встановлено, виводить інформацію про файли ADS без пошуку їх вмісту.

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

> Максимальна глибина рекурсії для обходу каталогів. 0 означає необмежено.

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

> Максимальний розмір файлу в байтах для включення в результати. 0 означає без обмежень.

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

> Мінімальний розмір файлу в байтах для включення в результати. 0 означає без мінімуму.

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

> Включати лише файли, змінені після цієї дати/часу (UTC).

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

> Включати лише файли, змінені до цієї дати/часу (UTC).

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

> Атрибути файлів для пропуску (наприклад, System, Hidden або None).

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

> Виключати файли або каталоги, які відповідають цим шаблонам символів підстановки (наприклад, *.tmp, *\bin\*).

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

> Вказує, що збіги командлета чутливі до регістру. За замовчуванням збіги не чутливі до регістру.

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

> Вказує назву культури для зіставлення з указаним шаблоном. Параметр Culture потрібно використовувати разом із параметром SimpleMatch. Поведінка за замовчуванням використовує культуру поточного простору виконання PowerShell (сеансу).

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

> Визначає тип кодування для цільового файлу. Значення за замовчуванням — utf8NoBOM.

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

> Параметр NotMatch знаходить текст, який не відповідає вказаному шаблону.

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

> Вказує, що cmdlet використовує простий збіг, а не збіг за регулярним виразом. При простому збігу Select-String шукає вхідний текст для тексту в параметрі Pattern. Він не інтерпретує значення параметра Pattern як вираз регулярного виразу.

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

> Використовуйте Push-Location замість Set-Location, щоб помістити розташування в стек розташувань.

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

> Якщо встановлено, враховуються лише точні збіги імен. За замовчуванням використовується відповідність за маскою, якщо назва не містить символів підстановки.

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
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Write-TextFileAtomic.md)
