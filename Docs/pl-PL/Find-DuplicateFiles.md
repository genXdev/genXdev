# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf`

## Synopsis

> Znajdź zduplikowane pliki w wielu katalogach na podstawie konfigurowalnych kryteriów.

## Description

Rekurencyjnie przeszukuje określone katalogi w poszukiwaniu zduplikowanych plików. Pliki są uważane za duplikaty, jeśli ich zawartość jest dokładnie taka sama lub zaczyna się od tej samej treści (dla porównania częściowego z użyciem przełącznika -ComparePartial). Polecenie cmdlet używa szybkiego skrótu początkowych bajtów pliku do efektywnego grupowania przed przeprowadzeniem pełnego porównania zawartości. Rozmiar tego szybkiego skrótu można skonfigurować za pomocą parametru -CompareByteLength, co pozwala na znalezienie równowagi między wydajnością a dokładnością wykrywania duplikatów. Tylko pliki o minimalnej długości równej wartości CompareByteLength będą brane pod uwagę przy wykrywaniu duplikatów; mniejsze pliki będą grupowane wyłącznie na podstawie nazwy pliku.

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | Nazwa pliku lub wzorzec do wyszukania. Domyślnie '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nazwa pliku lub wzorzec do wyszukiwania z danych wejściowych potoku. Domyślnie '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | Wzorzec wyrażenia regularnego do wyszukiwania w treści *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Ścieżka podstawowa do rozwiązywania względnych ścieżek w wynikach |
| `-Category` | String[] | — | — | Named | — | Tylko pliki należące do wybranych kategorii |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maksymalny stopień równoległości dla zadań katalogowych |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opcjonalny: limit czasu anulowania w sekundach |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Przeszukaj wszystkie dostępne dyski |
| `-Directory` | SwitchParameter | — | — | Named | — | Szukaj tylko katalogów |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Uwzględniaj zarówno pliki, jak i katalogi |
| `-PassThru` | SwitchParameter | — | — | Named | — | Dopasowane elementy jako obiekty |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Uwzględnij alternatywne strumienie danych w wynikach wyszukiwania |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Nie przeszukuj podkatalogów |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Podążaj za dowiązaniami symbolicznymi i łączami (junction) podczas przechodzenia przez katalogi |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Dołącz napędy dysków optycznych |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Opcjonalnie: wyszukaj określone dyski |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Opcjonalnie: wyszukaj określone dyski |
| `-Root` | String[] | — | — | Named | `@()` | Opcjonalnie: wyszukaj określone katalogi |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Wymusza wyszukiwanie tylko w katalogach głównych poprzez usuwanie składników ścieżki z danych wejściowych Name |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Uwzględniaj pliki niebędące plikami tekstowymi podczas wyszukiwania zawartości plików |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Wymusza tryb nienadzorowany i nie generuje linków |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Pobiera lub ustawia rozróżnianie wielkości liter dla plików i katalogów |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Po ustawieniu, przeprowadza wyszukiwanie treści w alternatywnych strumieniach danych (ADS) |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maksymalna głębokość rekursji dla przechodzenia przez katalogi. 0 oznacza brak ograniczeń. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maksymalna głębokość rekurencji dla przeszukiwania w górę drzewa w poszukiwaniu kontynuacji. 0 oznacza wyłączone. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maksymalny rozmiar pliku w bajtach do uwzględnienia w wynikach. 0 oznacza bez ograniczeń. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimalny rozmiar pliku w bajtach, który ma zostać uwzględniony w wynikach. 0 oznacza brak minimalnego rozmiaru. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Uwzględnij tylko pliki zmodyfikowane po tej dacie/godzinie (UTC) |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Dołączaj tylko pliki zmodyfikowane przed tą datą/czasem (UTC) |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Atrybuty pliku do pominięcia (np. Systemowy, Ukryty lub Brak) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Wyklucz pliki lub katalogi pasujące do tych wzorców symboli wieloznacznych |
| `-AllMatches` | SwitchParameter | — | — | Named | — | Wyszukaj więcej niż jednego dopasowania w każdym wierszu tekstu *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Dopasowanie uwzględnia wielkość liter *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Przechwytuje linie kontekstu wokół dopasowań *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Nazwa kultury używana do dopasowywania wzorców *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Określa kodowanie dla plików docelowych *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Zwracany jest tylko pierwszy pasujący plik. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Wyłącza podświetlanie pasujących ciągów w danych wyjściowych *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Parametr NotMatch wyszukuje tekst, który nie pasuje do wzorca *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Wyprowadź tylko pasujące ciągi zamiast obiektów MatchInfo *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Użyj prostego dopasowania ciągów znaków zamiast wyrażeń regularnych *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | Zwróci pliki o różnych rozmiarach, o ile mają tę samą nazwę i zawartość — wykrywa uszkodzone pobieranie/kopiowanie. |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | Szybkie porównanie długości plików w bajtach, używane do szybkiego indeksowania i wyszukiwania duplikatów — nie porównuje zawartości plików |

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

## Parameter Details

### `-Name <String[]>`

> Nazwa pliku lub wzorzec do wyszukania. Domyślnie '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `SourceFolder` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Nazwa pliku lub wzorzec do wyszukiwania z danych wejściowych potoku. Domyślnie '*'

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

> Wzorzec wyrażenia regularnego do wyszukiwania w treści

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@('.*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> Ścieżka podstawowa do rozwiązywania względnych ścieżek w wynikach

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> Tylko pliki należące do wybranych kategorii

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

> Maksymalny stopień równoległości dla zadań katalogowych

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

> Opcjonalny: limit czasu anulowania w sekundach

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

> Przeszukaj wszystkie dostępne dyski

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> Szukaj tylko katalogów

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> Uwzględniaj zarówno pliki, jak i katalogi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Dopasowane elementy jako obiekty

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Uwzględnij alternatywne strumienie danych w wynikach wyszukiwania

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

> Nie przeszukuj podkatalogów

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

> Podążaj za dowiązaniami symbolicznymi i łączami (junction) podczas przechodzenia przez katalogi

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

> Dołącz napędy dysków optycznych

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

> Opcjonalnie: wyszukaj określone dyski

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

> Opcjonalnie: wyszukaj określone dyski

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

> Opcjonalnie: wyszukaj określone katalogi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> Wymusza wyszukiwanie tylko w katalogach głównych poprzez usuwanie składników ścieżki z danych wejściowych Name

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Uwzględniaj pliki niebędące plikami tekstowymi podczas wyszukiwania zawartości plików

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> Wymusza tryb nienadzorowany i nie generuje linków

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Pobiera lub ustawia rozróżnianie wielkości liter dla plików i katalogów

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.MatchCasing]::PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Po ustawieniu, przeprowadza wyszukiwanie treści w alternatywnych strumieniach danych (ADS)

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

> Maksymalna głębokość rekursji dla przechodzenia przez katalogi. 0 oznacza brak ograniczeń.

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

> Maksymalna głębokość rekurencji dla przeszukiwania w górę drzewa w poszukiwaniu kontynuacji. 0 oznacza wyłączone.

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

> Maksymalny rozmiar pliku w bajtach do uwzględnienia w wynikach. 0 oznacza bez ograniczeń.

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

> Minimalny rozmiar pliku w bajtach, który ma zostać uwzględniony w wynikach. 0 oznacza brak minimalnego rozmiaru.

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

> Uwzględnij tylko pliki zmodyfikowane po tej dacie/godzinie (UTC)

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

> Dołączaj tylko pliki zmodyfikowane przed tą datą/czasem (UTC)

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

> Atrybuty pliku do pominięcia (np. Systemowy, Ukryty lub Brak)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Wyklucz pliki lub katalogi pasujące do tych wzorców symboli wieloznacznych

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\.git\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Wyszukaj więcej niż jednego dopasowania w każdym wierszu tekstu

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
### `-CaseSensitive`

> Dopasowanie uwzględnia wielkość liter

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
### `-Context <Int32[]>`

> Przechwytuje linie kontekstu wokół dopasowań

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

> Nazwa kultury używana do dopasowywania wzorców

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

> Określa kodowanie dla plików docelowych

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'UTF8NoBOM'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> Zwracany jest tylko pierwszy pasujący plik.

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
### `-NoEmphasis`

> Wyłącza podświetlanie pasujących ciągów w danych wyjściowych

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
### `-NotMatch`

> Parametr NotMatch wyszukuje tekst, który nie pasuje do wzorca

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
### `-Raw`

> Wyprowadź tylko pasujące ciągi zamiast obiektów MatchInfo

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

> Użyj prostego dopasowania ciągów znaków zamiast wyrażeń regularnych

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
### `-ComparePartial`

> Zwróci pliki o różnych rozmiarach, o ile mają tę samą nazwę i zawartość — wykrywa uszkodzone pobieranie/kopiowanie.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompareByteLength <Int32>`

> Szybkie porównanie długości plików w bajtach, używane do szybkiego indeksowania i wyszukiwania duplikatów — nie porównuje zawartości plików

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `65536` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Expand-Path.md)
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
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-TextFileAtomic.md)
