# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate`

## Synopsis

> Tłumaczy tekst na inny język za pomocą AI.

## Description

Ta funkcja tłumaczy wprowadzony tekst na określony język docelowy przy użyciu modeli AI. Może przyjmować dane wejściowe bezpośrednio przez parametry, z potoku lub ze schowka systemowego. Funkcja zachowuje formatowanie i styl podczas tłumaczenia.

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Tutaj znajdziesz pomoc dla polecenia cmdlet programu PowerShell. Te tematy zawierają informacje na temat użycia poleceń cmdlet.

Aby uzyskać listę poleceń cmdlet dostępnych w tym programie PowerShell, użyj polecenia „Get-Command -Module Diceware”. |
| `-Instructions` | String | — | — | 1 | — | Połącz to z innymi węzłami przewodowymi lub bezprzewodowymi. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Tablica ścieżek plików do załączenia |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura losowości odpowiedzi (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Poziom szczegółowości obrazu |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Tablica definicji funkcji |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Tablica definicji poleceń PowerShell do użycia jako narzędzi |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Tablica nazw poleceń, które nie wymagają potwierdzenia |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | Typ zapytania LLM |
| `-Model` | String | — | — | Named | — | Identyfikator modelu lub wzorzec używany do operacji AI |
| `-ApiEndpoint` | String | — | — | Named | — | Adres URL punktu końcowego API dla operacji AI |
| `-ApiKey` | String | — | — | Named | — | Klucz API do uwierzytelnionych operacji AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Wskazuje, że LLM nie obsługuje schematów JSON |
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
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura dla losowości odpowiedzi audio (przekazana do LLM) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura dla generowania odpowiedzi (przekazywana do LLM) |
| `-Language` | String | — | — | Named | — | pl-PL |
| `-CpuThreads` | Int32 | — | — | Named | — | Liczba wątków procesora do użycia (przekazane do LLM) |
| `-SuppressRegex` | String | — | — | Named | — | Wyrażenie regularne do wyciszenia danych wyjściowych (przekazywane do LLM) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Rozmiar kontekstu audio do przetwarzania (przekazywany do LLM) |
| `-SilenceThreshold` | Double | — | — | Named | — | Próg ciszy do wykrywania dźwięku (przekazywany do LLM) |
| `-LengthPenalty` | Double | — | — | Named | — | Kara za długość sekwencji generacji (przekazana do LLM) |
| `-EntropyThreshold` | Double | — | — | Named | — | Próg entropii dla filtrowania wyjścia (przekazywany do LLM) |
| `-LogProbThreshold` | Double | — | — | Named | — | Próg prawdopodobieństwa logarytmicznego dla filtrowania wyjścia (przekazywany do LLM) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Brak progu mowy dla wykrywania dźwięku (przekazywane do LLM) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Wyłącz wyjście mowy (przekazane do LLM) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Wyłącz wyjście mowy dla myśli (przekazane do LLM) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Wyłącz VOX (aktywację głosową) (przekazane do LLM) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Użyj przechwytywania dźwięku pulpitu (przekazanego do LLM) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Wyłącz użycie kontekstu (przekazane do LLM) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Włącz strategię próbkowania z przeszukiwaniem wiązkowym (przekazywana do modelu językowego) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Poniżej znajduje się przetłumaczony tekst pomocy dla poleceń cmdlet PowerShell.

Get-ChildItem

.POMOC
    Pobiera elementy i elementy podrzędne z jednej lub więcej określonych lokalizacji.

.SYNTAX
    Get-ChildItem [[-Path] <string[]>] [[-Filter] <string>] [-Exclude <string[]>] [-Force] [-Include <string[]>] [-Name] [-Recurse] [-UseTransaction] [<CommonParameters>]

    Get-ChildItem [[-Filter] <string>] [-Exclude <string[]>] [-Force] [-Include <string[]>] [-Name] [-Recurse] [-UseTransaction] -LiteralPath <string[]> [<CommonParameters>]

.OPIS
    Polecenie cmdlet Get-ChildItem pobiera elementy w jednej lub więcej określonych lokalizacjach.
    W przypadku wystąpienia błędu w trakcie wykonywania w wielu lokalizacjach, polecenie cmdlet kontynuuje pracę i przedstawia komunikaty o błędach.

    Polecenie cmdlet Get-ChildItem może również pobierać elementy podrzędne przy użyciu parametru -Recurse, który cyklicznie przetwarza elementy podrzędne kontenera.

.PARAMETRY
    -Exclude <string[]>
        Pomija określone elementy. Wartość tego parametru kwalifikuje parametr Path. Wprowadź element ścieżki lub wzorzec, taki jak "*.txt". Obsługiwane są symbole wieloznaczne.

    -Filter <string>
        Określa filtr w formacie lub języku dostawcy. Wartość tego parametru kwalifikuje parametr Path.
        Składnia filtru, w tym użycie symboli wieloznacznych, zależy od dostawcy.
        Filtry są bardziej wydajne niż inne parametry, ponieważ dostawca stosuje je podczas pobierania obiektów, zamiast polecenia cmdlet filtrującego obiekty po ich pobraniu.

    -Force
        Wymusza wykonanie polecenia cmdlet bez pytania o potwierdzenie.
        Implementacja różni się w zależności od dostawcy. Więcej szczegółów można znaleźć w about_Providers.

    -Include <string[]>
        Pobiera tylko określone elementy. Wartość tego parametru kwalifikuje parametr Path. Wprowadź element ścieżki lub wzorzec, taki jak "*.txt". Obsługiwane są symbole wieloznaczne.

    -LiteralPath <string[]>
        Określa ścieżkę do jednej lub więcej lokalizacji. Wartość LiteralPath jest używana dokładnie tak, jak została wpisana. Żadne znaki nie są interpretowane jako symbole wieloznaczne. Jeśli ścieżka zawiera znaki ucieczki, należy ująć ją w pojedynczy cudzysłów. Pojedynczy cudzysłów informuje program Windows PowerShell, aby nie interpretował żadnych znaków jako znaków ucieczki.

    -Name
        Pobiera tylko nazwy elementów w lokalizacjach. Jeśli parametr ten jest używany, polecenie cmdlet pobiera tylko nazwy elementów (jako ciągi znaków). Znacząco poprawia to wydajność.

    -Path <string[]>
        Określa ścieżkę do jednej lub więcej lokalizacji. Symbole wieloznaczne są dozwolone. Domyślną lokalizacją jest bieżący katalog (.).

    -Recurse
        Pobiera elementy z określonych lokalizacji i wszystkie elementy podrzędne.

    -UseTransaction [<SwitchParameter>]
        Uwzględnia polecenie w aktywnej transakcji. Ten parametr jest dostępny tylko wtedy, gdy transakcja jest w toku. Więcej informacji można znaleźć w about_Transactions.

    <CommonParameters>
        To polecenie cmdlet obsługuje następujące typowe parametry: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable i OutVariable. Więcej informacji można znaleźć w about_CommonParameters.

.PRZYKŁADY
    -------------------------- PRZYKŁAD 1 --------------------------

    C:\PS>Get-ChildItem

    Opis
    -----------
    To polecenie pobiera elementy podrzędne bieżącej lokalizacji. Jeśli lokalizacją jest system plików, polecenie pobiera wszystkie pliki i katalogi.

    -------------------------- PRZYKŁAD 2 --------------------------

    C:\PS>Get-ChildItem -Name

    Opis
    -----------
    To polecenie pobiera tylko nazwy elementów w bieżącym katalogu.

    -------------------------- PRZYKŁAD 3 --------------------------

    C:\PS>Get-ChildItem -Recurse

    Opis
    -----------
    To polecenie pobiera elementy z bieżącego katalogu i wszystkich jego podkatalogów.

    -------------------------- PRZYKŁAD 4 --------------------------

    C:\PS>Get-ChildItem -Path C:\Windows\System32 -Include *.dll -Recurse -Force

    Opis
    -----------n    To polecenie pobiera wszystkie pliki DLL w katalogu C:\Windows\System32 i jego podkatalogach. Parametr Force dodaje pliki ukryte i systemowe.

    -------------------------- PRZYKŁAD 5 --------------------------

    C:\PS>Get-ChildItem -Path C:\Windows\System32\*.dll -Recurse -Force

    Opis
    -----------
    To polecenie pobiera wszystkie pliki DLL w katalogu C:\Windows\System32 i jego podkatalogach. W przeciwieństwie do poprzedniego przykładu, użyto symbolu wieloznacznego w ścieżce, co jest równoważne użyciu parametru -Include.

    -------------------------- PRZYKŁAD 6 --------------------------

    C:\PS>Get-ChildItem -Path C:\* -Include *.txt -Exclude A*

    Opis
    -----------
    To polecenie pobiera wszystkie pliki tekstowe z dysku C:, z wyjątkiem tych, których nazwa zaczyna się od litery A.

    -------------------------- PRZYKŁAD 7 --------------------------

    C:\PS>Get-ChildItem -Path C:\Windows -Recurse -Force -ErrorAction SilentlyContinue | Where-Object {$_.Attributes -match "Hidden"}

    Opis
    -----------
    To polecenie pobiera wszystkie ukryte elementy w katalogu C:\Windows i jego podkatalogach. Używa parametru ErrorAction SilentlyContinue, aby pominąć błędy spowodowane brakiem dostępu do niektórych katalogów.

.POWIĄZANE LINKI
    Online version: http://go.microsoft.com/fwlink/?LinkID=113308
    Get-Item
    Get-ChildItemProvider
    about_Providers |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .
POLECENIE
Get-ADObject

SYNOPSIS
Pobiera obiekt usługi Active Directory.

SKŁADNIA
Get-ADObject [-AuthType <ADAuthType>] [-Credential <PSCredential>] -Filter <String> [-IncludeDeletedObjects] [-Properties <String[]>] [-ResultPageSize <Int32>] [-ResultSetSize <Int32>] [-SearchBase <String>] [-SearchScope <ADSearchScope>] [-Server <String>] [<CommonParameters>]

Get-ADObject [-AuthType <ADAuthType>] [-Credential <PSCredential>] [-Identity] <ADObject> [-IncludeDeletedObjects] [-Properties <String[]>] [-Server <String>] [<CommonParameters>]

Get-ADObject [-AuthType <ADAuthType>] [-Credential <PSCredential>] -LDAPFilter <String> [-IncludeDeletedObjects] [-Properties <String[]>] [-ResultPageSize <Int32>] [-ResultSetSize <Int32>] [-SearchBase <String>] [-SearchScope <ADSearchScope>] [-Server <String>] [<CommonParameters>]

OPIS
Polecenie cmdlet Get-ADObject pobiera obiekt lub obiekty usługi Active Directory. Można określić liczbę obiektów do pobrania, używając parametru Identity, parametru Filter lub parametru LDAPFilter.

Parametr Identity określa obiekt usługi Active Directory do pobrania. Można zidentyfikować obiekt do pobrania według jego wyróżniającej nazwy (DN) lub identyfikatora GUID. Można również przekazać obiekt przez potok do parametru Identity. Na przykład można użyć polecenia cmdlet Get-ADUser, aby pobrać obiekt użytkownika, a następnie przekazać go przez potok do Get-ADObject.

Parametru Filter należy używać do pobierania obiektów usługi Active Directory. Aby użyć tego parametru, należy utworzyć zapytanie przy użyciu języka wyrażeń filtrów programu PowerShell dla usługi Active Directory. Aby uzyskać informacje o języku filtrów, zobacz about_ActiveDirectory_Filter. W przypadku zamiany niektórych filtrów na polecenia zapytań może być bardziej wydajne użycie parametru LDAPFilter.

Parametru Filter należy używać do pobierania obiektów usługi Active Directory. Aby użyć tego parametru, należy utworzyć zapytanie przy użyciu języka wyrażeń filtrów programu PowerShell dla usługi Active Directory. Aby uzyskać informacje o języku filtrów, zobacz about_ActiveDirectory_Filter. W przypadku zamiany niektórych filtrów na polecenia zapytań może być bardziej wydajne użycie parametru LDAPFilter.

Parametry
- AuthType <ADAuthType>
Określa metodę uwierzytelniania, która ma być używana. Dopuszczalne wartości dla tego parametru to:

Negotiate (0) lub Podstawowe (1)

Wartością domyślną jest Negotiate.

Jeśli jako parametr zostanie podana wartość liczby całkowitej, należy użyć wartości 0 dla Negotiate i 1 dla Basic.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? Negotiate
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- Credential <PSCredential>
Poświadczenia konta użytkownika, które ma być użyte do wykonania tego zadania. Domyślnie są używane poświadczenia aktualnie zalogowanego użytkownika, chyba że polecenie cmdlet jest uruchamiane z dysku dostawcy usługi Active Directory programu PowerShell. Domyślnym zachowaniem polecenia cmdlet, gdy jest uruchamiane z dysku Active Directory, jest użycie konta komputera bieżącego.

Aby określić to konto użytkownika, wprowadź nazwę użytkownika w jednym z następujących formatów:

"Nazwa Użytkownika" (DOMENA\Użytkownik)
"Uzytkownik@NazwaDomeny.microsoft.com"
Lub obiekt PSCredential, taki jak zwrócony przez polecenie cmdlet Get-Credential.

Jeśli zostanie podana nazwa użytkownika, program PowerShell wyświetli monit o podanie hasła.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- Filter <String>
Określa ciąg formatowany w języku wyrażeń filtrów programu PowerShell dla usługi Active Directory. Aby uzyskać szczegółowe informacje o języku filtrów, zobacz about_ActiveDirectory_Filter.

Syntaksja tego parametru zależy od nazwy właściwości i na przykładzie wyszukiwania według ciągu, identyfikatora lub wartości atrybutu. Aby uzyskać więcej informacji o parametrze Filter, zobacz Get-Help about_ActiveDirectory_Filter.

Obsługiwane typy wartości dla atrybutów wyszukiwania to ciągi znaków, liczby całkowite lub wartości referencyjne. Aby uzyskać więcej informacji, zobacz about_ActiveDirectory_Filter.

Następujący filtr pobiera wszystkie użytkowników z biurem w Redmond (właściwość 'office'):

Get-ADObject -Filter 'office -eq "Redmond"'

Czy jest to wymagane? true
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- Identity <ADObject>
Określa obiekt usługi Active Directory, który ma być pobrany. Określ wartość w następujących formatach:

Wyróżniająca nazwa (DN)

Przykład: CN=Kowalski,CN=Użytkownicy,DC=Contoso,DC=com

Identyfikator GUID

Przykład: 599c3d2e-f72d-4d20-8a88-030d99495f20

Polecenie cmdlet wyszukuje obiekt o nazwie DistinguishedName lub GUID, która jest określona. Ponadto można przekazać obiekt przez potok do parametru Identity.

Czy jest to wymagane? true
Pozycja? 1
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? true (ByValue, ByPropertyName)
Czy akceptuje symbole wieloznaczne? false

- IncludeDeletedObjects [<SwitchParameter>]
Określa, że polecenie cmdlet powinno pobierać usunięte obiekty. Aby użyć tego parametru, należy użyć parametru Server z kontrolerem domeny dla lasu, w którym znajduje się kosz usługi Active Directory.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? false
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- LDAPFilter <String>
Określa filtr LDAP używany do pobierania obiektów usługi Active Directory. Na przykład następujący filtr LDAP pobiera wszystkich użytkowników z biurem w Redmond:

Get-ADObject -LDAPFilter '(office=Redmond)'

Czy jest to wymagane? true
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- Properties <String[]>
Określa właściwości obiektu, które mają być pobrane. Użyj tego parametru, aby pobrać właściwości, które nie są domyślnie zawarte.

Dopuszczalne wartości dla tego parametru to:

* (gwiazdka) — pobiera wszystkie właściwości obiektu

Ciąg — nazwa właściwości, np. DistinguishedName

Można określić wiele właściwości, oddzielając je przecinkami.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- ResultPageSize <Int32>
Określa liczbę obiektów na stronie wyniku zapytania. Wartość domyślna to 256 obiektów.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? 256
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- ResultSetSize <Int32>
Określa maksymalną liczbę obiektów, które mają być zwrócone dla polecenia cmdlet. Aby zwrócić wszystkie obiekty pasujące do filtra, użyj wartości $null. Aby zatrzymać generowanie obiektów po osiągnięciu limitu, użyj opcji polecenia cmdlet.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- SearchBase <String>
Określa ścieżkę jednostki organizacyjnej (OU), w której ma być przeprowadzone wyszukiwanie.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- SearchScope <ADSearchScope>
Określa zakres wyszukiwania, co pozwala ograniczyć wyszukiwanie do jednego poziomu, określonego zakresu lub pełnego poddrzewa. Dopuszczalne wartości dla tego parametru to:

Base (0) — przeszukuje tylko obiekt bazowy
OneLevel (1) — przeszukuje obiekt bazowy i jego bezpośrednie obiekty podrzędne
Subtree (2) — przeszukuje obiekt bazowy i wszystkie jego obiekty zależne (domyślne)

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? Subtree
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- Server <String>
Określa nazwę kontrolera domeny, z którym ma zostać nawiązane połączenie. Można podać nazwę hosta lub w pełni kwalifikowaną nazwę domeny (FQDN).

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

<CommonParameters>
To polecenie cmdlet obsługuje następujące parametry: Verbose, Debug, ErrorAction, WarningAction, InformationAction, ErrorVariable, WarningVariable, InformationVariable, OutVariable, OutBuffer, PipelineVariable i Suspend. Aby uzyskać więcej informacji, zobacz about_CommonParameters.

DANE WEJŚCIOWE
None lub obiekt ADObject
Obiekt ADObject jest odbierany przez potok.

DANE WYJŚCIOWE
Microsoft.ActiveDirectory.Management.ADObject
Zwraca jeden lub więcej obiektów ADObject.

UWAGI
Aby użyć tego polecenia cmdlet z modułem Active Directory, należy uruchomić program Windows PowerShell z podwyższonymi uprawnieniami (Uruchom jako administrator).

PRZYKŁAD 1
PS C:\> Get-ADObject -Filter 'ObjectClass -eq "computer"'

Opis
---
To polecenie pobiera wszystkie obiekty komputerów z katalogu.

PRZYKŁAD 2
PS C:\> Get-ADObject -Filter {ObjectClass -eq "user" -and City -eq "Redmond"} -Properties City

Opis
---
To polecenie pobiera wszystkich użytkowników z biurem w Redmond.

PRZYKŁAD 3
PS C:\> Get-ADObject -Identity 'CN=MyObject,DC=Contoso,DC=com' -Properties CanonicalName,DisplayName

Opis
---
To polecenie pobiera obiekt o wyróżniającej nazwie 'CN=MyObject,DC=Contoso,DC=com' oraz właściwości CanonicalName i DisplayName.

PRZYKŁAD 4
PS C:\> Get-ADObject -Filter 'ObjectGUID -eq "617f2a59-2206-4cf9-8443-75e136c3d055"'

Opis
---
To polecenie pobiera obiekt o identyfikatorze GUID '617f2a59-2206-4cf9-8443-75e136c3d055'.

PRZYKŁAD 5
PS C:\> Get-ADObject -LDAPFilter '(name=*Kowalski*)' -SearchBase 'DC=Contoso,DC=com'

Opis
---
To polecenie pobiera wszystkie obiekty zawierające w nazwie 'Kowalski' w domenie Contoso.

PRZYKŁAD 6
PS C:\> Get-ADObject -IncludeDeletedObjects -Server 'DC1,Contoso,com' -Filter 'ObjectClass -eq "user" -and Name -eq "KowalskiJan"'

Opis
---
To polecenie pobiera usuniętego użytkownika o nazwie 'KowalskiJan' z kontrolera domeny 'DC1,Contoso,com'. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtr dla typów bloków znaczników (przekazywanych do LLM) |
| `-NoCache` | SwitchParameter | — | — | Named | — | The PSModuleDiscoveryAutoDiscoveryLevel property indicates the level of automatic discovery of modules. The default value is 3. |
| `-ClearCache` | SwitchParameter | — | — | Named | — | Wyczyść cały pamięć podręczną tłumaczeń dla wszystkich języków |

## Examples

### Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"

```powershell
Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"
```

### "Bonjour" | translate -Language "English"

```powershell
"Bonjour" | translate -Language "English"
```

## Parameter Details

### `-Text <String>`

> Tutaj znajdziesz pomoc dla polecenia cmdlet programu PowerShell. Te tematy zawierają informacje na temat użycia poleceń cmdlet.

Aby uzyskać listę poleceń cmdlet dostępnych w tym programie PowerShell, użyj polecenia „Get-Command -Module Diceware”.

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

> Połącz to z innymi węzłami przewodowymi lub bezprzewodowymi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
### `-LLMType <String>`

> Typ zapytania LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'TextTranslation'` |
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

> Temperatura dla losowości odpowiedzi audio (przekazana do LLM)

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

> Temperatura dla generowania odpowiedzi (przekazywana do LLM)

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

> pl-PL

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

> Liczba wątków procesora do użycia (przekazane do LLM)

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

> Wyrażenie regularne do wyciszenia danych wyjściowych (przekazywane do LLM)

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

> Rozmiar kontekstu audio do przetwarzania (przekazywany do LLM)

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

> Próg ciszy do wykrywania dźwięku (przekazywany do LLM)

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

> Kara za długość sekwencji generacji (przekazana do LLM)

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

> Próg entropii dla filtrowania wyjścia (przekazywany do LLM)

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

> Próg prawdopodobieństwa logarytmicznego dla filtrowania wyjścia (przekazywany do LLM)

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

> Brak progu mowy dla wykrywania dźwięku (przekazywane do LLM)

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

> Wyłącz wyjście mowy (przekazane do LLM)

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

> Wyłącz wyjście mowy dla myśli (przekazane do LLM)

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

> Wyłącz VOX (aktywację głosową) (przekazane do LLM)

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

> Użyj przechwytywania dźwięku pulpitu (przekazanego do LLM)

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

> Wyłącz użycie kontekstu (przekazane do LLM)

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

> Włącz strategię próbkowania z przeszukiwaniem wiązkowym (przekazywana do modelu językowego)

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

> Poniżej znajduje się przetłumaczony tekst pomocy dla poleceń cmdlet PowerShell.

Get-ChildItem

.POMOC
    Pobiera elementy i elementy podrzędne z jednej lub więcej określonych lokalizacji.

.SYNTAX
    Get-ChildItem [[-Path] <string[]>] [[-Filter] <string>] [-Exclude <string[]>] [-Force] [-Include <string[]>] [-Name] [-Recurse] [-UseTransaction] [<CommonParameters>]

    Get-ChildItem [[-Filter] <string>] [-Exclude <string[]>] [-Force] [-Include <string[]>] [-Name] [-Recurse] [-UseTransaction] -LiteralPath <string[]> [<CommonParameters>]

.OPIS
    Polecenie cmdlet Get-ChildItem pobiera elementy w jednej lub więcej określonych lokalizacjach.
    W przypadku wystąpienia błędu w trakcie wykonywania w wielu lokalizacjach, polecenie cmdlet kontynuuje pracę i przedstawia komunikaty o błędach.

    Polecenie cmdlet Get-ChildItem może również pobierać elementy podrzędne przy użyciu parametru -Recurse, który cyklicznie przetwarza elementy podrzędne kontenera.

.PARAMETRY
    -Exclude <string[]>
        Pomija określone elementy. Wartość tego parametru kwalifikuje parametr Path. Wprowadź element ścieżki lub wzorzec, taki jak "*.txt". Obsługiwane są symbole wieloznaczne.

    -Filter <string>
        Określa filtr w formacie lub języku dostawcy. Wartość tego parametru kwalifikuje parametr Path.
        Składnia filtru, w tym użycie symboli wieloznacznych, zależy od dostawcy.
        Filtry są bardziej wydajne niż inne parametry, ponieważ dostawca stosuje je podczas pobierania obiektów, zamiast polecenia cmdlet filtrującego obiekty po ich pobraniu.

    -Force
        Wymusza wykonanie polecenia cmdlet bez pytania o potwierdzenie.
        Implementacja różni się w zależności od dostawcy. Więcej szczegółów można znaleźć w about_Providers.

    -Include <string[]>
        Pobiera tylko określone elementy. Wartość tego parametru kwalifikuje parametr Path. Wprowadź element ścieżki lub wzorzec, taki jak "*.txt". Obsługiwane są symbole wieloznaczne.

    -LiteralPath <string[]>
        Określa ścieżkę do jednej lub więcej lokalizacji. Wartość LiteralPath jest używana dokładnie tak, jak została wpisana. Żadne znaki nie są interpretowane jako symbole wieloznaczne. Jeśli ścieżka zawiera znaki ucieczki, należy ująć ją w pojedynczy cudzysłów. Pojedynczy cudzysłów informuje program Windows PowerShell, aby nie interpretował żadnych znaków jako znaków ucieczki.

    -Name
        Pobiera tylko nazwy elementów w lokalizacjach. Jeśli parametr ten jest używany, polecenie cmdlet pobiera tylko nazwy elementów (jako ciągi znaków). Znacząco poprawia to wydajność.

    -Path <string[]>
        Określa ścieżkę do jednej lub więcej lokalizacji. Symbole wieloznaczne są dozwolone. Domyślną lokalizacją jest bieżący katalog (.).

    -Recurse
        Pobiera elementy z określonych lokalizacji i wszystkie elementy podrzędne.

    -UseTransaction [<SwitchParameter>]
        Uwzględnia polecenie w aktywnej transakcji. Ten parametr jest dostępny tylko wtedy, gdy transakcja jest w toku. Więcej informacji można znaleźć w about_Transactions.

    <CommonParameters>
        To polecenie cmdlet obsługuje następujące typowe parametry: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable i OutVariable. Więcej informacji można znaleźć w about_CommonParameters.

.PRZYKŁADY
    -------------------------- PRZYKŁAD 1 --------------------------

    C:\PS>Get-ChildItem

    Opis
    -----------
    To polecenie pobiera elementy podrzędne bieżącej lokalizacji. Jeśli lokalizacją jest system plików, polecenie pobiera wszystkie pliki i katalogi.

    -------------------------- PRZYKŁAD 2 --------------------------

    C:\PS>Get-ChildItem -Name

    Opis
    -----------
    To polecenie pobiera tylko nazwy elementów w bieżącym katalogu.

    -------------------------- PRZYKŁAD 3 --------------------------

    C:\PS>Get-ChildItem -Recurse

    Opis
    -----------
    To polecenie pobiera elementy z bieżącego katalogu i wszystkich jego podkatalogów.

    -------------------------- PRZYKŁAD 4 --------------------------

    C:\PS>Get-ChildItem -Path C:\Windows\System32 -Include *.dll -Recurse -Force

    Opis
    -----------n    To polecenie pobiera wszystkie pliki DLL w katalogu C:\Windows\System32 i jego podkatalogach. Parametr Force dodaje pliki ukryte i systemowe.

    -------------------------- PRZYKŁAD 5 --------------------------

    C:\PS>Get-ChildItem -Path C:\Windows\System32\*.dll -Recurse -Force

    Opis
    -----------
    To polecenie pobiera wszystkie pliki DLL w katalogu C:\Windows\System32 i jego podkatalogach. W przeciwieństwie do poprzedniego przykładu, użyto symbolu wieloznacznego w ścieżce, co jest równoważne użyciu parametru -Include.

    -------------------------- PRZYKŁAD 6 --------------------------

    C:\PS>Get-ChildItem -Path C:\* -Include *.txt -Exclude A*

    Opis
    -----------
    To polecenie pobiera wszystkie pliki tekstowe z dysku C:, z wyjątkiem tych, których nazwa zaczyna się od litery A.

    -------------------------- PRZYKŁAD 7 --------------------------

    C:\PS>Get-ChildItem -Path C:\Windows -Recurse -Force -ErrorAction SilentlyContinue | Where-Object {$_.Attributes -match "Hidden"}

    Opis
    -----------
    To polecenie pobiera wszystkie ukryte elementy w katalogu C:\Windows i jego podkatalogach. Używa parametru ErrorAction SilentlyContinue, aby pominąć błędy spowodowane brakiem dostępu do niektórych katalogów.

.POWIĄZANE LINKI
    Online version: http://go.microsoft.com/fwlink/?LinkID=113308
    Get-Item
    Get-ChildItemProvider
    about_Providers

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

> .
POLECENIE
Get-ADObject

SYNOPSIS
Pobiera obiekt usługi Active Directory.

SKŁADNIA
Get-ADObject [-AuthType <ADAuthType>] [-Credential <PSCredential>] -Filter <String> [-IncludeDeletedObjects] [-Properties <String[]>] [-ResultPageSize <Int32>] [-ResultSetSize <Int32>] [-SearchBase <String>] [-SearchScope <ADSearchScope>] [-Server <String>] [<CommonParameters>]

Get-ADObject [-AuthType <ADAuthType>] [-Credential <PSCredential>] [-Identity] <ADObject> [-IncludeDeletedObjects] [-Properties <String[]>] [-Server <String>] [<CommonParameters>]

Get-ADObject [-AuthType <ADAuthType>] [-Credential <PSCredential>] -LDAPFilter <String> [-IncludeDeletedObjects] [-Properties <String[]>] [-ResultPageSize <Int32>] [-ResultSetSize <Int32>] [-SearchBase <String>] [-SearchScope <ADSearchScope>] [-Server <String>] [<CommonParameters>]

OPIS
Polecenie cmdlet Get-ADObject pobiera obiekt lub obiekty usługi Active Directory. Można określić liczbę obiektów do pobrania, używając parametru Identity, parametru Filter lub parametru LDAPFilter.

Parametr Identity określa obiekt usługi Active Directory do pobrania. Można zidentyfikować obiekt do pobrania według jego wyróżniającej nazwy (DN) lub identyfikatora GUID. Można również przekazać obiekt przez potok do parametru Identity. Na przykład można użyć polecenia cmdlet Get-ADUser, aby pobrać obiekt użytkownika, a następnie przekazać go przez potok do Get-ADObject.

Parametru Filter należy używać do pobierania obiektów usługi Active Directory. Aby użyć tego parametru, należy utworzyć zapytanie przy użyciu języka wyrażeń filtrów programu PowerShell dla usługi Active Directory. Aby uzyskać informacje o języku filtrów, zobacz about_ActiveDirectory_Filter. W przypadku zamiany niektórych filtrów na polecenia zapytań może być bardziej wydajne użycie parametru LDAPFilter.

Parametru Filter należy używać do pobierania obiektów usługi Active Directory. Aby użyć tego parametru, należy utworzyć zapytanie przy użyciu języka wyrażeń filtrów programu PowerShell dla usługi Active Directory. Aby uzyskać informacje o języku filtrów, zobacz about_ActiveDirectory_Filter. W przypadku zamiany niektórych filtrów na polecenia zapytań może być bardziej wydajne użycie parametru LDAPFilter.

Parametry
- AuthType <ADAuthType>
Określa metodę uwierzytelniania, która ma być używana. Dopuszczalne wartości dla tego parametru to:

Negotiate (0) lub Podstawowe (1)

Wartością domyślną jest Negotiate.

Jeśli jako parametr zostanie podana wartość liczby całkowitej, należy użyć wartości 0 dla Negotiate i 1 dla Basic.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? Negotiate
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- Credential <PSCredential>
Poświadczenia konta użytkownika, które ma być użyte do wykonania tego zadania. Domyślnie są używane poświadczenia aktualnie zalogowanego użytkownika, chyba że polecenie cmdlet jest uruchamiane z dysku dostawcy usługi Active Directory programu PowerShell. Domyślnym zachowaniem polecenia cmdlet, gdy jest uruchamiane z dysku Active Directory, jest użycie konta komputera bieżącego.

Aby określić to konto użytkownika, wprowadź nazwę użytkownika w jednym z następujących formatów:

"Nazwa Użytkownika" (DOMENA\Użytkownik)
"Uzytkownik@NazwaDomeny.microsoft.com"
Lub obiekt PSCredential, taki jak zwrócony przez polecenie cmdlet Get-Credential.

Jeśli zostanie podana nazwa użytkownika, program PowerShell wyświetli monit o podanie hasła.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- Filter <String>
Określa ciąg formatowany w języku wyrażeń filtrów programu PowerShell dla usługi Active Directory. Aby uzyskać szczegółowe informacje o języku filtrów, zobacz about_ActiveDirectory_Filter.

Syntaksja tego parametru zależy od nazwy właściwości i na przykładzie wyszukiwania według ciągu, identyfikatora lub wartości atrybutu. Aby uzyskać więcej informacji o parametrze Filter, zobacz Get-Help about_ActiveDirectory_Filter.

Obsługiwane typy wartości dla atrybutów wyszukiwania to ciągi znaków, liczby całkowite lub wartości referencyjne. Aby uzyskać więcej informacji, zobacz about_ActiveDirectory_Filter.

Następujący filtr pobiera wszystkie użytkowników z biurem w Redmond (właściwość 'office'):

Get-ADObject -Filter 'office -eq "Redmond"'

Czy jest to wymagane? true
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- Identity <ADObject>
Określa obiekt usługi Active Directory, który ma być pobrany. Określ wartość w następujących formatach:

Wyróżniająca nazwa (DN)

Przykład: CN=Kowalski,CN=Użytkownicy,DC=Contoso,DC=com

Identyfikator GUID

Przykład: 599c3d2e-f72d-4d20-8a88-030d99495f20

Polecenie cmdlet wyszukuje obiekt o nazwie DistinguishedName lub GUID, która jest określona. Ponadto można przekazać obiekt przez potok do parametru Identity.

Czy jest to wymagane? true
Pozycja? 1
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? true (ByValue, ByPropertyName)
Czy akceptuje symbole wieloznaczne? false

- IncludeDeletedObjects [<SwitchParameter>]
Określa, że polecenie cmdlet powinno pobierać usunięte obiekty. Aby użyć tego parametru, należy użyć parametru Server z kontrolerem domeny dla lasu, w którym znajduje się kosz usługi Active Directory.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? false
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- LDAPFilter <String>
Określa filtr LDAP używany do pobierania obiektów usługi Active Directory. Na przykład następujący filtr LDAP pobiera wszystkich użytkowników z biurem w Redmond:

Get-ADObject -LDAPFilter '(office=Redmond)'

Czy jest to wymagane? true
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- Properties <String[]>
Określa właściwości obiektu, które mają być pobrane. Użyj tego parametru, aby pobrać właściwości, które nie są domyślnie zawarte.

Dopuszczalne wartości dla tego parametru to:

* (gwiazdka) — pobiera wszystkie właściwości obiektu

Ciąg — nazwa właściwości, np. DistinguishedName

Można określić wiele właściwości, oddzielając je przecinkami.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- ResultPageSize <Int32>
Określa liczbę obiektów na stronie wyniku zapytania. Wartość domyślna to 256 obiektów.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? 256
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- ResultSetSize <Int32>
Określa maksymalną liczbę obiektów, które mają być zwrócone dla polecenia cmdlet. Aby zwrócić wszystkie obiekty pasujące do filtra, użyj wartości $null. Aby zatrzymać generowanie obiektów po osiągnięciu limitu, użyj opcji polecenia cmdlet.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- SearchBase <String>
Określa ścieżkę jednostki organizacyjnej (OU), w której ma być przeprowadzone wyszukiwanie.

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- SearchScope <ADSearchScope>
Określa zakres wyszukiwania, co pozwala ograniczyć wyszukiwanie do jednego poziomu, określonego zakresu lub pełnego poddrzewa. Dopuszczalne wartości dla tego parametru to:

Base (0) — przeszukuje tylko obiekt bazowy
OneLevel (1) — przeszukuje obiekt bazowy i jego bezpośrednie obiekty podrzędne
Subtree (2) — przeszukuje obiekt bazowy i wszystkie jego obiekty zależne (domyślne)

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? Subtree
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

- Server <String>
Określa nazwę kontrolera domeny, z którym ma zostać nawiązane połączenie. Można podać nazwę hosta lub w pełni kwalifikowaną nazwę domeny (FQDN).

Czy jest to wymagane? false
Pozycja? nazwany
Wartość domyślna? none
Czy akceptuje dane wejściowe potoku? false
Czy akceptuje symbole wieloznaczne? false

<CommonParameters>
To polecenie cmdlet obsługuje następujące parametry: Verbose, Debug, ErrorAction, WarningAction, InformationAction, ErrorVariable, WarningVariable, InformationVariable, OutVariable, OutBuffer, PipelineVariable i Suspend. Aby uzyskać więcej informacji, zobacz about_CommonParameters.

DANE WEJŚCIOWE
None lub obiekt ADObject
Obiekt ADObject jest odbierany przez potok.

DANE WYJŚCIOWE
Microsoft.ActiveDirectory.Management.ADObject
Zwraca jeden lub więcej obiektów ADObject.

UWAGI
Aby użyć tego polecenia cmdlet z modułem Active Directory, należy uruchomić program Windows PowerShell z podwyższonymi uprawnieniami (Uruchom jako administrator).

PRZYKŁAD 1
PS C:\> Get-ADObject -Filter 'ObjectClass -eq "computer"'

Opis
---
To polecenie pobiera wszystkie obiekty komputerów z katalogu.

PRZYKŁAD 2
PS C:\> Get-ADObject -Filter {ObjectClass -eq "user" -and City -eq "Redmond"} -Properties City

Opis
---
To polecenie pobiera wszystkich użytkowników z biurem w Redmond.

PRZYKŁAD 3
PS C:\> Get-ADObject -Identity 'CN=MyObject,DC=Contoso,DC=com' -Properties CanonicalName,DisplayName

Opis
---
To polecenie pobiera obiekt o wyróżniającej nazwie 'CN=MyObject,DC=Contoso,DC=com' oraz właściwości CanonicalName i DisplayName.

PRZYKŁAD 4
PS C:\> Get-ADObject -Filter 'ObjectGUID -eq "617f2a59-2206-4cf9-8443-75e136c3d055"'

Opis
---
To polecenie pobiera obiekt o identyfikatorze GUID '617f2a59-2206-4cf9-8443-75e136c3d055'.

PRZYKŁAD 5
PS C:\> Get-ADObject -LDAPFilter '(name=*Kowalski*)' -SearchBase 'DC=Contoso,DC=com'

Opis
---
To polecenie pobiera wszystkie obiekty zawierające w nazwie 'Kowalski' w domenie Contoso.

PRZYKŁAD 6
PS C:\> Get-ADObject -IncludeDeletedObjects -Server 'DC1,Contoso,com' -Filter 'ObjectClass -eq "user" -and Name -eq "KowalskiJan"'

Opis
---
To polecenie pobiera usuniętego użytkownika o nazwie 'KowalskiJan' z kontrolera domeny 'DC1,Contoso,com'.

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

> Filtr dla typów bloków znaczników (przekazywanych do LLM)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoCache`

> The PSModuleDiscoveryAutoDiscoveryLevel property indicates the level of automatic discovery of modules. The default value is 3.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearCache`

> Wyczyść cały pamięć podręczną tłumaczeń dla wszystkich języków

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-SpeechToText.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-DeepLinkImageFile.md)
