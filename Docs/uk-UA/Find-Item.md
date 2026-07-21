# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> Шукає файли та каталоги з розширеними параметрами фільтрації.

## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Ім'я файлу або шаблон для пошуку. За замовчуванням: '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Ім'я файлу або шаблон для пошуку. За замовчуванням: '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Регулярний вираз для пошуку у вмісті *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Базовий шлях для вирішення відносних шляхів у виводі |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Максимальний ступінь паралелізму для завдань каталогу |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Необов'язково: час очікування скасування в секундах |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Пошук на всіх доступних дисках |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Шукати лише каталоги |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Включає як файли, так і каталоги |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Вивести відповідні елементи як об'єкти |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Включити альтернативні потоки даних у результати пошуку |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Не входити до підкаталогів |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Слідувати символьним посиланням і зв'язкам під час обходу каталогів |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Включає оптичні дисководи |
| `-SearchDrives` | String[] | — | — | Named | — | Необов'язково: пошук на конкретних дисках |
| `-DriveLetter` | Char[] | — | — | Named | — | Необов'язково: пошук на конкретних дисках |
| `-Root` | String[] | — | — | Named | — | Необов'язково: пошук у конкретних каталогах |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Забезпечує пошук лише в кореневих каталогах, видаляючи компоненти шляху з введених назв |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Включати нетекстові файли під час пошуку вмісту файлів |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Примусово вмикає автоматичний режим і не створюватиме посилань |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Отримує або задає чутливість до регістру для файлів та каталогів |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Якщо встановлено, виконує пошук вмісту в альтернативних потоках даних (ADS). Якщо не встановлено, виводить інформацію про файли ADS без пошуку їх вмісту. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Максимальна глибина рекурсії для обходу каталогів. 0 означає необмежено. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Максимальна глибина рекурсії для продовження пошуку вгору по дереву для відносних пошуків, поки не знайдено елементів. 0 означає вимкнено. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Максимальний розмір файлу в байтах для включення в результати. 0 означає без обмежень. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Мінімальний розмір файлу в байтах для включення в результати. 0 означає без мінімуму. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Включати лише файли, змінені після цієї дати/часу (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Включати лише файли, змінені до цієї дати/часу (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Атрибути файлів для пропуску (наприклад, System, Hidden або None). |
| `-Exclude` | String[] | — | — | Named | — | Виключити файли або каталоги, що відповідають цим шаблонам Wildcard (наприклад, *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Вказує, що cmdlet шукає більше ніж один збіг у кожному рядку тексту. Без цього параметра Select-String знаходить лише перший збіг у кожному рядку тексту. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Вказує, що збіги командлета чутливі до регістру. За замовчуванням збіги не чутливі до регістру. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Захоплює вказану кількість рядків до та після рядка, що відповідає шаблону. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Вказує назву культури для зіставлення з указаним шаблоном. Параметр Culture потрібно використовувати разом із параметром SimpleMatch. Поведінка за замовчуванням використовує культуру поточного простору виконання PowerShell (сеансу). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Вказує тип кодування для цільового файлу. Підтримує значення, сумісні з Select-String, та розширені кодування .NET. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | З кожного вхідного файла повертається лише перший збіг тексту. Це найефективніший спосіб отримати список файлів, вміст яких відповідає регулярному виразу. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Вимикає виділення збігів рядків у вихідних даних. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | Параметр NotMatch знаходить текст, який не відповідає вказаному шаблону. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Вказує, що командлет повертає просту відповідь замість об'єкта MatchInfo. Повернене значення дорівнює $true, якщо шаблон знайдено, або $null, якщо шаблон не знайдено. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Змушує cmdlet виводити лише рядки, що збігаються, а не об'єкти MatchInfo. Це призводить до поведінки, найбільш подібної до Unix grep або Windows findstr.exe. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Вказує, що cmdlet використовує простий збіг, а не збіг за регулярним виразом. При простому збігу Select-String шукає вхідний текст для тексту в параметрі Pattern. Він не інтерпретує значення параметра Pattern як вираз регулярного виразу. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Знайти файли, що містять певне слово
Пошук усіх файлів у поточній директорії та піддиректоріях, які містять слово "translation".

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Знайти файли JavaScript з рядком версії
Пошук файлів JavaScript, що містять рядок версії у форматі "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Перелічити всі каталоги
Знайти всі каталоги в поточному каталозі та його підкаталогах.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Знайти XML-файли та передати об'єкти
Знайти всі файли .xml і передати результати як об'єкти через конвеєр.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Включити альтернативні потоки даних
Шукати всі файли та включати їхні альтернативні потоки даних у результати.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Пошук на всіх дисках
Пошук усіх PDF-файлів на всіх доступних дисках.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Настроюваний таймаут і паралелізм
Пошук файлів журналу з таймаутом 5 хвилин і обмеженим паралелізмом.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Вхідні дані конвеєра
Передавати шляхи файлів з Get-ChildItem для пошуку файлів, що містять «error».

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Обмежити глибину рекурсії
Шукати текстові файли, але обмежити рекурсію до 2 рівнів каталогів.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Фільтрувати за розміром файлу
Знайти файли більші за 1 МБ, але менші за 10 МБ.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Фільтрувати за датою зміни
Знайти файли, змінені після 1 січня 2025 року.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Виключити конкретні шаблони
Шукати всі файли, але виключити тимчасові файли та каталоги bin.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Пошук на конкретних дисках
Шукати файли .docx лише на дисках C: та D:

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Пошук із урахуванням регістру
Шукати файли, що містять "Error" (з урахуванням регістру) у їхньому вмісті.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Пошук вмісту альтернативних потоків даних
Пошук файлів з альтернативними потоками даних, що містять "secret".

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Знайти всі збіги в рядку
Шукати всі входження "function" у кожному рядку, а не лише перший збіг.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Показати контекст навколо збігів
Відображати 2 рядки до та 3 рядки після кожного збігу для кращого розуміння.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Отримати лише співпадаючі рядки
Повертає лише текстові рядки, що збігаються, замість повних об'єктів збігу.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Проста логічна перевірка
Повертає true/false замість деталей відповідності, щоб перевірити наявність шаблону.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Знайти лише перший збіг у кожному файлі
Зупинитися на першому збігу в кожному файлі для ефективного виведення списку файлів.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Літеральний збіг рядка
Пошук точного тексту без інтерпретації регулярних виразів за допомогою SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Знайти файли, які НЕ містять шаблон
Використовуйте NotMatch, щоб знайти файли, які не містять вказаний шаблон.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Вказати кодування файлу
Пошук файлів із конкретним кодуванням для точної обробки тексту.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Порівняння культурного тексту
Використовуйте культуро-специфічне зіставлення з SimpleMatch для міжнародного тексту.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Складний пошук вмісту з фільтрами файлів
Комбінуйте фільтри розміру файлу, дати та вмісту для точного пошуку.

## Parameter Details

### `-Name <String[]>`

> Ім'я файлу або шаблон для пошуку. За замовчуванням: '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Ім'я файлу або шаблон для пошуку. За замовчуванням: '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> Регулярний вираз для пошуку у вмісті

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> Базовий шлях для вирішення відносних шляхів у виводі

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

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
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> Шукати лише каталоги

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> Включає як файли, так і каталоги

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Вивести відповідні елементи як об'єкти

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Включити альтернативні потоки даних у результати пошуку

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> Необов'язково: пошук у конкретних каталогах

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> Забезпечує пошук лише в кореневих каталогах, видаляючи компоненти шляху з введених назв

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Включати нетекстові файли під час пошуку вмісту файлів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> Примусово вмикає автоматичний режим і не створюватиме посилань

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Отримує або задає чутливість до регістру для файлів та каталогів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Якщо встановлено, виконує пошук вмісту в альтернативних потоках даних (ADS). Якщо не встановлено, виводить інформацію про файли ADS без пошуку їх вмісту.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
### `-MaxSearchUpDepth <Int32>`

> Максимальна глибина рекурсії для продовження пошуку вгору по дереву для відносних пошуків, поки не знайдено елементів. 0 означає вимкнено.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
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
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `None` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Виключити файли або каталоги, що відповідають цим шаблонам Wildcard (наприклад, *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Вказує, що cmdlet шукає більше ніж один збіг у кожному рядку тексту. Без цього параметра Select-String знаходить лише перший збіг у кожному рядку тексту.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> Вказує, що збіги командлета чутливі до регістру. За замовчуванням збіги не чутливі до регістру.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> Захоплює вказану кількість рядків до та після рядка, що відповідає шаблону.

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

> Вказує тип кодування для цільового файлу. Підтримує значення, сумісні з Select-String, та розширені кодування .NET.

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
### `-List`

> З кожного вхідного файла повертається лише перший збіг тексту. Це найефективніший спосіб отримати список файлів, вміст яких відповідає регулярному виразу.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> Вимикає виділення збігів рядків у вихідних даних.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> Вказує, що командлет повертає просту відповідь замість об'єкта MatchInfo. Повернене значення дорівнює $true, якщо шаблон знайдено, або $null, якщо шаблон не знайдено.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> Змушує cmdlet виводити лише рядки, що збігаються, а не об'єкти MatchInfo. Це призводить до поведінки, найбільш подібної до Unix grep або Windows findstr.exe.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Find-DuplicateFiles.md)
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
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Write-TextFileAtomic.md)
