# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> Znajduje pierwszy pasujący plik lub folder i ustawia lokalizację na niego.

## Description

To polecenie cmdlet pomoże Ci szybko zmieniać katalogi za pomocą fraz wyszukiwania, które znajdą pierwszy pasujący folder lub plik (opcjonalnie) i zmienią do niego katalog. Obsługuje zaawansowane filtrowanie według zawartości, atrybutów plików, rozmiaru, dat modyfikacji i wielu innych kryteriów.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Nazwa pliku lub wzorzec do wyszukania. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Nazwa pliku lub wzorzec do wyszukiwania z danych wejściowych potoku. Domyślnie '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Wzorzec wyrażenia regularnego do wyszukiwania w zawartości plików *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Tylko pliki należące do wybranych kategorii |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maksymalny stopień równoległości dla zadań katalogowych |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opcjonalny: limit czasu anulowania w sekundach |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Przeszukaj wszystkie dostępne dyski |
| `-File` | SwitchParameter | — | — | Named | — | Wyszukaj tylko nazwy plików i przejdź do folderu pierwszego znalezionego pliku |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Uwzględnij dopasowanie nazwy pliku i przejdź do folderu pierwszego znalezionego pliku |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Uwzględnij alternatywne strumienie danych w wynikach wyszukiwania |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Nie przeszukuj podkatalogów |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Podążaj za dowiązaniami symbolicznymi i łączami (junction) podczas przechodzenia przez katalogi |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Dołącz napędy dysków optycznych |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Opcjonalnie: wyszukaj określone dyski |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Opcjonalnie: wyszukaj określone dyski |
| `-Root` | String[] | — | — | Named | `@()` | Opcjonalnie: wyszukaj w określonych folderach bazowych w połączeniu z podanymi nazwami |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Uwzględnij pliki nietekstowe (pliki binarne, obrazy itp.) podczas wyszukiwania zawartości plików |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Pobiera lub ustawia rozróżnianie wielkości liter dla plików i katalogów |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Po ustawieniu przeprowadza wyszukiwanie treści w alternatywnych strumieniach danych (ADS). Gdy nie jest ustawione, wyświetla informacje o plikach ADS bez przeszukiwania ich treści. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maksymalna głębokość rekursji dla przechodzenia przez katalogi. 0 oznacza brak ograniczeń. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maksymalny rozmiar pliku w bajtach do uwzględnienia w wynikach. 0 oznacza bez ograniczeń. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimalny rozmiar pliku w bajtach, który ma zostać uwzględniony w wynikach. 0 oznacza brak minimalnego rozmiaru. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Uwzględnij tylko pliki zmodyfikowane po tej dacie/godzinie (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Uwzględnij tylko pliki zmodyfikowane przed tą datą/godziną (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Atrybuty plików do pominięcia (np. System, Ukryty lub Brak). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Wyklucz pliki lub katalogi pasujące do tych wzorców symboli wieloznacznych (np. *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Wskazuje, że dopasowania polecenia cmdlet są uwzględniane przy wielkości liter. Domyślnie dopasowania nie uwzględniają wielkości liter. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Określa nazwę kultury pasującą do określonego wzorca. Parametr Culture musi być używany z parametrem SimpleMatch. Domyślne zachowanie używa kultury bieżącego obszaru uruchomieniowego programu PowerShell (sesji). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Określa typ kodowania dla pliku docelowego. Wartość domyślna to utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Parametr NotMatch wyszukuje tekst, który nie pasuje do określonego wzorca. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Wskazuje, że polecenie cmdlet używa prostego dopasowania, a nie dopasowania wyrażenia regularnego. W prostym dopasowaniu polecenie Select-String przeszukuje dane wejściowe pod kątem tekstu w parametrze Pattern. Nie interpretuje ono wartości parametru Pattern jako instrukcji wyrażenia regularnego. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Użyj Push-Location zamiast Set-Location i przesuń lokalizację na stos lokalizacji |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Po ustawieniu, brane są pod uwagę tylko dokładne dopasowania nazw. Domyślnie używane jest dopasowanie z symbolami wieloznacznymi, chyba że Nazwa zawiera znaki wieloznaczne. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

Zmiany w pierwszym katalogu pasującym do wzorca '*.Console'.

### lcd *.Console

```powershell
lcd *.Console
```

Zmiany w pierwszym katalogu pasującym do wzorca '*.Console' przy użyciu aliasu.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

Zmienia katalog na ten zawierający pierwszy plik programu PowerShell, który zawiera słowo 'function'.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Zmiany w katalogu zawierającym pierwszy plik z 'test' w nazwie.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

Zmiana katalogu zawierającego pierwszy plik, którego treść jest zgodna ze wzorcem '1.\d+.2025'.

## Parameter Details

### `-Name <String>`

> Nazwa pliku lub wzorzec do wyszukania.

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

> Nazwa pliku lub wzorzec do wyszukiwania z danych wejściowych potoku. Domyślnie '*'

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

> Wzorzec wyrażenia regularnego do wyszukiwania w zawartości plików

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
### `-File`

> Wyszukaj tylko nazwy plików i przejdź do folderu pierwszego znalezionego pliku

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

> Uwzględnij dopasowanie nazwy pliku i przejdź do folderu pierwszego znalezionego pliku

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

> Opcjonalnie: wyszukaj w określonych folderach bazowych w połączeniu z podanymi nazwami

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

> Uwzględnij pliki nietekstowe (pliki binarne, obrazy itp.) podczas wyszukiwania zawartości plików

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

> Pobiera lub ustawia rozróżnianie wielkości liter dla plików i katalogów

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

> Po ustawieniu przeprowadza wyszukiwanie treści w alternatywnych strumieniach danych (ADS). Gdy nie jest ustawione, wyświetla informacje o plikach ADS bez przeszukiwania ich treści.

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
### `-ModifiedBefore <DateTime>`

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
| **Default value** | `(
            [System.IO.FileAttributes]::System)` |
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
| **Default value** | `@("*\\.git\\*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseSensitive`

> Wskazuje, że dopasowania polecenia cmdlet są uwzględniane przy wielkości liter. Domyślnie dopasowania nie uwzględniają wielkości liter.

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

> Określa typ kodowania dla pliku docelowego. Wartość domyślna to utf8NoBOM.

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

> Parametr NotMatch wyszukuje tekst, który nie pasuje do określonego wzorca.

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

> Wskazuje, że polecenie cmdlet używa prostego dopasowania, a nie dopasowania wyrażenia regularnego. W prostym dopasowaniu polecenie Select-String przeszukuje dane wejściowe pod kątem tekstu w parametrze Pattern. Nie interpretuje ono wartości parametru Pattern jako instrukcji wyrażenia regularnego.

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

> Użyj Push-Location zamiast Set-Location i przesuń lokalizację na stos lokalizacji

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

> Po ustawieniu, brane są pod uwagę tylko dokładne dopasowania nazw. Domyślnie używane jest dopasowanie z symbolami wieloznacznymi, chyba że Nazwa zawiera znaki wieloznaczne.

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
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-TextFileAtomic.md)
