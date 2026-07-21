# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getlist`, `getstring`

## Synopsis

> Wyodrębnia lub generuje listę odpowiednich ciągów znaków z tekstu wejściowego za pomocą analizy AI.

## Description

Ta funkcja wykorzystuje modele AI do analizy wprowadzonego tekstu i wyodrębnienia lub wygenerowania listy odpowiednich ciągów znaków. Może przetwarzać tekst w celu identyfikacji kluczowych punktów, wyodrębniania elementów z list lub generowania powiązanych koncepcji. Dane wejściowe mogą być dostarczone bezpośrednio przez parametry, z potoku lub z systemowego schowka. Funkcja zwraca tablicę ciągów znaków i opcjonalnie kopiuje wyniki do schowka.

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Poniżej znajduje się opis polecenia cmdlet programu PowerShell z modułu Microsoft.PowerShell.Management.

## CLEAR-REKEY

### SYNOPSIS
Czyści klucz rejestru bez usuwania samego klucza.

### SKŁADNIA

    Clear-Rekey [-Path] <String[]> [-LiteralPath <String[]>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]

### OPIS
Polecenie cmdlet `Clear-Rekey` usuwa wszystkie wpisy podkluczy i wartości z określonego klucza rejestru, ale pozostawia sam klucz. Aby usunąć cały klucz, użyj polecenia `Remove-Item`.

### PRZYKŁADY

#### Przykład 1: Wyczyść wszystkie wartości z klucza rejestru

To polecenie czyści wszystkie wartości z klucza rejestru "MyApplication", ale pozostawia pusty klucz.

```powershell
Clear-Rekey -Path "HKLM:\Software\MyApplication"
```

#### Przykład 2: Wyczyść klucz rejestru i potwierdź wynik

To polecenie czyści wszystkie wartości z określonego klucza rejestru i wyświetla wynikowy pusty klucz.

```powershell
Clear-Rekey -Path "HKLM:\Software\MyApplication" -PassThru
```

### PARAMETRY

#### -Path
Określa ścieżkę do klucza rejestru do wyczyszczenia. Akceptuje wiele ścieżek. Dzikie karty są dozwolone.

| Typ: | String[] |
| Obowiązkowy: | True |
| Pozycja: | 0 |
| Wartość domyślna: | Brak |
| Akceptuje potokowe wejście: | True (ByValue, ByPropertyName) |
| Akceptuje dzikie karty: | True |

#### -LiteralPath
Określa ścieżkę do klucza rejestru. Wartość -LiteralPath jest używana dokładnie tak, jak została wpisana. Żadne znaki nie są interpretowane jako symbole wieloznaczne.

| Typ: | String[] |
| Obowiązkowy: | False |
| Pozycja: | Named |
| Wartość domyślna: | Brak |
| Akceptuje potokowe wejście: | True (ByPropertyName) |
| Akceptuje dzikie karty: | False |

#### -PassThru
Zwraca obiekt reprezentujący klucz rejestru. Domyślnie to polecenie cmdlet nie generuje żadnego wyniku.

| Typ: | SwitchParameter |
| Obowiązkowy: | False |
| Pozycja: | Named |
| Wartość domyślna: | False |
| Akceptuje potokowe wejście: | False |
| Akceptuje dzikie karty: | False |

#### -Confirm
Wyświetla monit o potwierdzenie przed wykonaniem polecenia.

| Typ: | SwitchParameter |
| Obowiązkowy: | False |
| Pozycja: | Named |
| Wartość domyślna: | False |
| Akceptuje potokowe wejście: | False |
| Akceptuje dzikie karty: | False |

#### -WhatIf
Pokazuje, co by się stało, gdyby polecenie zostało wykonane. Polecenie nie jest uruchamiane.

| Typ: | SwitchParameter |
| Obowiązkowy: | False |
| Pozycja: | Named |
| Wartość domyślna: | False |
| Akceptuje potokowe wejście: | False |
| Akceptuje dzikie karty: | False |

### DANE WEJŚCIOWE

**System.String[]**
Możesz potokiem przesłać ciąg znaków zawierający ścieżkę do tego polecenia cmdlet.

### DANE WYJŚCIOWE

**Microsoft.Win32.RegistryKey** lub **None**
Kiedy użyjesz parametru -PassThru, to polecenie cmdlet zwraca obiekt Microsoft.Win32.RegistryKey reprezentujący wyczyszczony klucz rejestru. W przeciwnym razie nie zwraca żadnego wyniku.

### UWAGI

To polecenie cmdlet działa tylko z dyskami rejestru. Aby wyświetlić dostępne dyski rejestru, użyj `Get-PSDrive`.

Polecenie cmdlet `Clear-Rekey` jest podobne do `Clear-Item`, ale działa tylko na kluczach rejestru, a nie na innych typach elementów.

### LINKI POKREWNE

- [Get-Item](https://go.microsoft.com/fwlink/?LinkID=113319)
- [Get-ChildItem](https://go.microsoft.com/fwlink/?LinkID=113307)
- [Set-Item](https://go.microsoft.com/fwlink/?LinkID=113389)
- [Remove-Item](https://go.microsoft.com/fwlink/?LinkID=113373)
- [Clear-Item](https://go.microsoft.com/fwlink/?LinkID=113281)
- [Clear-ItemProperty](https://go.microsoft.com/fwlink/?LinkID=113282) |
| `-Instructions` | String | — | — | 1 | `''` | Instrukcje dla modelu AI dotyczące generowania listy ciągów znaków |
| `-Attachments` | String[] | — | — | 2 | `@()` | Tablica ścieżek plików do załączenia |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura losowości odpowiedzi (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Poziom szczegółowości obrazu |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Tablica definicji funkcji |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Tablica definicji poleceń PowerShell do użycia jako narzędzi |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Tablica nazw poleceń, które nie wymagają potwierdzenia |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Typ zapytania LLM |
| `-Model` | String | — | — | Named | — | Identyfikator modelu lub wzorzec używany do operacji AI |
| `-ApiEndpoint` | String | — | — | Named | — | Adres URL punktu końcowego API dla operacji AI |
| `-ApiKey` | String | — | — | Named | — | Klucz API do uwierzytelnionych operacji AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Wskazuje, że LLM nie obsługuje schematów JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Limit czasu w sekundach na operacje AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ścieżka do bazy danych plików preferencji |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Kopiuj wynik do schowka |
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
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Włącz domyślne narzędzia dla modelu AI |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji SI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Przechowuj ustawienia tylko w trwałych preferencjach, nie wpływając na sesję |
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
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura losowości odpowiedzi audio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura dla losowości odpowiedzi tekstowych. |
| `-Language` | String | — | — | Named | — | Język lub identyfikator dla odpowiedzi. |
| `-CpuThreads` | Int32 | — | — | Named | — | Liczba wątków procesora do użycia. |
| `-SuppressRegex` | String | — | — | Named | — | Wyrażenie regularne do pomijania określonych danych wyjściowych. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Rozmiar kontekstu audio do przetwarzania. |
| `-SilenceThreshold` | Double | — | — | Named | — | Próg ciszy dla wykrywania dźwięku. |
| `-LengthPenalty` | Double | — | — | Named | — | Kara za długość sekwencji. |
| `-EntropyThreshold` | Double | — | — | Named | — | Próg entropii dla filtrowania wyjścia. |
| `-LogProbThreshold` | Double | — | — | Named | — | Próg prawdopodobieństwa logarytmicznego dla filtrowania wyjścia. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Brak progu mowy do wykrywania dźwięku. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Wyłącz wyjście mowy. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Wyłącz dźwiękową wypowiedź myśli. |
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
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maksymalna długość wywołania zwrotnego dla wywołań narzędzi. |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Parameter Details

### `-Text <String>`

> Poniżej znajduje się opis polecenia cmdlet programu PowerShell z modułu Microsoft.PowerShell.Management.

## CLEAR-REKEY

### SYNOPSIS
Czyści klucz rejestru bez usuwania samego klucza.

### SKŁADNIA

    Clear-Rekey [-Path] <String[]> [-LiteralPath <String[]>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]

### OPIS
Polecenie cmdlet `Clear-Rekey` usuwa wszystkie wpisy podkluczy i wartości z określonego klucza rejestru, ale pozostawia sam klucz. Aby usunąć cały klucz, użyj polecenia `Remove-Item`.

### PRZYKŁADY

#### Przykład 1: Wyczyść wszystkie wartości z klucza rejestru

To polecenie czyści wszystkie wartości z klucza rejestru "MyApplication", ale pozostawia pusty klucz.

```powershell
Clear-Rekey -Path "HKLM:\Software\MyApplication"
```

#### Przykład 2: Wyczyść klucz rejestru i potwierdź wynik

To polecenie czyści wszystkie wartości z określonego klucza rejestru i wyświetla wynikowy pusty klucz.

```powershell
Clear-Rekey -Path "HKLM:\Software\MyApplication" -PassThru
```

### PARAMETRY

#### -Path
Określa ścieżkę do klucza rejestru do wyczyszczenia. Akceptuje wiele ścieżek. Dzikie karty są dozwolone.

| Typ: | String[] |
| Obowiązkowy: | True |
| Pozycja: | 0 |
| Wartość domyślna: | Brak |
| Akceptuje potokowe wejście: | True (ByValue, ByPropertyName) |
| Akceptuje dzikie karty: | True |

#### -LiteralPath
Określa ścieżkę do klucza rejestru. Wartość -LiteralPath jest używana dokładnie tak, jak została wpisana. Żadne znaki nie są interpretowane jako symbole wieloznaczne.

| Typ: | String[] |
| Obowiązkowy: | False |
| Pozycja: | Named |
| Wartość domyślna: | Brak |
| Akceptuje potokowe wejście: | True (ByPropertyName) |
| Akceptuje dzikie karty: | False |

#### -PassThru
Zwraca obiekt reprezentujący klucz rejestru. Domyślnie to polecenie cmdlet nie generuje żadnego wyniku.

| Typ: | SwitchParameter |
| Obowiązkowy: | False |
| Pozycja: | Named |
| Wartość domyślna: | False |
| Akceptuje potokowe wejście: | False |
| Akceptuje dzikie karty: | False |

#### -Confirm
Wyświetla monit o potwierdzenie przed wykonaniem polecenia.

| Typ: | SwitchParameter |
| Obowiązkowy: | False |
| Pozycja: | Named |
| Wartość domyślna: | False |
| Akceptuje potokowe wejście: | False |
| Akceptuje dzikie karty: | False |

#### -WhatIf
Pokazuje, co by się stało, gdyby polecenie zostało wykonane. Polecenie nie jest uruchamiane.

| Typ: | SwitchParameter |
| Obowiązkowy: | False |
| Pozycja: | Named |
| Wartość domyślna: | False |
| Akceptuje potokowe wejście: | False |
| Akceptuje dzikie karty: | False |

### DANE WEJŚCIOWE

**System.String[]**
Możesz potokiem przesłać ciąg znaków zawierający ścieżkę do tego polecenia cmdlet.

### DANE WYJŚCIOWE

**Microsoft.Win32.RegistryKey** lub **None**
Kiedy użyjesz parametru -PassThru, to polecenie cmdlet zwraca obiekt Microsoft.Win32.RegistryKey reprezentujący wyczyszczony klucz rejestru. W przeciwnym razie nie zwraca żadnego wyniku.

### UWAGI

To polecenie cmdlet działa tylko z dyskami rejestru. Aby wyświetlić dostępne dyski rejestru, użyj `Get-PSDrive`.

Polecenie cmdlet `Clear-Rekey` jest podobne do `Clear-Item`, ale działa tylko na kluczach rejestru, a nie na innych typach elementów.

### LINKI POKREWNE

- [Get-Item](https://go.microsoft.com/fwlink/?LinkID=113319)
- [Get-ChildItem](https://go.microsoft.com/fwlink/?LinkID=113307)
- [Set-Item](https://go.microsoft.com/fwlink/?LinkID=113389)
- [Remove-Item](https://go.microsoft.com/fwlink/?LinkID=113373)
- [Clear-Item](https://go.microsoft.com/fwlink/?LinkID=113281)
- [Clear-ItemProperty](https://go.microsoft.com/fwlink/?LinkID=113282)

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

> Instrukcje dla modelu AI dotyczące generowania listy ciągów znaków

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
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

> Kopiuj wynik do schowka

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

> Włącz domyślne narzędzia dla modelu AI

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
### `-AudioTemperature <Double>`

> Temperatura losowości odpowiedzi audio.

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

> Temperatura dla losowości odpowiedzi tekstowych.

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

> Język lub identyfikator dla odpowiedzi.

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

> Próg ciszy dla wykrywania dźwięku.

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

> Wyłącz dźwiękową wypowiedź myśli.

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

- `String[]`

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
