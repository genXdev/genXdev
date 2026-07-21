# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Znajduje podobne tytuły filmów na podstawie wspólnych właściwości.

## Description

Analizuje dostarczone filmy w celu znalezienia wspólnych właściwości i zwraca listę 10 podobnych tytułów filmowych. Wykorzystuje sztuczną inteligencję do identyfikacji wzorców i tematów wśród wejściowych filmów, aby zasugerować odpowiednie rekomendacje.

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-All] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Headless] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Webkit] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | Tablica tytułów filmów do analizy pod kątem podobieństw. |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | Typ zapytania LLM |
| `-Model` | String | — | — | Named | — | Identyfikator modelu lub wzorzec używany do operacji AI |
| `-ApiEndpoint` | String | — | — | Named | — | Adres URL punktu końcowego API dla operacji AI |
| `-ApiKey` | String | — | — | Named | — | Klucz API do uwierzytelnionych operacji AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Wskazuje, że LLM nie obsługuje schematów JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Limit czasu w sekundach na operacje AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ścieżka do bazy danych plików preferencji |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura losowości odpowiedzi (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Otwiera wyszukiwania w IMDB dla każdego wyniku |
| `-Language` | String | — | — | Named | — | Język dla wyszukiwarki IMDB lub sesji przeglądarki |
| `-Monitor` | Int32 | — | — | Named | `-1` | Monitoruj indeks lub nazwę dla rozmieszczenia okna przeglądarki |
| `-Width` | Int32 | — | — | Named | `-1` | Szerokość okna przeglądarki w pikselach |
| `-Height` | Int32 | — | — | Named | `-1` | Wysokość okna przeglądarki w pikselach |
| `-AcceptLang` | String | — | — | Named | — | Nagłówek HTTP Accept-Language dla sesji przeglądarki |
| `-Private` | SwitchParameter | — | — | Named | — | Otwórz przeglądarkę w trybie prywatnym/incognito |
| `-Chrome` | SwitchParameter | — | — | Named | — | Użyj przeglądarki Google Chrome do sesji przeglądarki |
| `-Chromium` | SwitchParameter | — | — | Named | — | Użyj Chromium do sesji przeglądarki |
| `-Firefox` | SwitchParameter | — | — | Named | — | Użyj przeglądarki Mozilla Firefox do sesji przeglądania |
| `-Left` | Int32 | — | — | Named | — | Pozycja lewej krawędzi okna przeglądarki w pikselach |
| `-Right` | Int32 | — | — | Named | — | Prawidłowa pozycja okna przeglądarki w pikselach |
| `-Bottom` | Int32 | — | — | Named | — | Dolna pozycja okna przeglądarki w pikselach |
| `-Centered` | SwitchParameter | — | — | Named | — | Otwórz okno przeglądarki wyśrodkowane na ekranie |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Otwórz przeglądarkę w trybie pełnoekranowym |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Otwórz przeglądarkę w trybie aplikacji (minimalny interfejs użytkownika) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Wyłącz rozszerzenia przeglądarki dla sesji |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Wyłącz blokadę wyskakujących okienek w sesji przeglądarki |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Ustaw fokus na oknie przeglądarki po otwarciu |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Ustaw okno przeglądarki na pierwszym planie po otwarciu |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maksymalizuj okno przeglądarki po otwarciu |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Przywróć fokus do poprzedniego okna po zamknięciu przeglądarki |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Otwórz każdy wynik z IMDB w nowym oknie przeglądarki |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Otwórz adres URL po wyszukaniu w IMDB |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Zwróć tylko URL bez otwierania przeglądarki |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Wyślij klawisz Escape do przeglądarki po otwarciu |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Utrzymuj focus klawiatury w przeglądarce po wysłaniu klawiszy |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Użyj Shift+Enter podczas wysyłania klawiszy do przeglądarki |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Opóźnienie w milisekundach między wysyłaniem klawiszy do przeglądarki |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Otwórz okno przeglądarki bez ramek |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Użyj przeglądarki zarządzanej przez Playwright zamiast przeglądarki zainstalowanej w systemie operacyjnym |
| `-Webkit` | SwitchParameter | — | — | Named | — | Otwiera przeglądarkę WebKit zarządzaną przez Playwright. Implikuje użycie -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Uruchom przeglądarkę bez widocznego okna |
| `-All` | SwitchParameter | — | — | Named | — | Otwiera się we wszystkich zarejestrowanych nowoczesnych przeglądarkach |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Otwórz okna przeglądarki obok siebie dla każdego wyniku |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji SI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Przechowuj ustawienia tylko w trwałych preferencjach, nie wpływając na sesję |
| `-Instructions` | String | — | — | Named | — | Instrukcje dla modelu AI dotyczące generowania listy ciągów znaków |
| `-Attachments` | String[] | — | — | Named | — | Tablica ścieżek plików do załączenia |
| `-ImageDetail` | String | — | — | Named | — | Poziom szczegółowości obrazu dla przetwarzania obrazów. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Tablica definicji funkcji, które mogą być wywołane przez model AI podczas przetwarzania. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Tabela definicji poleceń PowerShell do wykorzystania jako narzędzia, które AI może wywołać. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Tablica nazw poleceń, które nie wymagają potwierdzenia przed wykonaniem. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura dla generowania dźwięku. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura odpowiedzi. |
| `-CpuThreads` | Int32 | — | — | Named | — | Liczba wątków procesora do użycia. |
| `-SuppressRegex` | String | — | — | Named | — | Wyrażenie regularne do pomijania określonych danych wyjściowych. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Rozmiar kontekstu audio do przetwarzania. |
| `-SilenceThreshold` | Double | — | — | Named | — | Próg ciszy dla przetwarzania dźwięku. |
| `-LengthPenalty` | Double | — | — | Named | — | Kara za długość sekwencji. |
| `-EntropyThreshold` | Double | — | — | Named | — | Próg entropii dla filtrowania wyjścia. |
| `-LogProbThreshold` | Double | — | — | Named | — | Próg prawdopodobieństwa logarytmicznego dla filtrowania wyjścia. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Brak progu mowy do wykrywania dźwięku. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Wyłącz wyjście mowy. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Wyłącz wyjście mowy myślowej. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Wyłącz VOX (aktywację głosową). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Użyj przechwytywania dźwięku z pulpitu. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Wyłącz użycie kontekstu. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Wyszukiwanie wiązki wykorzystującej strategię próbkowania. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Add-AppxVolume - Adds an appx volume to the package manager.

      

Name
    Add-AppxVolume

Syntax
    Add-AppxVolume -VolumePath <String> [-WhatIf] [-Confirm] [<CommonParameters>]

Aliases
    None

Remarks
    To see the examples, type: `Get-Help Add-AppxVolume -Examples`
    For more information, type: `Get-Help Add-AppxVolume -Detailed`
    To see the technical remarks, type: `Get-Help Add-AppxVolume -Full`
    For online help, type: `Get-Help Add-AppxVolume -Online` |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Po określeniu kopiuje wynikową listę ciągów z powrotem do schowka systemowego po przetworzeniu. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | .PARAMETER Nazwa parametru
Krótki opis parametru.

.UŻYCIE
Przykładowe użycie tego polecenia cmdlet.

.OPIS
Opis polecenia cmdlet.

.NOTATKI
Informacje dodatkowe.

.LINK
https://learn.microsoft.com/powershell/module/exchange/connect-exchangeonline?view=exchange-ps |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Nie dodawaj myśli modelu do historii konwersacji |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Wznów od ostatniej rozmowy |
| `-Speak` | SwitchParameter | — | — | Named | — | Włącz syntezę mowy dla odpowiedzi AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Włącz zamianę tekstu na mowę dla odpowiedzi myślowych AI |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Nie przechowuj sesji w pamięci podręcznej sesji |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Włącz domyślne narzędzia dla modelu AI. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | ### Get-ADUser
Pobiera jednego lub więcej użytkowników usługi Active Directory.

## SYNTAX

```powershell
Get-ADUser
   [-AuthType <ADAuthType>]
   [-Credential <PSCredential>]
   -Filter <String>
   [-Properties <String[]>]
   [-ResultPageSize <Int32>]
   [-ResultSetSize <Int32>]
   [-SearchBase <String>]
   [-SearchScope <ADSearchScope>]
   [-Server <String>]
   [<CommonParameters>]
```

```powershell
Get-ADUser
   [-AuthType <ADAuthType>]
   [-Credential <PSCredential>]
   [-Identity] <ADUser>
   [-Partition <String>]
   [-Properties <String[]>]
   [-Server <String>]
   [<CommonParameters>]
```

```powershell
Get-ADUser
   [-AuthType <ADAuthType>]
   [-Credential <PSCredential>]
   -LDAPFilter <String>
   [-Properties <String[]>]
   [-ResultPageSize <Int32>]
   [-ResultSetSize <Int32>]
   [-SearchBase <String>]
   [-SearchScope <ADSearchScope>]
   [-Server <String>]
   [<CommonParameters>]
```

## DESCRIPTION
Polecenie `Get-ADUser` pobiera obiekt użytkownika z usługi Active Directory. Można użyć parametru `-Identity`, aby pobrać konkretnego użytkownika, lub parametrów `-Filter` albo `-LDAPFilter`, aby pobrać wielu użytkowników.

## PARAMETERS

### -AuthType
Określa metodę uwierzytelniania. Dozwolone wartości: `Negotiate` (0) lub `Basic` (1). Domyślnie jest `Negotiate`.

### -Credential
Określa konto użytkownika używane do wykonania zadania. Domyślnie jest bieżący użytkownik.

### -Filter
Określa ciąg zapytania do pobierania użytkowników. Na przykład: `Get-ADUser -Filter "Name -like '*Smith*'"`.

### -Identity
Określa obiekt użytkownika do pobrania. Może to być wyróżniająca nazwa (DN), identyfikator GUID, identyfikator SID lub nazwa konta SAM.

### -LDAPFilter
Określa filtr LDAP do pobierania użytkowników. Na przykład: `Get-ADUser -LDAPFilter "(name=Smith)"`.

### -Partition
Określa partycję w usłudze AD, z której ma być pobrany użytkownik.

### -Properties
Określa właściwości obiektu użytkownika do pobrania. Domyślnie pobierane są tylko podstawowe właściwości.

### -ResultPageSize
Określa liczbę obiektów na stronie wyników.

### -ResultSetSize
Określa maksymalną liczbę obiektów do zwrócenia.

### -SearchBase
Określa ścieżkę wyróżniającą (DN) katalogu, od którego ma rozpocząć się wyszukiwanie.

### -SearchScope
Określa zakres wyszukiwania. Dozwolone wartości: `Base` (0), `OneLevel` (1) lub `Subtree` (2).

### -Server
Określa serwer AD, z którym się połączyć.

### <CommonParameters>
To polecenie obsługuje standardowe parametry PowerShell: -Verbose, -Debug, -ErrorAction, -ErrorVariable, -WarningAction, -WarningVariable, -OutBuffer, -PipelineVariable i -OutVariable.

## INPUTS
### None lub Microsoft.ActiveDirectory.Management.ADUser
Obiekt ADUser można przesłać potokiem do polecenia.

## OUTPUTS
### Microsoft.ActiveDirectory.Management.ADUser
Polecenie zwraca jeden lub więcej obiektów ADUser.

## EXAMPLES

### Przykład 1: Pobierz wszystkich użytkowników
```powershell
Get-ADUser -Filter *
```
Pobiera wszystkich użytkowników w domenie.

### Przykład 2: Pobierz konkretnego użytkownika
```powershell
Get-ADUser -Identity "sAMAccountName"
```
Pobiera użytkownika o nazwie konta SAM "sAMAccountName".

### Przykład 3: Pobierz użytkowników z filtrem
```powershell
Get-ADUser -Filter "Name -like '*Smith*'" -Properties *
```
Pobiera wszystkich użytkowników, których imię zawiera 'Smith', ze wszystkimi właściwościami.

### Przykład 4: Użyj filtra LDAP
```powershell
Get-ADUser -LDAPFilter "(&(objectClass=user)(department=IT))"
```
Pobiera wszystkich użytkowników z działu IT.

## RELATED LINKS
[Online wersja:] https://docs.microsoft.com/powershell/module/activedirectory/get-aduser
[Set-ADUser]
[New-ADUser]
[Remove-ADUser] |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtruj dla określonych typów bloków znaczników. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maksymalna długość wywołania zwrotnego dla wywołań narzędzi. |

## Examples

### Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb

```powershell
Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb
```

### moremovietitle "The Matrix","Inception" -imdb

```powershell
moremovietitle "The Matrix","Inception" -imdb
```

## Parameter Details

### `-Movies <String[]>`

> Tablica tytułów filmów do analizy pod kątem podobieństw.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Typ zapytania LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
### `-Temperature <Double>`

> Temperatura losowości odpowiedzi (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OpenInImdb`

> Otwiera wyszukiwania w IMDB dla każdego wyniku

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `imdb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Język dla wyszukiwarki IMDB lub sesji przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Monitoruj indeks lub nazwę dla rozmieszczenia okna przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Szerokość okna przeglądarki w pikselach

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Wysokość okna przeglądarki w pikselach

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Nagłówek HTTP Accept-Language dla sesji przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Otwórz przeglądarkę w trybie prywatnym/incognito

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Użyj przeglądarki Google Chrome do sesji przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Użyj Chromium do sesji przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Użyj przeglądarki Mozilla Firefox do sesji przeglądania

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Pozycja lewej krawędzi okna przeglądarki w pikselach

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Prawidłowa pozycja okna przeglądarki w pikselach

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Dolna pozycja okna przeglądarki w pikselach

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Otwórz okno przeglądarki wyśrodkowane na ekranie

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> Otwórz przeglądarkę w trybie pełnoekranowym

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Otwórz przeglądarkę w trybie aplikacji (minimalny interfejs użytkownika)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> Wyłącz rozszerzenia przeglądarki dla sesji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> Wyłącz blokadę wyskakujących okienek w sesji przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Ustaw fokus na oknie przeglądarki po otwarciu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Ustaw okno przeglądarki na pierwszym planie po otwarciu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Maksymalizuj okno przeglądarki po otwarciu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Przywróć fokus do poprzedniego okna po zamknięciu przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> Otwórz każdy wynik z IMDB w nowym oknie przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> Otwórz adres URL po wyszukaniu w IMDB

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> Zwróć tylko URL bez otwierania przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Wyślij klawisz Escape do przeglądarki po otwarciu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Utrzymuj focus klawiatury w przeglądarce po wysłaniu klawiszy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Użyj Shift+Enter podczas wysyłania klawiszy do przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Opóźnienie w milisekundach między wysyłaniem klawiszy do przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Otwórz okno przeglądarki bez ramek

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> Użyj przeglądarki zarządzanej przez Playwright zamiast przeglądarki zainstalowanej w systemie operacyjnym

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Otwiera przeglądarkę WebKit zarządzaną przez Playwright. Implikuje użycie -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> Uruchom przeglądarkę bez widocznego okna

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> Otwiera się we wszystkich zarejestrowanych nowoczesnych przeglądarkach

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Otwórz okna przeglądarki obok siebie dla każdego wyniku

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
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
### `-Instructions <String>`

> Instrukcje dla modelu AI dotyczące generowania listy ciągów znaków

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> Tablica ścieżek plików do załączenia

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

> Poziom szczegółowości obrazu dla przetwarzania obrazów.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Tablica definicji funkcji, które mogą być wywołane przez model AI podczas przetwarzania.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Tabela definicji poleceń PowerShell do wykorzystania jako narzędzia, które AI może wywołać.

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

> Tablica nazw poleceń, które nie wymagają potwierdzenia przed wykonaniem.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Temperatura dla generowania dźwięku.

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

> Temperatura odpowiedzi.

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

> Liczba wątków procesora do użycia.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Wyrażenie regularne do pomijania określonych danych wyjściowych.

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

> Rozmiar kontekstu audio do przetwarzania.

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

> Próg ciszy dla przetwarzania dźwięku.

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

> Kara za długość sekwencji.

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

> Próg entropii dla filtrowania wyjścia.

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

> Próg prawdopodobieństwa logarytmicznego dla filtrowania wyjścia.

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

> Brak progu mowy do wykrywania dźwięku.

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

> Wyłącz wyjście mowy.

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

> Wyłącz wyjście mowy myślowej.

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

> Wyłącz VOX (aktywację głosową).

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

> Użyj przechwytywania dźwięku z pulpitu.

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

> Wyłącz użycie kontekstu.

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

> Wyszukiwanie wiązki wykorzystującej strategię próbkowania.

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

> Add-AppxVolume - Adds an appx volume to the package manager.

      

Name
    Add-AppxVolume

Syntax
    Add-AppxVolume -VolumePath <String> [-WhatIf] [-Confirm] [<CommonParameters>]

Aliases
    None

Remarks
    To see the examples, type: `Get-Help Add-AppxVolume -Examples`
    For more information, type: `Get-Help Add-AppxVolume -Detailed`
    To see the technical remarks, type: `Get-Help Add-AppxVolume -Full`
    For online help, type: `Get-Help Add-AppxVolume -Online`

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetClipboard`

> Po określeniu kopiuje wynikową listę ciągów z powrotem do schowka systemowego po przetworzeniu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> .PARAMETER Nazwa parametru
Krótki opis parametru.

.UŻYCIE
Przykładowe użycie tego polecenia cmdlet.

.OPIS
Opis polecenia cmdlet.

.NOTATKI
Informacje dodatkowe.

.LINK
https://learn.microsoft.com/powershell/module/exchange/connect-exchangeonline?view=exchange-ps

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> Nie dodawaj myśli modelu do historii konwersacji

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

> Wznów od ostatniej rozmowy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> Włącz syntezę mowy dla odpowiedzi AI

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

> Włącz zamianę tekstu na mowę dla odpowiedzi myślowych AI

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

> Nie przechowuj sesji w pamięci podręcznej sesji

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

> Włącz domyślne narzędzia dla modelu AI.

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

> ### Get-ADUser
Pobiera jednego lub więcej użytkowników usługi Active Directory.

## SYNTAX

```powershell
Get-ADUser
   [-AuthType <ADAuthType>]
   [-Credential <PSCredential>]
   -Filter <String>
   [-Properties <String[]>]
   [-ResultPageSize <Int32>]
   [-ResultSetSize <Int32>]
   [-SearchBase <String>]
   [-SearchScope <ADSearchScope>]
   [-Server <String>]
   [<CommonParameters>]
```

```powershell
Get-ADUser
   [-AuthType <ADAuthType>]
   [-Credential <PSCredential>]
   [-Identity] <ADUser>
   [-Partition <String>]
   [-Properties <String[]>]
   [-Server <String>]
   [<CommonParameters>]
```

```powershell
Get-ADUser
   [-AuthType <ADAuthType>]
   [-Credential <PSCredential>]
   -LDAPFilter <String>
   [-Properties <String[]>]
   [-ResultPageSize <Int32>]
   [-ResultSetSize <Int32>]
   [-SearchBase <String>]
   [-SearchScope <ADSearchScope>]
   [-Server <String>]
   [<CommonParameters>]
```

## DESCRIPTION
Polecenie `Get-ADUser` pobiera obiekt użytkownika z usługi Active Directory. Można użyć parametru `-Identity`, aby pobrać konkretnego użytkownika, lub parametrów `-Filter` albo `-LDAPFilter`, aby pobrać wielu użytkowników.

## PARAMETERS

### -AuthType
Określa metodę uwierzytelniania. Dozwolone wartości: `Negotiate` (0) lub `Basic` (1). Domyślnie jest `Negotiate`.

### -Credential
Określa konto użytkownika używane do wykonania zadania. Domyślnie jest bieżący użytkownik.

### -Filter
Określa ciąg zapytania do pobierania użytkowników. Na przykład: `Get-ADUser -Filter "Name -like '*Smith*'"`.

### -Identity
Określa obiekt użytkownika do pobrania. Może to być wyróżniająca nazwa (DN), identyfikator GUID, identyfikator SID lub nazwa konta SAM.

### -LDAPFilter
Określa filtr LDAP do pobierania użytkowników. Na przykład: `Get-ADUser -LDAPFilter "(name=Smith)"`.

### -Partition
Określa partycję w usłudze AD, z której ma być pobrany użytkownik.

### -Properties
Określa właściwości obiektu użytkownika do pobrania. Domyślnie pobierane są tylko podstawowe właściwości.

### -ResultPageSize
Określa liczbę obiektów na stronie wyników.

### -ResultSetSize
Określa maksymalną liczbę obiektów do zwrócenia.

### -SearchBase
Określa ścieżkę wyróżniającą (DN) katalogu, od którego ma rozpocząć się wyszukiwanie.

### -SearchScope
Określa zakres wyszukiwania. Dozwolone wartości: `Base` (0), `OneLevel` (1) lub `Subtree` (2).

### -Server
Określa serwer AD, z którym się połączyć.

### <CommonParameters>
To polecenie obsługuje standardowe parametry PowerShell: -Verbose, -Debug, -ErrorAction, -ErrorVariable, -WarningAction, -WarningVariable, -OutBuffer, -PipelineVariable i -OutVariable.

## INPUTS
### None lub Microsoft.ActiveDirectory.Management.ADUser
Obiekt ADUser można przesłać potokiem do polecenia.

## OUTPUTS
### Microsoft.ActiveDirectory.Management.ADUser
Polecenie zwraca jeden lub więcej obiektów ADUser.

## EXAMPLES

### Przykład 1: Pobierz wszystkich użytkowników
```powershell
Get-ADUser -Filter *
```
Pobiera wszystkich użytkowników w domenie.

### Przykład 2: Pobierz konkretnego użytkownika
```powershell
Get-ADUser -Identity "sAMAccountName"
```
Pobiera użytkownika o nazwie konta SAM "sAMAccountName".

### Przykład 3: Pobierz użytkowników z filtrem
```powershell
Get-ADUser -Filter "Name -like '*Smith*'" -Properties *
```
Pobiera wszystkich użytkowników, których imię zawiera 'Smith', ze wszystkimi właściwościami.

### Przykład 4: Użyj filtra LDAP
```powershell
Get-ADUser -LDAPFilter "(&(objectClass=user)(department=IT))"
```
Pobiera wszystkich użytkowników z działu IT.

## RELATED LINKS
[Online wersja:] https://docs.microsoft.com/powershell/module/activedirectory/get-aduser
[Set-ADUser]
[New-ADUser]
[Remove-ADUser]

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

> Filtruj dla określonych typów bloków znaczników.

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
## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ScriptExecutionErrorFixPrompt.md)
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
