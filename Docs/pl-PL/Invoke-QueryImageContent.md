# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Analizuje zawartość obrazu przy użyciu możliwości AI wizji komputerowej

## Description

Przetwarza obrazy przy użyciu możliwości sztucznej inteligencji do analizy treści i odpowiadania na pytania dotyczące obrazu. Funkcja obsługuje różne parametry analizy, w tym kontrolę temperatury losowości odpowiedzi oraz limity tokenów długości wyniku.

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | Ciąg zapytania do analizy obrazu |
| `-ImagePath` | String | ✅ | — | 1 | — | Ścieżka do pliku obrazu do analizy |
| `-Instructions` | String | — | — | 2 | — | Przetłumacz poniższy tekst na język polski (Polska). MUSISZ przetłumaczyć CAŁY czytelny dla człowieka tekst. Nie zwracaj oryginalnego wejścia. Zwróć TYLKO przetłumaczony tekst bez wyjaśnień, opakowania JSON ani promptów systemowych.

WAŻNE ZASADY TŁUMACZENIA:
1. Jeśli dane wejściowe zawierają kod, znaczniki lub dane strukturalne, zachowaj całą składnię, strukturę i elementy techniczne, takie jak słowa kluczowe programowania, tagi lub elementy specyficzne dla formatu danych.
2. Tłumacz tylko fragmenty czytelne dla człowieka, takie jak komentarze, wartości łańcuchowe, dokumentację lub treść w języku naturalnym.
3. Zachowaj dokładne formatowanie, wcięcia i podziały wierszy.
4. Nigdy nie tłumacz identyfikatorów, nazw funkcji, zmiennych ani technicznych słów kluczowych.
Dodatkowe instrukcje użytkownika: 
Nie pomyl treści do przetłumaczenia, która składa się z tekstów pomocy poleceń cmdlet PowerShell, z instrukcjami!
Nie wstawiaj obrazków ani niczego innego. Po prostu przetłumacz treść bezpośrednio na: polski (Polska). |
| `-ResponseFormat` | String | — | — | Named | `$null` | .SYNOPSIS
    Pobiera użytkowników z Active Directory.

.DESCRIPTION
    Polecenie Get-ADUser pobiera użytkownika lub przeprowadza wyszukiwanie w celu pobrania wielu użytkowników z usługi domenowej Active Directory.

.PARAMETER Identity
    Określa obiekt użytkownika domeny Active Directory, który ma zostać pobrany. Można podać jedną z następujących wartości:
        * Nazwa wyróżniająca
        * Identyfikator GUID (objectGUID)
        * Identyfikator zabezpieczeń (objectSid)
        * Nazwa konta SAM (sAMAccountName)
        * Nazwa główna użytkownika (userPrincipalName)

.PARAMETER Filter
    Określa ciąg zapytania służący do pobierania obiektów użytkowników domeny Active Directory. Ta składnia korzysta z języka wyrażeń PowerShell (PowerShell Expression Language).

.PARAMETER Properties
    Określa właściwości obiektu użytkownika, które mają zostać pobrane. Jeśli nie określono, zwracane są tylko domyślne właściwości.

.EXAMPLE
    Get-ADUser -Filter {Name -like "*Smith*"}

    Pobiera wszystkich użytkowników, których nazwa zawiera „Smith”. |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura losowości odpowiedzi (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Poziom szczegółowości obrazu |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | Typ zapytania LLM |
| `-Model` | String | — | — | Named | — | Identyfikator modelu lub wzorzec używany do operacji AI |
| `-ApiEndpoint` | String | — | — | Named | — | Adres URL punktu końcowego API dla operacji AI |
| `-ApiKey` | String | — | — | Named | — | Klucz API do uwierzytelnionych operacji AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Wskazuje, że LLM nie obsługuje schematów JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Limit czasu w sekundach na operacje AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ścieżka do bazy danych plików preferencji |
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
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji SI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Przechowuj ustawienia tylko w trwałych preferencjach, nie wpływając na sesję |
| `-Functions` | String[] | — | — | Named | — | Określa funkcje do użycia w operacji AI. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Określa udostępnione polecenia cmdlet dla operacji AI. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Określa nazwy funkcji narzędzi, które nie wymagają potwierdzenia. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura dla generowania odpowiedzi audio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura dla generowania odpowiedzi. |
| `-Language` | String | — | — | Named | — | Język dla wygenerowanych opisów i słów kluczowych |
| `-CpuThreads` | Int32 | — | — | Named | — | Liczba wątków procesora do użycia. |
| `-SuppressRegex` | String | — | — | Named | — | Wyrażenie regularne do pomijania danych wyjściowych. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Rozmiar kontekstu audio do przetwarzania. |
| `-SilenceThreshold` | Double | — | — | Named | — | Próg ciszy dla przetwarzania dźwięku. |
| `-LengthPenalty` | Double | — | — | Named | — | Kara za długość sekwencji. |
| `-EntropyThreshold` | Double | — | — | Named | — | Próg entropii dla filtrowania wyjścia. |
| `-LogProbThreshold` | Double | — | — | Named | — | Próg prawdopodobieństwa logarytmicznego dla filtrowania wyjścia. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Brak progu mowy do wykrywania dźwięku. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Jeśli określono, nie wypowiadaj wyniku. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Jeśli określono, nie wypowiadaj myśli modelu. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Jeśli określono, wyłącza VOX. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Jeśli określono, użyj przechwytywania dźwięku z pulpitu. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Jeśli określono, wyłącza użycie kontekstu. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Jeśli określono, użyj strategii próbkowania z wyszukiwaniem wiązkowym. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Jeśli określono, zwracaj tylko odpowiedzi. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Jeśli określono, nie dodawaj przemyśleń do historii. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Należy pamiętać, że nie należy mylić treści do przetłumaczenia, która składa się z tekstów pomocy poleceń cmdlet PowerShell, z instrukcjami! Nie należy wstawiać obrazków ani niczego innego. Wystarczy przetłumaczyć treść tak prosto, jak to możliwe, na język: polski (Polska). |
| `-Speak` | SwitchParameter | — | — | Named | — | .SYNOPSIS
   Krótki opis.

.DESCRIPTION
   Długi opis.

.PARAMETER NazwaParametru
   Opis parametru.

.EXAMPLE
   Przykład użycia.

.INPUTS
   Opis typów wejściowych.

.OUTPUTS
   Opis typów wyjściowych.

.NOTES
   Dodatkowe uwagi dotyczące tego polecenia cmdlet.

.LINK
   Powiązane polecenia cmdlet.

.LINK
   Zewnętrzne materiały referencyjne. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Mów myślami modelu. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Poniżej znajduje się tylko znacznik wyjściowy. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtr dla typów bloków znaczników. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Jeśli określono, czatuj tylko raz. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Wyłącz buforowanie sesji. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maksymalna długość wywołania zwrotnego dla wywołań narzędzi. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Wymuś wyświetlenie monitu o zgodę, nawet jeśli ustawiono preferencję dla instalacji pakietu ImageSharp. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatycznie wyrażaj zgodę na instalację oprogramowania firm trzecich i ustaw stałą flagę dla pakietów ImageSharp. |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

Analizuje obraz z określonymi limitami temperatury i tokenów.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

Prosta analiza obrazu przy użyciu aliasów i parametrów pozycyjnych.

## Parameter Details

### `-Query <String>`

> Ciąg zapytania do analizy obrazu

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImagePath <String>`

> Ścieżka do pliku obrazu do analizy

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> Przetłumacz poniższy tekst na język polski (Polska). MUSISZ przetłumaczyć CAŁY czytelny dla człowieka tekst. Nie zwracaj oryginalnego wejścia. Zwróć TYLKO przetłumaczony tekst bez wyjaśnień, opakowania JSON ani promptów systemowych.

WAŻNE ZASADY TŁUMACZENIA:
1. Jeśli dane wejściowe zawierają kod, znaczniki lub dane strukturalne, zachowaj całą składnię, strukturę i elementy techniczne, takie jak słowa kluczowe programowania, tagi lub elementy specyficzne dla formatu danych.
2. Tłumacz tylko fragmenty czytelne dla człowieka, takie jak komentarze, wartości łańcuchowe, dokumentację lub treść w języku naturalnym.
3. Zachowaj dokładne formatowanie, wcięcia i podziały wierszy.
4. Nigdy nie tłumacz identyfikatorów, nazw funkcji, zmiennych ani technicznych słów kluczowych.
Dodatkowe instrukcje użytkownika: 
Nie pomyl treści do przetłumaczenia, która składa się z tekstów pomocy poleceń cmdlet PowerShell, z instrukcjami!
Nie wstawiaj obrazków ani niczego innego. Po prostu przetłumacz treść bezpośrednio na: polski (Polska).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> .SYNOPSIS
    Pobiera użytkowników z Active Directory.

.DESCRIPTION
    Polecenie Get-ADUser pobiera użytkownika lub przeprowadza wyszukiwanie w celu pobrania wielu użytkowników z usługi domenowej Active Directory.

.PARAMETER Identity
    Określa obiekt użytkownika domeny Active Directory, który ma zostać pobrany. Można podać jedną z następujących wartości:
        * Nazwa wyróżniająca
        * Identyfikator GUID (objectGUID)
        * Identyfikator zabezpieczeń (objectSid)
        * Nazwa konta SAM (sAMAccountName)
        * Nazwa główna użytkownika (userPrincipalName)

.PARAMETER Filter
    Określa ciąg zapytania służący do pobierania obiektów użytkowników domeny Active Directory. Ta składnia korzysta z języka wyrażeń PowerShell (PowerShell Expression Language).

.PARAMETER Properties
    Określa właściwości obiektu użytkownika, które mają zostać pobrane. Jeśli nie określono, zwracane są tylko domyślne właściwości.

.EXAMPLE
    Get-ADUser -Filter {Name -like "*Smith*"}

    Pobiera wszystkich użytkowników, których nazwa zawiera „Smith”.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
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
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Poziom szczegółowości obrazu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'high'` |
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
| **Default value** | `'Pictures'` |
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
### `-Functions <String[]>`

> Określa funkcje do użycia w operacji AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <String[]>`

> Określa udostępnione polecenia cmdlet dla operacji AI.

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

> Określa nazwy funkcji narzędzi, które nie wymagają potwierdzenia.

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

> Temperatura dla generowania odpowiedzi audio.

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

> Temperatura dla generowania odpowiedzi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Język dla wygenerowanych opisów i słów kluczowych

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

> Wyrażenie regularne do pomijania danych wyjściowych.

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

> Jeśli określono, nie wypowiadaj wyniku.

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

> Jeśli określono, nie wypowiadaj myśli modelu.

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

> Jeśli określono, wyłącza VOX.

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

> Jeśli określono, użyj przechwytywania dźwięku z pulpitu.

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

> Jeśli określono, wyłącza użycie kontekstu.

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

> Jeśli określono, użyj strategii próbkowania z wyszukiwaniem wiązkowym.

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

> Jeśli określono, zwracaj tylko odpowiedzi.

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

> Jeśli określono, nie dodawaj przemyśleń do historii.

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

> Należy pamiętać, że nie należy mylić treści do przetłumaczenia, która składa się z tekstów pomocy poleceń cmdlet PowerShell, z instrukcjami! Nie należy wstawiać obrazków ani niczego innego. Wystarczy przetłumaczyć treść tak prosto, jak to możliwe, na język: polski (Polska).

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

> .SYNOPSIS
   Krótki opis.

.DESCRIPTION
   Długi opis.

.PARAMETER NazwaParametru
   Opis parametru.

.EXAMPLE
   Przykład użycia.

.INPUTS
   Opis typów wejściowych.

.OUTPUTS
   Opis typów wyjściowych.

.NOTES
   Dodatkowe uwagi dotyczące tego polecenia cmdlet.

.LINK
   Powiązane polecenia cmdlet.

.LINK
   Zewnętrzne materiały referencyjne.

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

> Mów myślami modelu.

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

> Poniżej znajduje się tylko znacznik wyjściowy.

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

> Filtr dla typów bloków znaczników.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce`

> Jeśli określono, czatuj tylko raz.

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

> Wyłącz buforowanie sesji.

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
### `-ForceConsent`

> Wymuś wyświetlenie monitu o zgodę, nawet jeśli ustawiono preferencję dla instalacji pakietu ImageSharp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> Automatycznie wyrażaj zgodę na instalację oprogramowania firm trzecich i ustaw stałą flagę dla pakietów ImageSharp.

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
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Update-AllImageMetaData.md)
