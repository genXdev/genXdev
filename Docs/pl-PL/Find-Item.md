# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> Wyszukuj pliki i katalogi za pomocą zaawansowanych opcji filtrowania.

## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Nazwa pliku lub wzorzec do wyszukania. Domyślnie '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nazwa pliku lub wzorzec do wyszukania. Domyślnie '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Wzorzec wyrażenia regularnego do wyszukiwania w treści *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Ścieżka podstawowa do rozwiązywania względnych ścieżek w wynikach |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maksymalny stopień równoległości dla zadań katalogowych |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Opcjonalny: limit czasu anulowania w sekundach |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Przeszukaj wszystkie dostępne dyski |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Szukaj tylko katalogów |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Uwzględniaj zarówno pliki, jak i katalogi |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Dopasowane elementy jako obiekty |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Uwzględnij alternatywne strumienie danych w wynikach wyszukiwania |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Nie przeszukuj podkatalogów |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Podążaj za dowiązaniami symbolicznymi i łączami (junction) podczas przechodzenia przez katalogi |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Dołącz napędy dysków optycznych |
| `-SearchDrives` | String[] | — | — | Named | — | Opcjonalnie: wyszukaj określone dyski |
| `-DriveLetter` | Char[] | — | — | Named | — | Opcjonalnie: wyszukaj określone dyski |
| `-Root` | String[] | — | — | Named | — | Opcjonalnie: wyszukaj określone katalogi |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Wymusza wyszukiwanie tylko w katalogach głównych poprzez usuwanie składników ścieżki z danych wejściowych Name |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Uwzględniaj pliki niebędące plikami tekstowymi podczas wyszukiwania zawartości plików |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Wymusza tryb nienadzorowany i nie generuje linków |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Pobiera lub ustawia rozróżnianie wielkości liter dla plików i katalogów |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Po ustawieniu przeprowadza wyszukiwanie treści w alternatywnych strumieniach danych (ADS). Gdy nie jest ustawione, wyświetla informacje o plikach ADS bez przeszukiwania ich treści. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maksymalna głębokość rekursji dla przechodzenia przez katalogi. 0 oznacza brak ograniczeń. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maksymalna głębokość rekurencji dla kontynuacji przeszukiwania w górę drzewa dla względnych wyszukiwań, gdy nie znaleziono żadnych elementów. 0 oznacza wyłączone. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maksymalny rozmiar pliku w bajtach do uwzględnienia w wynikach. 0 oznacza bez ograniczeń. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimalny rozmiar pliku w bajtach, który ma zostać uwzględniony w wynikach. 0 oznacza brak minimalnego rozmiaru. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Uwzględnij tylko pliki zmodyfikowane po tej dacie/godzinie (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Uwzględnij tylko pliki zmodyfikowane przed tą datą/godziną (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Atrybuty plików do pominięcia (np. System, Ukryty lub Brak). |
| `-Exclude` | String[] | — | — | Named | — | Wyklucz pliki lub katalogi pasujące do tych wzorców symboli wieloznacznych (np. *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Wskazuje, że polecenie cmdlet wyszukuje więcej niż jedno dopasowanie w każdym wierszu tekstu. Bez tego parametru polecenie Select-String znajduje tylko pierwsze dopasowanie w każdym wierszu tekstu. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Wskazuje, że dopasowania polecenia cmdlet są uwzględniane przy wielkości liter. Domyślnie dopasowania nie uwzględniają wielkości liter. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Przechwytuje określoną liczbę wierszy przed i po wierszu pasującym do wzorca. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Określa nazwę kultury pasującą do określonego wzorca. Parametr Culture musi być używany z parametrem SimpleMatch. Domyślne zachowanie używa kultury bieżącego obszaru uruchomieniowego programu PowerShell (sesji). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Określa typ kodowania pliku docelowego. Obsługuje wartości zgodne z Select-String oraz rozszerzone kodowania .NET. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Tylko pierwsze wystąpienie pasującego tekstu jest zwracane z każdego pliku wejściowego. Jest to najbardziej efektywny sposób na uzyskanie listy plików, których zawartość pasuje do wyrażenia regularnego. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Wyłącza podświetlanie pasujących ciągów w danych wyjściowych. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | Parametr NotMatch wyszukuje tekst, który nie pasuje do określonego wzorca. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Wskazuje, że polecenie cmdlet zwraca prostą odpowiedź zamiast obiektu MatchInfo. Zwracana wartość to $true, jeśli wzorzec zostanie znaleziony, lub $null, jeśli wzorzec nie zostanie znaleziony. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Powoduje, że polecenie cmdlet zwraca tylko pasujące ciągi znaków, a nie obiekty MatchInfo. Powoduje to zachowanie najbardziej zbliżone do poleceń Unix grep lub Windows findstr.exe. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Wskazuje, że polecenie cmdlet używa prostego dopasowania, a nie dopasowania wyrażenia regularnego. W prostym dopasowaniu polecenie Select-String przeszukuje dane wejściowe pod kątem tekstu w parametrze Pattern. Nie interpretuje ono wartości parametru Pattern jako instrukcji wyrażenia regularnego. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Znajdź pliki zawierające określone słowo
Przeszukaj wszystkie pliki w bieżącym katalogu i podkatalogach, które zawierają słowo „tłumaczenie”.

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Znajdź pliki JavaScript z ciągiem wersji
Szukaj plików JavaScript zawierających ciąg wersji w formacie "Wersja == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Wymień wszystkie katalogi
Znajdź wszystkie katalogi w bieżącym katalogu i jego podkatalogach.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Znajdź pliki XML i przekaż obiekty
Wyszukaj wszystkie pliki .xml i przekaż wyniki jako obiekty przez potok.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Uwzględnij alternatywne strumienie danych
Przeszukaj wszystkie pliki i uwzględnij ich alternatywne strumienie danych w wynikach.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Przeszukaj wszystkie dyski
Szukaj wszystkich plików PDF na wszystkich dostępnych dyskach.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Niestandardowy limit czasu i równoległość
Szukaj plików dziennika z 5-minutowym limitem czasu i ograniczoną równoległością.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Wejście potoku
Przekaż ścieżki plików z Get-ChildItem, aby wyszukać pliki zawierające „błąd”.

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Ogranicz głębokość rekurencji
Szukaj plików tekstowych, ale ogranicz rekurencję do 2 poziomów katalogów.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filtruj według rozmiaru pliku
Znajdź pliki większe niż 1 MB, ale mniejsze niż 10 MB.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Filtruj według daty modyfikacji
Znajdź pliki zmodyfikowane po 1 stycznia 2025 roku.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Wyklucz konkretne wzorce
Przeszukaj wszystkie pliki, ale wyklucz pliki tymczasowe i katalogi bin.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Przeszukaj określone dyski
Szukaj plików .docx tylko na dyskach C: i D:.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Wyszukiwanie uwzględniające wielkość liter
Szukaj plików zawierających "Error" (z uwzględnieniem wielkości liter) w ich zawartości.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Przeszukaj zawartość alternatywnych strumieni danych
Szukaj plików z alternatywnymi strumieniami danych zawierającymi „secret”.

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Znajdź wszystkie dopasowania w każdym wierszu
Szukaj wszystkich wystąpień "function" w każdym wierszu, nie tylko pierwszego dopasowania.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Pokaż kontekst wokół dopasowań
Wyświetl 2 linie przed i 3 linie po każdym dopasowaniu, aby lepiej zrozumieć.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Pobierz tylko pasujące ciągi znaków
Zwraca tylko pasujące ciągi tekstowe zamiast pełnych obiektów dopasowań.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Proste sprawdzenie logiczne
Zwraca wartość true/false zamiast szczegółów dopasowania, aby sprawdzić, czy wzorzec istnieje.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Znajdź tylko pierwsze dopasowanie na plik
Zatrzymaj się na pierwszym dopasowaniu w każdym pliku, aby wydajnie wyświetlić listę plików.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Dopasowanie dosłowne ciągu znaków
Wyszukaj dokładny tekst bez interpretacji wyrażeń regularnych przy użyciu SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Znajdź pliki niezawierające wzorca
Użyj parametru NotMatch, aby znaleźć pliki, które nie zawierają określonego wzorca.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Określ kodowanie plików
Wyszukaj pliki o konkretnym kodowaniu, aby zapewnić dokładne przetwarzanie tekstu.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Porównanie tekstu kulturowego
Użyj dopasowania specyficznego dla kultury z SimpleMatch dla tekstu międzynarodowego.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Złożone wyszukiwanie treści z filtrami plików
Połącz filtry rozmiaru pliku, daty i treści, aby przeprowadzić precyzyjne wyszukiwanie.

## Parameter Details

### `-Name <String[]>`

> Nazwa pliku lub wzorzec do wyszukania. Domyślnie '*'

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

> Nazwa pliku lub wzorzec do wyszukania. Domyślnie '*'

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
| **Position?** | 1 |
| **Default value** | *(none)* |
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
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Po ustawieniu przeprowadza wyszukiwanie treści w alternatywnych strumieniach danych (ADS). Gdy nie jest ustawione, wyświetla informacje o plikach ADS bez przeszukiwania ich treści.

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

> Maksymalna głębokość rekurencji dla kontynuacji przeszukiwania w górę drzewa dla względnych wyszukiwań, gdy nie znaleziono żadnych elementów. 0 oznacza wyłączone.

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
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Uwzględnij tylko pliki zmodyfikowane po tej dacie/godzinie (UTC).

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

> Uwzględnij tylko pliki zmodyfikowane przed tą datą/godziną (UTC).

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

> Atrybuty plików do pominięcia (np. System, Ukryty lub Brak).

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

> Wyklucz pliki lub katalogi pasujące do tych wzorców symboli wieloznacznych (np. *.tmp, *\bin\*).

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

> Wskazuje, że polecenie cmdlet wyszukuje więcej niż jedno dopasowanie w każdym wierszu tekstu. Bez tego parametru polecenie Select-String znajduje tylko pierwsze dopasowanie w każdym wierszu tekstu.

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

> Wskazuje, że dopasowania polecenia cmdlet są uwzględniane przy wielkości liter. Domyślnie dopasowania nie uwzględniają wielkości liter.

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

> Przechwytuje określoną liczbę wierszy przed i po wierszu pasującym do wzorca.

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

> Określa nazwę kultury pasującą do określonego wzorca. Parametr Culture musi być używany z parametrem SimpleMatch. Domyślne zachowanie używa kultury bieżącego obszaru uruchomieniowego programu PowerShell (sesji).

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

> Określa typ kodowania pliku docelowego. Obsługuje wartości zgodne z Select-String oraz rozszerzone kodowania .NET.

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

> Tylko pierwsze wystąpienie pasującego tekstu jest zwracane z każdego pliku wejściowego. Jest to najbardziej efektywny sposób na uzyskanie listy plików, których zawartość pasuje do wyrażenia regularnego.

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

> Wyłącza podświetlanie pasujących ciągów w danych wyjściowych.

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

> Parametr NotMatch wyszukuje tekst, który nie pasuje do określonego wzorca.

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

> Wskazuje, że polecenie cmdlet zwraca prostą odpowiedź zamiast obiektu MatchInfo. Zwracana wartość to $true, jeśli wzorzec zostanie znaleziony, lub $null, jeśli wzorzec nie zostanie znaleziony.

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

> Powoduje, że polecenie cmdlet zwraca tylko pasujące ciągi znaków, a nie obiekty MatchInfo. Powoduje to zachowanie najbardziej zbliżone do poleceń Unix grep lub Windows findstr.exe.

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

> Wskazuje, że polecenie cmdlet używa prostego dopasowania, a nie dopasowania wyrażenia regularnego. W prostym dopasowaniu polecenie Select-String przeszukuje dane wejściowe pod kątem tekstu w parametrze Pattern. Nie interpretuje ono wartości parametru Pattern jako instrukcji wyrażenia regularnego.

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-DuplicateFiles.md)
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
