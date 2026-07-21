# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Udostępnia opakowanie PowerShell dla narzędzia Microsoft Robust Copy (RoboCopy).

## Description

Kompleksowe opakowanie narzędzia wiersza poleceń RoboCopy, które zapewnia solidne możliwości kopiowania plików i katalogów. Ta funkcja udostępnia rozbudowany zestaw funkcji RoboCopy za pomocą przyjaznych dla PowerShell parametrów, zachowując większość jego potężnych możliwości.

Kluczowe funkcje:
- Synchronizacja katalogów z opcjami tworzenia kopii lustrzanych
- Obsługa bardzo długich ścieżek (>256 znaków)
- Zachowanie ustawień zabezpieczeń
- Zaawansowane zarządzanie atrybutami plików
- Zarządzanie dowiązaniami symbolicznymi i punktami łączenia
- Tryb monitorowania do ciągłej synchronizacji
- Optymalizacja wydajności dla dużych plików
- Obsługa kompresji sieciowej
- Tryb odzyskiwania dla urządzeń ulegających awarii

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | Katalog, ścieżka pliku lub katalog+z maską wyszukiwania |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | Katalog docelowy, do którego mają zostać umieszczone skopiowane pliki i katalogi.
            Jeśli ten katalog jeszcze nie istnieje, zostaną utworzone wszystkie brakujące katalogi.
            Wartość domyślna = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Opcjonalna maska wyszukiwania do wybierania plików, które mają być skopiowane.
            Wartość domyślna = '*'" 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Synchronizuje zawartość określonych katalogów, usuwając również wszystkie pliki i katalogi w miejscu docelowym, które nie istnieją w źródle |
| `-Move` | SwitchParameter | — | — | Named | — | Przeniesie zamiast skopiować wszystkie pliki ze źródła do miejsca docelowego |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Skopiuje również własność, deskryptory zabezpieczeń oraz informacje o audycie plików i katalogów. |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Kopiuje tylko pliki ze źródła i pomija podkatalogi (bez rekurencji) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Nie kopiuje katalogów, jeśli byłyby puste *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Utwórz tylko drzewo katalogów *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Utwórz strukturę katalogów i pliki o zerowej długości |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Nie kopiuj dowiązań symbolicznych, łączy ani treści, na które wskazują |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Nie kopiuj dowiązań symbolicznych plików, ale podążaj za łączami katalogów |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Zamiast kopiować zawartość, na którą wskazują dowiązania symboliczne, kopiuj same dowiązania |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Nie kopiuj dowiązań katalogów (linków symbolicznych do folderów) ani zawartości, do której prowadzą *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Zamiast kopiować zawartość, do której prowadzą łącza, kopiuj same łącza *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Skopiuje wszystkie pliki, nawet jeśli są starsze niż te w miejscu docelowym. |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Kopiuje tylko pliki, które mają ustawiony atrybut archiwizacji |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Oprócz kopiowania tylko plików, które mają ustawiony atrybut archiwizacji, zostanie on następnie zresetowany na źródle. |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Wyklucz wszystkie pliki pasujące do którejkolwiek z tych nazw/ścieżek/wzorców symboli wieloznacznych 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Wyklucz wszystkie katalogi pasujące do dowolnej z tych nazw/ścieżek/wieloznaczników *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Kopiuj tylko pliki, które mają wszystkie te atrybuty ustawione [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Wyklucz pliki, które mają ustawione którekolwiek z tych atrybutów [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Ustawi podane atrybuty dla skopiowanych plików [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Usunie określone atrybuty ze skopiowanych plików [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Kopiuj tylko górne n poziomów drzewa katalogów źródłowych *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Pomiń pliki, które nie mają co najmniej n bajtów rozmiaru |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Pomiń pliki większe niż n bajtów |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Pomiń pliki, które nie mają co najmniej: n dni lub zostały utworzone przed datą n (jeśli n < 1900, to n = n dni, w przeciwnym razie n = data YYYYMMDD) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Pomiń pliki starsze niż: n dni lub utworzone po dacie n (jeśli n < 1900, to n = n dni, w przeciwnym razie n = data YYYYMMDD) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Pomiń pliki, do których uzyskano dostęp w ciągu ostatnich: n dni LUB przed datą n (jeśli n < 1900, to n = n dni, w przeciwnym razie n = data YYYYMMDD) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Pomiń pliki, do których nie uzyskano dostępu przez: n dni LUB po dacie n (jeśli n < 1900, to n = n dni, w przeciwnym razie n = data w formacie RRRRMMDD) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Nastąpi krótkie wstrzymanie i ponowienie próby w przypadku wystąpienia błędów we/wy podczas kopiowania |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Pozostanie aktywna po skopiowaniu i skopiuje dodatkowe zmiany po przekroczeniu domyślnego progu 10 minut |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Uruchom ponownie za n minut, jeśli zmieniono |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Uruchom ponownie, gdy zostanie wykrytych więcej niż n zmian |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Godziny pracy - czasy, w których mogą być uruchamiane nowe kopie, czas rozpoczęcia, zakres 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Godziny pracy - czasy, w których można uruchamiać nowe kopie, czas zakończenia, zakres 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Jeśli określono, logowanie będzie również wykonywane do określonego pliku |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Nie dołączaj do określonego pliku dziennika, ale zastąp go |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Uwzględnij wszystkie nazwy przeskanowanych katalogów w wynikach |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Uwzględnij wszystkie nazwy skanowanych plików w danych wyjściowych, nawet te pominięte |
| `-Unicode` | SwitchParameter | — | — | Named | — | Wyświetl status jako UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Włącza optymalizację kopiowania dużych plików |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Zoptymalizuj wydajność, wykonując kopiowanie wielowątkowe |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Jeśli to możliwe, używaj kompresji podczas kopiowania plików między serwerami, aby zaoszczędzić przepustowość i czas. |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Po ustawieniu, użyje dopasowania znacznika czasu w milisekundach zamiast domyślnej tolerancji 2-sekundowej |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Nadpisuje, usuwa lub dodaje dowolny określony parametr robocopy.

Użycie:

Dodaj lub zastąp parametr:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Usuń parametr:

    -Override -/Switch

Wiele nadpisań:

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

> Katalog, ścieżka pliku lub katalog+z maską wyszukiwania

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

> Katalog docelowy, do którego mają zostać umieszczone skopiowane pliki i katalogi.
            Jeśli ten katalog jeszcze nie istnieje, zostaną utworzone wszystkie brakujące katalogi.
            Wartość domyślna = ".\"

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

> Opcjonalna maska wyszukiwania do wybierania plików, które mają być skopiowane.
            Wartość domyślna = '*'"

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

> Synchronizuje zawartość określonych katalogów, usuwając również wszystkie pliki i katalogi w miejscu docelowym, które nie istnieją w źródle

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

> Przeniesie zamiast skopiować wszystkie pliki ze źródła do miejsca docelowego

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

> Skopiuje również własność, deskryptory zabezpieczeń oraz informacje o audycie plików i katalogów.

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

> Kopiuje tylko pliki ze źródła i pomija podkatalogi (bez rekurencji)

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

> Nie kopiuje katalogów, jeśli byłyby puste

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

> Utwórz tylko drzewo katalogów

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

> Utwórz strukturę katalogów i pliki o zerowej długości

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

> Nie kopiuj dowiązań symbolicznych, łączy ani treści, na które wskazują

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

> Nie kopiuj dowiązań symbolicznych plików, ale podążaj za łączami katalogów

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

> Zamiast kopiować zawartość, na którą wskazują dowiązania symboliczne, kopiuj same dowiązania

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

> Nie kopiuj dowiązań katalogów (linków symbolicznych do folderów) ani zawartości, do której prowadzą

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

> Zamiast kopiować zawartość, do której prowadzą łącza, kopiuj same łącza

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

> Skopiuje wszystkie pliki, nawet jeśli są starsze niż te w miejscu docelowym.

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

> Kopiuje tylko pliki, które mają ustawiony atrybut archiwizacji

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

> Oprócz kopiowania tylko plików, które mają ustawiony atrybut archiwizacji, zostanie on następnie zresetowany na źródle.

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

> Wyklucz wszystkie pliki pasujące do którejkolwiek z tych nazw/ścieżek/wzorców symboli wieloznacznych

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

> Wyklucz wszystkie katalogi pasujące do dowolnej z tych nazw/ścieżek/wieloznaczników

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

> Kopiuj tylko pliki, które mają wszystkie te atrybuty ustawione [RASHCNETO]

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

> Wyklucz pliki, które mają ustawione którekolwiek z tych atrybutów [RASHCNETO]

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

> Ustawi podane atrybuty dla skopiowanych plików [RASHCNETO]

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

> Usunie określone atrybuty ze skopiowanych plików [RASHCNETO]

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

> Kopiuj tylko górne n poziomów drzewa katalogów źródłowych

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

> Pomiń pliki, które nie mają co najmniej n bajtów rozmiaru

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

> Pomiń pliki większe niż n bajtów

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

> Pomiń pliki, które nie mają co najmniej: n dni lub zostały utworzone przed datą n (jeśli n < 1900, to n = n dni, w przeciwnym razie n = data YYYYMMDD)

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

> Pomiń pliki starsze niż: n dni lub utworzone po dacie n (jeśli n < 1900, to n = n dni, w przeciwnym razie n = data YYYYMMDD)

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

> Pomiń pliki, do których uzyskano dostęp w ciągu ostatnich: n dni LUB przed datą n (jeśli n < 1900, to n = n dni, w przeciwnym razie n = data YYYYMMDD)

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

> Pomiń pliki, do których nie uzyskano dostępu przez: n dni LUB po dacie n (jeśli n < 1900, to n = n dni, w przeciwnym razie n = data w formacie RRRRMMDD)

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

> Nastąpi krótkie wstrzymanie i ponowienie próby w przypadku wystąpienia błędów we/wy podczas kopiowania

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

> Pozostanie aktywna po skopiowaniu i skopiuje dodatkowe zmiany po przekroczeniu domyślnego progu 10 minut

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

> Uruchom ponownie za n minut, jeśli zmieniono

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

> Uruchom ponownie, gdy zostanie wykrytych więcej niż n zmian

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

> Godziny pracy - czasy, w których mogą być uruchamiane nowe kopie, czas rozpoczęcia, zakres 0000:2359

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

> Godziny pracy - czasy, w których można uruchamiać nowe kopie, czas zakończenia, zakres 0000:2359

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

> Jeśli określono, logowanie będzie również wykonywane do określonego pliku

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

> Nie dołączaj do określonego pliku dziennika, ale zastąp go

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

> Uwzględnij wszystkie nazwy przeskanowanych katalogów w wynikach

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

> Uwzględnij wszystkie nazwy skanowanych plików w danych wyjściowych, nawet te pominięte

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

> Wyświetl status jako UNICODE

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

> Włącza optymalizację kopiowania dużych plików

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

> Zoptymalizuj wydajność, wykonując kopiowanie wielowątkowe

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

> Jeśli to możliwe, używaj kompresji podczas kopiowania plików między serwerami, aby zaoszczędzić przepustowość i czas.

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

> Po ustawieniu, użyje dopasowania znacznika czasu w milisekundach zamiast domyślnej tolerancji 2-sekundowej

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

> Nadpisuje, usuwa lub dodaje dowolny określony parametr robocopy.

Użycie:

Dodaj lub zastąp parametr:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Usuń parametr:

    -Override -/Switch

Wiele nadpisań:

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-TextFileAtomic.md)
