# Invoke-LLMTextTransformation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `spellcheck`

## Synopsis

> Przetwarza tekst przy użyciu wspomaganego przez sztuczną inteligencję przetwarzania.

## Description

Ta funkcja przetwarza tekst wejściowy przy użyciu modeli AI, aby wykonywać różne transformacje, takie jak sprawdzanie pisowni, dodawanie emotikonów lub inne ulepszenia tekstu określone przez instrukcje. Może przyjmować dane wejściowe bezpośrednio przez parametry, z potoku lub ze schowka systemowego.

## Syntax

```powershell
Invoke-LLMTextTransformation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | .PARAMETER ConfiguratorWmiNamespace
Określa ścieżkę przestrzeni nazw WMI, której używa konfigurator. Domyślnie jest to root\default. Użyj tego parametru, aby mieć pewność, że polecenie Get-WmiObject i polecenie Invoke-WmiMethod używają zaufanej przestrzeni nazw skonfigurowanej dla konfiguratora. |
| `-Instructions` | String | — | — | 1 | `('Check and correct any spelling or grammar ' +
            'errors in the text. Return the corrected text without any ' +
            'additional comments or explanations.')` | Pomoc dotycząca polecenia cmdlet Get-Date


---

POMOC DOTYCZĄCA POLECENIA CMDLET Get-Date

---

SKRÓCONY OPIS
    Pobiera bieżącą datę i godzinę.

PEŁNY OPIS
    Polecenie cmdlet Get-Date pobiera bieżącą datę i godzinę lub określoną datę i godzinę. Wyświetla datę i godzinę w formacie Windows PowerShell. Domyślnie data i godzina są wyświetlane w formacie długim.

    Get-Date może zwrócić obiekt DateTime lub obiekt String. Gdy używasz przełącznika -DisplayHint, Get-Date zwraca obiekt DateTime, ale wyświetla tylko żądane właściwości. Gdy używasz parametru -Format, Get-Date zwraca obiekt String.

    Get-Date może używać .NET Framework, aby konwertować ciągi znaków na obiekty DateTime przed ich sformatowaniem. Aby uzyskać więcej informacji, zobacz [DateTime.ParseExact] w bibliotece MSDN (Microsoft Developer Network).

PARAMETRY
    -Date <DateTime>
        Określa datę i godzinę. Domyślnie Get-Date pobiera bieżącą datę i godzinę. Wprowadź datę i godzinę w formacie standardowym dla kultury systemu.

        Na przykład w amerykańskim angielskim:

        Get-Date -Date "1/1/2008 12:30:00"

        Wymagane?    false
        Pozycja?    1
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -DisplayHint <DisplayHintType>
        Określa, które właściwości obiektu DateTime są wyświetlane. Dozwolone wartości to Date, Time lub DateTime.

        Wymagane?    false
        Pozycja?    2
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Format <String>
        Określa format wyświetlania daty i godziny. Aby uzyskać więcej informacji o formatowaniu dat i godzin, zobacz [DateTime] w bibliotece MSDN.

        Gdy używasz parametru -Format, Get-Date pobiera obiekt String. Aby pobrać obiekt DateTime, użyj parametru -DisplayHint.

        Jeśli data i godzina nie mogą być przeanalizowane na podstawie wartości parametru -Format, Get-Date generuje błąd.

        Wymagane?    false
        Pozycja?    3
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Year <Int32>
        Określa rok wyświetlany. Wprowadź wartość z zakresu od 1 do 9999. Wartość domyślna to rok bieżący.

        Wymagane?    false
        Pozycja?    nazwana
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Month <Int32>
        Określa miesiąc wyświetlany. Wprowadź wartość z zakresu od 1 do 12. Wartość domyślna to miesiąc bieżący.

        Wymagane?    false
        Pozycja?    nazwana
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Day <Int32>
        Określa dzień wyświetlany. Wprowadź wartość z zakresu od 1 do liczby dni w miesiącu. Wartość domyślna to dzień bieżący.

        Wymagane?    false
        Pozycja?    nazwana
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Hour <Int32>
        Określa godzinę wyświetlaną. Wprowadź wartość z zakresu od 0 do 23. Wartość domyślna to godzina bieżąca.

        Wymagane?    false
        Pozycja?    nazwana
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Minute <Int32>
        Określa minuty wyświetlane. Wprowadź wartość z zakresu od 0 do 59. Wartość domyślna to minuta bieżąca.

        Wymagane?    false
        Pozycja?    nazwana
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Second <Int32>
        Określa sekundy wyświetlane. Wprowadź wartość z zakresu od 0 do 59. Wartość domyślna to sekunda bieżąca.

        Wymagane?    false
        Pozycja?    nazwana
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    <CommonParameters>
        To polecenie cmdlet obsługuje następujące parametry wspólne: -Verbose, -Debug,
        -ErrorAction, -ErrorVariable, -WarningAction, -WarningVariable,
        -OutBuffer, -OutVariable i -OutVariable. Aby uzyskać więcej informacji, wpisz,
        "get-help about_commonparameters".

WEJŚCIA
    System.String
        Get-Date może potokowo przekazywać ciągi znaków do parametru -Date.

WYJŚCIA
    System.DateTime lub System.String
        Get-Date zwraca obiekt DateTime lub obiekt String. Gdy używasz parametru
        -DisplayHint, Get-Date zwraca obiekt DateTime, ale wyświetla tylko żądane właściwości.
        Gdy używasz parametru -Format, Get-Date zwraca obiekt String.

PRZYKŁADY
    -------------------------- PRZYKŁAD 1 --------------------------

    C:\PS> Get-Date

    Polecenie to wyświetla bieżącą datę i godzinę. Domyślnie data i godzina są wyświetlane w formacie długim.

    -------------------------- PRZYKŁAD 2 --------------------------

    C:\PS> Get-Date -DisplayHint date

    Polecenie to wyświetla tylko bieżącą datę.

    -------------------------- PRZYKŁAD 3 --------------------------

    C:\PS> Get-Date -Format "yyyyMMdd"

    Polecenie to wyświetla datę w formacie RRRRMMDD.

    -------------------------- PRZYKŁAD 4 --------------------------

    C:\PS> Get-Date -Date "12/31/2007 23:59:59" -DisplayHint time

    Polecenie to wyświetla godzinę określonej daty.

    -------------------------- PRZYKŁAD 5 --------------------------

    C:\PS> Get-Date -Date "01/01/2008" -Year 2009 -Month 12 -Day 31

    Polecenie to pobiera określoną datę (1 stycznia 2008), a następnie zmienia ją na 31 grudnia 2009. Get-Date zastępuje wartości w bieżącym obiekcie DateTime.

    -------------------------- PRZYKŁAD 6 --------------------------

    C:\PS> Get-Date | % {Get-Date -Date $_ -Hour 9 -Minute 30 -Second 0}

    Polecenie to pobiera bieżącą datę i godzinę i zmienia godzinę na 9:30:00.

    -------------------------- PRZYKŁAD 7 --------------------------

    C:\PS> $timestamp = Get-Date -Format o | ForEach-Object {$_ -replace ":", "."}

    Te polecenia konwertują datę i godzinę na znacznik czasu, który można użyć do nazywania plików. Powyższe polecenia konwertują datę i godzinę na format "o" (okrągły), a następnie zastępują dwukropki (:), które są niedozwolone w nazwach plików, kropkami (.).

    Aby uzyskać więcej informacji o formacie "o", zobacz [Standardowe ciągi formatujące datę i godzinę] w bibliotece MSDN.

    -------------------------- PRZYKŁAD 8 --------------------------

    C:\PS> get-date
    Thursday, January 03, 2008 10:12:11 AM

    C:\PS> (get-date).year
    2008

    C:\PS> (get-date).month
    1

    C:\PS> (get-date).day
    3

    Te polecenia pokazują, jak używać właściwości obiektu DateTime zwróconego przez Get-Date.

    -------------------------- PRZYKŁAD 9 --------------------------

    C:\PS> get-date -year 2009 -month 12 -day 31 -hour 23 -minute 59 -second 59
    Thursday, December 31, 2009 11:59:59 PM

    Polecenie to tworzy określoną datę i godzinę. Zmienna środowiskowa $culture określa sposób interpretacji daty.

    Aby uzyskać więcej informacji o zmiennych środowiskowych na potrzeby formatowania dat i godzin, zobacz about_Automatic_Variables.

INFORMACJE DODATKOWE
    Aby uzyskać więcej informacji, wpisz "Get-Help Get-Date -detailed".
    Aby uzyskać informacje techniczne, wpisz "Get-Help Get-Date -full".

    Aby uzyskać pomoc dotyczącą danego polecenia, wpisz "Get-Help Get-Date -online". |
| `-Attachments` | String[] | — | — | 2 | `@()` | Tablica ścieżek plików do załączenia |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura losowości odpowiedzi (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Poziom szczegółowości obrazu |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Tablica definicji funkcji |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Tablica definicji poleceń PowerShell do użycia jako narzędzi |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Tablica nazw poleceń, które nie wymagają potwierdzenia |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Typ zapytania LLM |
| `-Model` | String | — | — | Named | — | Identyfikator modelu lub wzorzec używany do operacji AI |
| `-ApiEndpoint` | String | — | — | Named | — | Adres URL punktu końcowego API dla operacji AI |
| `-ApiKey` | String | — | — | Named | — | Klucz API do uwierzytelnionych operacji AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Wskazuje, że LLM nie obsługuje schematów JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Limit czasu w sekundach na operacje AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ścieżka do bazy danych plików preferencji |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Skopiuj ulepszony tekst do schowka |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | .PARAMETER Nazwa parametru
Krótki opis parametru.

.UŻYCIE
Przykładowe użycie tego polecenia cmdlet.

.OPIS
Opis polecenia cmdlet.

.NOTATKI
Informacje dodatkowe.

.LINK
https://learn.microsoft.com/powershell/module/exchange/connect-exchangeonline?view=exchange-ps |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Wznów od ostatniej rozmowy |
| `-Speak` | SwitchParameter | — | — | Named | — | Włącz syntezę mowy dla odpowiedzi AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Włącz zamianę tekstu na mowę dla odpowiedzi myślowych AI |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Nie przechowuj sesji w pamięci podręcznej sesji |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Zezwól na użycie domyślnych narzędzi AI podczas przetwarzania |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji SI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Przechowuj ustawienia tylko w trwałych preferencjach, nie wpływając na sesję |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura dla losowości odpowiedzi audio (przekazana do LLMQuery) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura odpowiedzi (przekazana do LLMQuery) |
| `-Language` | String | — | — | Named | — | Kod języka lub nazwa do przetworzenia (przekazywana do LLMQuery) |
| `-CpuThreads` | Int32 | — | — | Named | — | Liczba wątków procesora do użycia (przekazywana do LLMQuery) |
| `-SuppressRegex` | String | — | — | Named | — | Wyrażenie regularne do pomijania danych wyjściowych (przekazywane do LLMQuery) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Rozmiar kontekstu audio do przetwarzania (przekazywany do LLMQuery) |
| `-SilenceThreshold` | Double | — | — | Named | — | Próg ciszy dla wykrywania dźwięku (przekazywany do LLMQuery) |
| `-LengthPenalty` | Double | — | — | Named | — | Kara za długość dla generowania sekwencji (przekazywana do LLMQuery) |
| `-EntropyThreshold` | Double | — | — | Named | — | Próg entropii dla filtrowania wyjścia (przekazane do LLMQuery) |
| `-LogProbThreshold` | Double | — | — | Named | — | Próg prawdopodobieństwa logarytmicznego dla filtrowania wyników (przekazywany do LLMQuery) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Brak progu mowy do wykrywania dźwięku (przekazane do LLMQuery) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Wyłącz wyjście mowy (przekazane do LLMQuery) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Wyłącz wyjście mowy dla myśli (przekazane do LLMQuery) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Wyłącz VOX (aktywację głosową) (przekazane do LLMQuery) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Użyj przechwytywania dźwięku z pulpitu (przekazane do LLMQuery) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Wyłącz użycie kontekstu (przekazane do LLMQuery) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Włącz strategię próbkowania z wyszukiwaniem wiązkowym (przekazywane do LLMQuery) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Zwraca tylko odpowiedzi (przekazane do LLMQuery) |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | =============================== ENCORE ===============================

.PARAMETER Path
Określa ścieżkę do pliku. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtr dla typów bloków znaczników (przekazany do LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maksymalna długość wywołania narzędzia (przekazana do LLMQuery) |

## Examples

### Invoke-LLMTextTransformation -Text "Hello, hwo are you todey?" `     -Instructions "Fix spelling errors" -SetClipboard

```powershell
Invoke-LLMTextTransformation -Text "Hello, hwo are you todey?" `
    -Instructions "Fix spelling errors" -SetClipboard
```

### "Time to celerbate!" | Invoke-LLMTextTransformation `     -Instructions "Add celebratory emoticons"

```powershell
"Time to celerbate!" | Invoke-LLMTextTransformation `
    -Instructions "Add celebratory emoticons"
```

### spellcheck "This is a sentance with erors"

```powershell
spellcheck "This is a sentance with erors"
```

## Parameter Details

### `-Text <String>`

> .PARAMETER ConfiguratorWmiNamespace
Określa ścieżkę przestrzeni nazw WMI, której używa konfigurator. Domyślnie jest to root\default. Użyj tego parametru, aby mieć pewność, że polecenie Get-WmiObject i polecenie Invoke-WmiMethod używają zaufanej przestrzeni nazw skonfigurowanej dla konfiguratora.

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

> Pomoc dotycząca polecenia cmdlet Get-Date


---

POMOC DOTYCZĄCA POLECENIA CMDLET Get-Date

---

SKRÓCONY OPIS
    Pobiera bieżącą datę i godzinę.

PEŁNY OPIS
    Polecenie cmdlet Get-Date pobiera bieżącą datę i godzinę lub określoną datę i godzinę. Wyświetla datę i godzinę w formacie Windows PowerShell. Domyślnie data i godzina są wyświetlane w formacie długim.

    Get-Date może zwrócić obiekt DateTime lub obiekt String. Gdy używasz przełącznika -DisplayHint, Get-Date zwraca obiekt DateTime, ale wyświetla tylko żądane właściwości. Gdy używasz parametru -Format, Get-Date zwraca obiekt String.

    Get-Date może używać .NET Framework, aby konwertować ciągi znaków na obiekty DateTime przed ich sformatowaniem. Aby uzyskać więcej informacji, zobacz [DateTime.ParseExact] w bibliotece MSDN (Microsoft Developer Network).

PARAMETRY
    -Date <DateTime>
        Określa datę i godzinę. Domyślnie Get-Date pobiera bieżącą datę i godzinę. Wprowadź datę i godzinę w formacie standardowym dla kultury systemu.

        Na przykład w amerykańskim angielskim:

        Get-Date -Date "1/1/2008 12:30:00"

        Wymagane?    false
        Pozycja?    1
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -DisplayHint <DisplayHintType>
        Określa, które właściwości obiektu DateTime są wyświetlane. Dozwolone wartości to Date, Time lub DateTime.

        Wymagane?    false
        Pozycja?    2
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Format <String>
        Określa format wyświetlania daty i godziny. Aby uzyskać więcej informacji o formatowaniu dat i godzin, zobacz [DateTime] w bibliotece MSDN.

        Gdy używasz parametru -Format, Get-Date pobiera obiekt String. Aby pobrać obiekt DateTime, użyj parametru -DisplayHint.

        Jeśli data i godzina nie mogą być przeanalizowane na podstawie wartości parametru -Format, Get-Date generuje błąd.

        Wymagane?    false
        Pozycja?    3
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Year <Int32>
        Określa rok wyświetlany. Wprowadź wartość z zakresu od 1 do 9999. Wartość domyślna to rok bieżący.

        Wymagane?    false
        Pozycja?    nazwana
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Month <Int32>
        Określa miesiąc wyświetlany. Wprowadź wartość z zakresu od 1 do 12. Wartość domyślna to miesiąc bieżący.

        Wymagane?    false
        Pozycja?    nazwana
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Day <Int32>
        Określa dzień wyświetlany. Wprowadź wartość z zakresu od 1 do liczby dni w miesiącu. Wartość domyślna to dzień bieżący.

        Wymagane?    false
        Pozycja?    nazwana
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Hour <Int32>
        Określa godzinę wyświetlaną. Wprowadź wartość z zakresu od 0 do 23. Wartość domyślna to godzina bieżąca.

        Wymagane?    false
        Pozycja?    nazwana
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Minute <Int32>
        Określa minuty wyświetlane. Wprowadź wartość z zakresu od 0 do 59. Wartość domyślna to minuta bieżąca.

        Wymagane?    false
        Pozycja?    nazwana
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    -Second <Int32>
        Określa sekundy wyświetlane. Wprowadź wartość z zakresu od 0 do 59. Wartość domyślna to sekunda bieżąca.

        Wymagane?    false
        Pozycja?    nazwana
        Wartość domyślna? Brak
        Akceptuje potok? true (PropertyName)
        Akceptuje znaki wieloznaczne? false

    <CommonParameters>
        To polecenie cmdlet obsługuje następujące parametry wspólne: -Verbose, -Debug,
        -ErrorAction, -ErrorVariable, -WarningAction, -WarningVariable,
        -OutBuffer, -OutVariable i -OutVariable. Aby uzyskać więcej informacji, wpisz,
        "get-help about_commonparameters".

WEJŚCIA
    System.String
        Get-Date może potokowo przekazywać ciągi znaków do parametru -Date.

WYJŚCIA
    System.DateTime lub System.String
        Get-Date zwraca obiekt DateTime lub obiekt String. Gdy używasz parametru
        -DisplayHint, Get-Date zwraca obiekt DateTime, ale wyświetla tylko żądane właściwości.
        Gdy używasz parametru -Format, Get-Date zwraca obiekt String.

PRZYKŁADY
    -------------------------- PRZYKŁAD 1 --------------------------

    C:\PS> Get-Date

    Polecenie to wyświetla bieżącą datę i godzinę. Domyślnie data i godzina są wyświetlane w formacie długim.

    -------------------------- PRZYKŁAD 2 --------------------------

    C:\PS> Get-Date -DisplayHint date

    Polecenie to wyświetla tylko bieżącą datę.

    -------------------------- PRZYKŁAD 3 --------------------------

    C:\PS> Get-Date -Format "yyyyMMdd"

    Polecenie to wyświetla datę w formacie RRRRMMDD.

    -------------------------- PRZYKŁAD 4 --------------------------

    C:\PS> Get-Date -Date "12/31/2007 23:59:59" -DisplayHint time

    Polecenie to wyświetla godzinę określonej daty.

    -------------------------- PRZYKŁAD 5 --------------------------

    C:\PS> Get-Date -Date "01/01/2008" -Year 2009 -Month 12 -Day 31

    Polecenie to pobiera określoną datę (1 stycznia 2008), a następnie zmienia ją na 31 grudnia 2009. Get-Date zastępuje wartości w bieżącym obiekcie DateTime.

    -------------------------- PRZYKŁAD 6 --------------------------

    C:\PS> Get-Date | % {Get-Date -Date $_ -Hour 9 -Minute 30 -Second 0}

    Polecenie to pobiera bieżącą datę i godzinę i zmienia godzinę na 9:30:00.

    -------------------------- PRZYKŁAD 7 --------------------------

    C:\PS> $timestamp = Get-Date -Format o | ForEach-Object {$_ -replace ":", "."}

    Te polecenia konwertują datę i godzinę na znacznik czasu, który można użyć do nazywania plików. Powyższe polecenia konwertują datę i godzinę na format "o" (okrągły), a następnie zastępują dwukropki (:), które są niedozwolone w nazwach plików, kropkami (.).

    Aby uzyskać więcej informacji o formacie "o", zobacz [Standardowe ciągi formatujące datę i godzinę] w bibliotece MSDN.

    -------------------------- PRZYKŁAD 8 --------------------------

    C:\PS> get-date
    Thursday, January 03, 2008 10:12:11 AM

    C:\PS> (get-date).year
    2008

    C:\PS> (get-date).month
    1

    C:\PS> (get-date).day
    3

    Te polecenia pokazują, jak używać właściwości obiektu DateTime zwróconego przez Get-Date.

    -------------------------- PRZYKŁAD 9 --------------------------

    C:\PS> get-date -year 2009 -month 12 -day 31 -hour 23 -minute 59 -second 59
    Thursday, December 31, 2009 11:59:59 PM

    Polecenie to tworzy określoną datę i godzinę. Zmienna środowiskowa $culture określa sposób interpretacji daty.

    Aby uzyskać więcej informacji o zmiennych środowiskowych na potrzeby formatowania dat i godzin, zobacz about_Automatic_Variables.

INFORMACJE DODATKOWE
    Aby uzyskać więcej informacji, wpisz "Get-Help Get-Date -detailed".
    Aby uzyskać informacje techniczne, wpisz "Get-Help Get-Date -full".

    Aby uzyskać pomoc dotyczącą danego polecenia, wpisz "Get-Help Get-Date -online".

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `('Check and correct any spelling or grammar ' +
            'errors in the text. Return the corrected text without any ' +
            'additional comments or explanations.')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> Tablica ścieżek plików do załączenia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
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
| **Default value** | `'low'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Tablica definicji funkcji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Tablica definicji poleceń PowerShell do użycia jako narzędzi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Tablica nazw poleceń, które nie wymagają potwierdzenia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Typ zapytania LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'SimpleIntelligence'` |
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

> Skopiuj ulepszony tekst do schowka

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

> Zezwól na użycie domyślnych narzędzi AI podczas przetwarzania

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
### `-AudioTemperature <Double>`

> Temperatura dla losowości odpowiedzi audio (przekazana do LLMQuery)

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

> Temperatura odpowiedzi (przekazana do LLMQuery)

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

> Kod języka lub nazwa do przetworzenia (przekazywana do LLMQuery)

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

> Liczba wątków procesora do użycia (przekazywana do LLMQuery)

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

> Wyrażenie regularne do pomijania danych wyjściowych (przekazywane do LLMQuery)

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

> Rozmiar kontekstu audio do przetwarzania (przekazywany do LLMQuery)

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

> Próg ciszy dla wykrywania dźwięku (przekazywany do LLMQuery)

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

> Kara za długość dla generowania sekwencji (przekazywana do LLMQuery)

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

> Próg entropii dla filtrowania wyjścia (przekazane do LLMQuery)

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

> Próg prawdopodobieństwa logarytmicznego dla filtrowania wyników (przekazywany do LLMQuery)

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

> Brak progu mowy do wykrywania dźwięku (przekazane do LLMQuery)

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

> Wyłącz wyjście mowy (przekazane do LLMQuery)

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

> Wyłącz wyjście mowy dla myśli (przekazane do LLMQuery)

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

> Wyłącz VOX (aktywację głosową) (przekazane do LLMQuery)

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

> Użyj przechwytywania dźwięku z pulpitu (przekazane do LLMQuery)

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

> Wyłącz użycie kontekstu (przekazane do LLMQuery)

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

> Włącz strategię próbkowania z wyszukiwaniem wiązkowym (przekazywane do LLMQuery)

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

> Zwraca tylko odpowiedzi (przekazane do LLMQuery)

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

> =============================== ENCORE ===============================

.PARAMETER Path
Określa ścieżkę do pliku.

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

> Filtr dla typów bloków znaczników (przekazany do LLMQuery)

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

> Maksymalna długość wywołania narzędzia (przekazana do LLMQuery)

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
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Update-AllImageMetaData.md)
