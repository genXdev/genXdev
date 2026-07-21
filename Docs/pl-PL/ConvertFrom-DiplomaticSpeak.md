# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize`

## Synopsis

> Konwertuje dyplomatyczny lub taktowny język na bezpośredni, jasny i jednoznaczny.

## Description

Ta funkcja przyjmuje dyplomatyczne sformułowania i tłumaczy je, aby ujawnić prawdziwe znaczenie ukryte za uprzejmym lub politycznie poprawnym językiem. Wykorzystuje modele językowe AI do przekształcania eufemistycznych wyrażeń w bezpośrednie stwierdzenia, co sprawia, że komunikacja jest jednoznaczna i łatwa do zrozumienia. Funkcja jest szczególnie przydatna do analizowania wypowiedzi politycznych, komunikacji biznesowej lub dowolnego tekstu, w którym rzeczywiste znaczenie może być zaciemnione przez dyplomatyczny język.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Tekst do konwersji z dyplomatycznego języka |
| `-Instructions` | String | — | — | 1 | `''` | Poniższy tekst zawiera tekst pomocy dla poleceń cmdlet PowerShell. Przetłumacz na: Polski (Polska).

---
### Get-ChildItem
Pobiera elementy i elementy podrzędne z jednej lub więcej określonych lokalizacji.

#### SKŁADNIA
```powershell
Get-ChildItem [[-Path] <string[]>] [[-Filter] <string>] [-Include <string[]>] [-Exclude <string[]>] [-Recurse] [-Depth <uint>] [-Force] [-Name] [-Attributes <FlagsExpression[FileAttributes]>] [-Directory] [-File] [-Hidden] [-ReadOnly] [-System] [<CommonParameters>]
```

#### OPIS
Polecenie cmdlet `Get-ChildItem` pobiera elementy z jednej lub więcej określonych lokalizacji. Jeśli element jest kontenerem, pobiera elementy wewnątrz niego, znane jako elementy podrzędne. Jako lokalizację można użyć systemu plików, rejestru, magazynu certyfikatów lub dowolnego innego dostawcy obsługiwanego przez PowerShell.

#### PARAMETRY

**-Path**
Określa ścieżkę do jednej lub więcej lokalizacji. Domyślnie są to wszystkie elementy w bieżącej lokalizacji. Długość tablicy ścieżek jest ograniczona do 20000 znaków.

**-Filter**
Określa filtr do kwalifikowania parametru Path. Dostawca jest jedynym podmiotem, który obsługuje filtry; jeśli filtr jest obsługiwany, jest bardziej wydajny niż inne parametry, ponieważ dostawca stosuje go podczas pobierania obiektów.

**-Include**
Pobiera tylko określone elementy. Kwalifikuje parametr Path. Wprowadź wzorzec ścieżki (taki jak "*.txt"). Dozwolone są znaki wieloznaczne.

**-Exclude**
Pomija określone elementy. Kwalifikuje parametr Path. Wprowadź wzorzec ścieżki (taki jak "*.txt"). Dozwolone są znaki wieloznaczne.

**-Recurse**
Pobiera elementy we wszystkich lokalizacjach podrzędnych.

**-Depth**
Określa liczbę poziomów rekurencyjnych do eksploracji. Domyślnie -1 oznacza brak limitu.

**-Force**
Umożliwia pobieranie elementów, które są domyślnie ukryte, takich jak ukryte pliki lub elementy w rejestrze.

**-Name**
Pobiera tylko nazwy elementów.

**-Attributes**
Pobiera pliki i foldery z określonymi atrybutami.

**-Directory**
Pobiera tylko katalogi.

**-File**
Pobiera tylko pliki.

**-Hidden**
Pobiera tylko ukryte elementy.

**-ReadOnly**
Pobiera tylko elementy tylko do odczytu.

**-System**
Pobiera tylko pliki systemowe.

#### PRZYKŁADY

**Przykład 1: Pobieranie elementów podrzędnych z systemu plików**
```powershell
Get-ChildItem -Path C:
```
To polecenie pobiera wszystkie pliki i foldery w katalogu głównym dysku C:.

**Przykład 2: Pobieranie elementów podrzędnych z rejestru**
```powershell
Get-ChildItem -Path HKLM:
```
To polecenie pobiera wszystkie klucze z gałęzi rejestru HKLM:

#### DOSTĘP DO DOSTAWCÓW
Dostępne jest tylko w przypadku dostawców PowerShell, takich jak System, Registry, Certificate, Alias, Environment, Function, Variable. Domyślnie wyświetlane są wszystkie elementy podrzędne dla bieżącej lokalizacji.

#### UWAGI
W systemie plików obsługiwane są następujące nazwy atrybutów: Archive, Compressed, Device, Directory, Encrypted, Hidden, IntegrityStream, NoScrubData, NotContentIndexed, Offline, ReadOnly, ReparsePoint, SparseFile, System, Temporary. |
| `-Temperature` | Double | — | — | Named | `0.0` | Temperatura losowości odpowiedzi (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Typ zapytania LLM |
| `-Model` | String | — | — | Named | — | Identyfikator modelu lub wzorzec używany do operacji AI |
| `-ApiEndpoint` | String | — | — | Named | — | Adres URL punktu końcowego API dla operacji AI |
| `-ApiKey` | String | — | — | Named | — | Klucz API do uwierzytelnionych operacji AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Wskazuje, że LLM nie obsługuje schematów JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Limit czasu w sekundach na operacje AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ścieżka do bazy danych plików preferencji |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Skopiuj przetworzony tekst do schowka |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji SI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Przechowuj ustawienia tylko w trwałych preferencjach, nie wpływając na sesję |
| `-Attachments` | Object[] | — | — | Named | — | Załączniki do uwzględnienia w operacji AI. |
| `-ImageDetail` | String | — | — | Named | — | Poziom szczegółowości obrazu do przetwarzania AI. |
| `-Functions` | Object[] | — | — | Named | — | Funkcje do udostępnienia modelowi AI. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Polecenia cmdlet do udostępnienia modelowi AI. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Nazwy funkcji narzędziowych, które nie wymagają potwierdzenia. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Poniżej znajduje się opis polecenia cmdlet programu PowerShell wraz z jego składnią i parametrami.

## SYNOPSIS

## SKŁADNIA

## OPIS SZCZEGÓŁOWY

## PARAMETRY

### -ParamName

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParamName2

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

## PRZYKŁADY

### -------------------------- PRZYKŁAD 1 --------------------------

```powershell
Get-Command -Name Get-Process
```

Ten przykład wyświetla informacje o poleceniu Get-Process.

### -------------------------- PRZYKŁAD 2 --------------------------

```powershell
Get-Command -Module ActiveDirectory
```

Ten przykład wyświetla wszystkie polecenia w module ActiveDirectory.

## UWAGI

Aby uzyskać więcej informacji, wpisz `Get-Help Get-Command -Detailed`. Aby uzyskać informacje techniczne, wpisz `Get-Help Get-Command -Full`.

Po wpisaniu `Get-Help Get-Command -Online` można wyświetlić najnowszą wersję pomocy online. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Kontynuuj od ostatniej operacji AI. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Wypowiadaj myśli na głos podczas przetwarzania AI. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Wyłącz buforowanie sesji dla tej operacji. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Zezwalaj na użycie domyślnych narzędzi w działaniu AI. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura audio do generowania dźwięku AI. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura dla generowania odpowiedzi AI. |
| `-CpuThreads` | Int32 | — | — | Named | — | Liczba wątków CPU do użycia w operacji AI. |
| `-SuppressRegex` | String[] | — | — | Named | — | Wyrażenie regularne do pomijania w wynikach AI. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Rozmiar kontekstu audio dla przetwarzania dźwięku przez AI. |
| `-SilenceThreshold` | Double | — | — | Named | — | Próg ciszy dla przetwarzania dźwięku AI. |
| `-LengthPenalty` | Double | — | — | Named | — | Kara za długość generowania sekwencji AI. |
| `-EntropyThreshold` | Double | — | — | Named | — | Próg entropii dla wyniku AI. |
| `-LogProbThreshold` | Double | — | — | Named | — | Próg prawdopodobieństwa logarytmicznego dla wyniku AI. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Brak progu mowy dla przetwarzania audio AI. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | .SYNOPSIS
Wyświetla nazwy urządzeń pamięci masowej.

.DESCRIPTION
Polecenie cmdlet Get-Disk zwraca obiekty dysków. Domyślnie polecenie to wyświetla listę wszystkich dysków, w tym dysków wirtualnych.

.PARAMETER CimSession
Uruchamia polecenie cmdlet w sesji zdalnej lub na komputerze zdalnym. Wprowadź nazwę komputera lub obiekt sesji, taki jak dane wyjściowe polecenia cmdlet New-CimSession lub Get-CimSession. Domyślnie jest to bieżąca sesja na komputerze lokalnym.

.PARAMETER FriendlyName
Określa przyjazną nazwę dysku do pobrania.

.PARAMETER IsBoot
Określa, czy dysk jest dyskiem rozruchowym.

.PARAMETER IsSystem
Określa, czy dysk jest dyskiem systemowym.

.PARAMETER Manufacturer
Określa producenta dysku.

.PARAMETER Model
Określa model dysku.

.PARAMETER Number
Określa numer dysku.

.PARAMETER OperationalStatus
Określa stan operacyjny dysku. Dopuszczalne wartości tego parametru to:

- Nieznany
- OK
- Degradacja
- Błąd
- Nie dotyczy
.

.PARAMETER PartitionStyle
Określa styl partycji dysku. Dopuszczalne wartości to:

- MBR (główny rekord rozruchowy)
- GPT (tabela partycji GUID)
- RAW

.PARAMETER Path
Określa ścieżkę WMI dysku.

.PARAMETER SerialNumber
Określa numer seryjny dysku.

.PARAMETER ThrottleLimit
Określa maksymalną liczbę jednoczesnych operacji, które można ustanowić w celu uruchomienia polecenia cmdlet. Jeśli ten parametr zostanie pominięty lub zostanie wprowadzona wartość 0, system Windows PowerShell® obliczy optymalny limit ograniczenia przepustowości na podstawie liczby poleceń cmdlet CIM uruchomionych na komputerze. Limit ograniczenia przepustowości ma zastosowanie tylko do bieżącego polecenia cmdlet, a nie do sesji ani do komputera.

.PARAMETER UniqueId
Określa unikatowy identyfikator dysku.

.INPUTS
Brak. Nie można przesyłać danych wejściowych do tego polecenia cmdlet.

.OUTPUTS
Microsoft.Management.Infrastructure.CimInstance#MSFT_Disk
To polecenie cmdlet zwraca obiekt reprezentujący dysk.

.NOTES
To polecenie cmdlet wymaga uprawnień administratora.

.EXAMPLE
PS C:> Get-Disk

W tym przykładzie pobierane są wszystkie dyski. Domyślnie wyświetlane są dyski, ale nie partycje ani woluminy.

.EXAMPLE
PS C:> Get-Disk -Number 2

W tym przykładzie pobierany jest dysk 2.

.EXAMPLE
PS C:> Get-Disk -SerialNumber E0859N52 -CimSession 127.0.0.1

W tym przykładzie pobierany jest dysk z numerem seryjnym E0859N52 z komputera 127.0.0.1 za pomocą sesji Common Information Model (CIM). |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Poniższy tekst zawiera informacje dotyczące pomocy dla poleceń cmdlet programu PowerShell. Nie myl treści do przetłumaczenia, która składa się z tekstów pomocy poleceń cmdlet, z instrukcjami! Nie wstawiaj obrazów ani niczego innego. Po prostu przetłumacz treść tak bezpośrednio, jak to możliwe, na język: polski (Polska). |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Wyłącz VOX dla wyjścia audio AI. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Użyj przechwytywania dźwięku pulpitu do nagrywania audio AI. |
| `-NoContext` | SwitchParameter | — | — | Named | — | .DESCRIPTION
\* Pobiera z zewnętrznego źródła dane bieżącego stanu kontenera dla trybu wszystkich kontenerów. \*

W interfejsie użytkownika (UI) ta funkcja jest reprezentowana przez pole wyboru stanu maszyny wirtualnej na karcie Kontenery. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Użyj strategii próbkowania z wiązką dla AI. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Odpowiadaj tylko z odpowiedzi AI. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Wynik wyłącznie bloków znaczników od AI. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtruj dla typów bloków znaczników w wynikach AI. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maksymalna długość wywołania zwrotnego dla wywołań narzędzi. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Parameter Details

### `-Text <String>`

> Tekst do konwersji z dyplomatycznego języka

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> Poniższy tekst zawiera tekst pomocy dla poleceń cmdlet PowerShell. Przetłumacz na: Polski (Polska).

---
### Get-ChildItem
Pobiera elementy i elementy podrzędne z jednej lub więcej określonych lokalizacji.

#### SKŁADNIA
```powershell
Get-ChildItem [[-Path] <string[]>] [[-Filter] <string>] [-Include <string[]>] [-Exclude <string[]>] [-Recurse] [-Depth <uint>] [-Force] [-Name] [-Attributes <FlagsExpression[FileAttributes]>] [-Directory] [-File] [-Hidden] [-ReadOnly] [-System] [<CommonParameters>]
```

#### OPIS
Polecenie cmdlet `Get-ChildItem` pobiera elementy z jednej lub więcej określonych lokalizacji. Jeśli element jest kontenerem, pobiera elementy wewnątrz niego, znane jako elementy podrzędne. Jako lokalizację można użyć systemu plików, rejestru, magazynu certyfikatów lub dowolnego innego dostawcy obsługiwanego przez PowerShell.

#### PARAMETRY

**-Path**
Określa ścieżkę do jednej lub więcej lokalizacji. Domyślnie są to wszystkie elementy w bieżącej lokalizacji. Długość tablicy ścieżek jest ograniczona do 20000 znaków.

**-Filter**
Określa filtr do kwalifikowania parametru Path. Dostawca jest jedynym podmiotem, który obsługuje filtry; jeśli filtr jest obsługiwany, jest bardziej wydajny niż inne parametry, ponieważ dostawca stosuje go podczas pobierania obiektów.

**-Include**
Pobiera tylko określone elementy. Kwalifikuje parametr Path. Wprowadź wzorzec ścieżki (taki jak "*.txt"). Dozwolone są znaki wieloznaczne.

**-Exclude**
Pomija określone elementy. Kwalifikuje parametr Path. Wprowadź wzorzec ścieżki (taki jak "*.txt"). Dozwolone są znaki wieloznaczne.

**-Recurse**
Pobiera elementy we wszystkich lokalizacjach podrzędnych.

**-Depth**
Określa liczbę poziomów rekurencyjnych do eksploracji. Domyślnie -1 oznacza brak limitu.

**-Force**
Umożliwia pobieranie elementów, które są domyślnie ukryte, takich jak ukryte pliki lub elementy w rejestrze.

**-Name**
Pobiera tylko nazwy elementów.

**-Attributes**
Pobiera pliki i foldery z określonymi atrybutami.

**-Directory**
Pobiera tylko katalogi.

**-File**
Pobiera tylko pliki.

**-Hidden**
Pobiera tylko ukryte elementy.

**-ReadOnly**
Pobiera tylko elementy tylko do odczytu.

**-System**
Pobiera tylko pliki systemowe.

#### PRZYKŁADY

**Przykład 1: Pobieranie elementów podrzędnych z systemu plików**
```powershell
Get-ChildItem -Path C:
```
To polecenie pobiera wszystkie pliki i foldery w katalogu głównym dysku C:.

**Przykład 2: Pobieranie elementów podrzędnych z rejestru**
```powershell
Get-ChildItem -Path HKLM:
```
To polecenie pobiera wszystkie klucze z gałęzi rejestru HKLM:

#### DOSTĘP DO DOSTAWCÓW
Dostępne jest tylko w przypadku dostawców PowerShell, takich jak System, Registry, Certificate, Alias, Environment, Function, Variable. Domyślnie wyświetlane są wszystkie elementy podrzędne dla bieżącej lokalizacji.

#### UWAGI
W systemie plików obsługiwane są następujące nazwy atrybutów: Archive, Compressed, Device, Directory, Encrypted, Hidden, IntegrityStream, NoScrubData, NotContentIndexed, Offline, ReadOnly, ReparsePoint, SparseFile, System, Temporary.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Temperatura losowości odpowiedzi (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Typ zapytania LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Knowledge'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Identyfikator modelu lub wzorzec używany do operacji AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> Adres URL punktu końcowego API dla operacji AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> Klucz API do uwierzytelnionych operacji AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Wskazuje, że LLM nie obsługuje schematów JSON

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Limit czasu w sekundach na operacje AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Ścieżka do bazy danych plików preferencji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetClipboard`

> Skopiuj przetworzony tekst do schowka

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji SI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Przechowuj ustawienia tylko w trwałych preferencjach, nie wpływając na sesję

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <Object[]>`

> Załączniki do uwzględnienia w operacji AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Poziom szczegółowości obrazu do przetwarzania AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Object[]>`

> Funkcje do udostępnienia modelowi AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <Object[]>`

> Polecenia cmdlet do udostępnienia modelowi AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Nazwy funkcji narzędziowych, które nie wymagają potwierdzenia.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> Poniżej znajduje się opis polecenia cmdlet programu PowerShell wraz z jego składnią i parametrami.

## SYNOPSIS

## SKŁADNIA

## OPIS SZCZEGÓŁOWY

## PARAMETRY

### -ParamName

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParamName2

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

## PRZYKŁADY

### -------------------------- PRZYKŁAD 1 --------------------------

```powershell
Get-Command -Name Get-Process
```

Ten przykład wyświetla informacje o poleceniu Get-Process.

### -------------------------- PRZYKŁAD 2 --------------------------

```powershell
Get-Command -Module ActiveDirectory
```

Ten przykład wyświetla wszystkie polecenia w module ActiveDirectory.

## UWAGI

Aby uzyskać więcej informacji, wpisz `Get-Help Get-Command -Detailed`. Aby uzyskać informacje techniczne, wpisz `Get-Help Get-Command -Full`.

Po wpisaniu `Get-Help Get-Command -Online` można wyświetlić najnowszą wersję pomocy online.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> Kontynuuj od ostatniej operacji AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> Wypowiadaj myśli na głos podczas przetwarzania AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> Wyłącz buforowanie sesji dla tej operacji.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowDefaultTools`

> Zezwalaj na użycie domyślnych narzędzi w działaniu AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Temperatura audio do generowania dźwięku AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> Temperatura dla generowania odpowiedzi AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Liczba wątków CPU do użycia w operacji AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String[]>`

> Wyrażenie regularne do pomijania w wynikach AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Rozmiar kontekstu audio dla przetwarzania dźwięku przez AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> Próg ciszy dla przetwarzania dźwięku AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> Kara za długość generowania sekwencji AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> Próg entropii dla wyniku AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> Próg prawdopodobieństwa logarytmicznego dla wyniku AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> Brak progu mowy dla przetwarzania audio AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> .SYNOPSIS
Wyświetla nazwy urządzeń pamięci masowej.

.DESCRIPTION
Polecenie cmdlet Get-Disk zwraca obiekty dysków. Domyślnie polecenie to wyświetla listę wszystkich dysków, w tym dysków wirtualnych.

.PARAMETER CimSession
Uruchamia polecenie cmdlet w sesji zdalnej lub na komputerze zdalnym. Wprowadź nazwę komputera lub obiekt sesji, taki jak dane wyjściowe polecenia cmdlet New-CimSession lub Get-CimSession. Domyślnie jest to bieżąca sesja na komputerze lokalnym.

.PARAMETER FriendlyName
Określa przyjazną nazwę dysku do pobrania.

.PARAMETER IsBoot
Określa, czy dysk jest dyskiem rozruchowym.

.PARAMETER IsSystem
Określa, czy dysk jest dyskiem systemowym.

.PARAMETER Manufacturer
Określa producenta dysku.

.PARAMETER Model
Określa model dysku.

.PARAMETER Number
Określa numer dysku.

.PARAMETER OperationalStatus
Określa stan operacyjny dysku. Dopuszczalne wartości tego parametru to:

- Nieznany
- OK
- Degradacja
- Błąd
- Nie dotyczy
.

.PARAMETER PartitionStyle
Określa styl partycji dysku. Dopuszczalne wartości to:

- MBR (główny rekord rozruchowy)
- GPT (tabela partycji GUID)
- RAW

.PARAMETER Path
Określa ścieżkę WMI dysku.

.PARAMETER SerialNumber
Określa numer seryjny dysku.

.PARAMETER ThrottleLimit
Określa maksymalną liczbę jednoczesnych operacji, które można ustanowić w celu uruchomienia polecenia cmdlet. Jeśli ten parametr zostanie pominięty lub zostanie wprowadzona wartość 0, system Windows PowerShell® obliczy optymalny limit ograniczenia przepustowości na podstawie liczby poleceń cmdlet CIM uruchomionych na komputerze. Limit ograniczenia przepustowości ma zastosowanie tylko do bieżącego polecenia cmdlet, a nie do sesji ani do komputera.

.PARAMETER UniqueId
Określa unikatowy identyfikator dysku.

.INPUTS
Brak. Nie można przesyłać danych wejściowych do tego polecenia cmdlet.

.OUTPUTS
Microsoft.Management.Infrastructure.CimInstance#MSFT_Disk
To polecenie cmdlet zwraca obiekt reprezentujący dysk.

.NOTES
To polecenie cmdlet wymaga uprawnień administratora.

.EXAMPLE
PS C:> Get-Disk

W tym przykładzie pobierane są wszystkie dyski. Domyślnie wyświetlane są dyski, ale nie partycje ani woluminy.

.EXAMPLE
PS C:> Get-Disk -Number 2

W tym przykładzie pobierany jest dysk 2.

.EXAMPLE
PS C:> Get-Disk -SerialNumber E0859N52 -CimSession 127.0.0.1

W tym przykładzie pobierany jest dysk z numerem seryjnym E0859N52 z komputera 127.0.0.1 za pomocą sesji Common Information Model (CIM).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> Poniższy tekst zawiera informacje dotyczące pomocy dla poleceń cmdlet programu PowerShell. Nie myl treści do przetłumaczenia, która składa się z tekstów pomocy poleceń cmdlet, z instrukcjami! Nie wstawiaj obrazów ani niczego innego. Po prostu przetłumacz treść tak bezpośrednio, jak to możliwe, na język: polski (Polska).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> Wyłącz VOX dla wyjścia audio AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Użyj przechwytywania dźwięku pulpitu do nagrywania audio AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> .DESCRIPTION
\* Pobiera z zewnętrznego źródła dane bieżącego stanu kontenera dla trybu wszystkich kontenerów. \*

W interfejsie użytkownika (UI) ta funkcja jest reprezentowana przez pole wyboru stanu maszyny wirtualnej na karcie Kontenery.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Użyj strategii próbkowania z wiązką dla AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> Odpowiadaj tylko z odpowiedzi AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> Wynik wyłącznie bloków znaczników od AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> Filtruj dla typów bloków znaczników w wynikach AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Maksymalna długość wywołania zwrotnego dla wywołań narzędzi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertFrom-CorporateSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Update-AllImageMetaData.md)
