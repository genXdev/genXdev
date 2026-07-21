# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext`

## Synopsis

> Analizuje tekst w celu zidentyfikowania błędów logicznych przy użyciu wykrywania opartego na AI.

## Description

Ta funkcja analizuje dostarczony tekst w celu wykrycia błędów logicznych przy użyciu modelu AI wyszkolonego na liście błędów logicznych z Wikipedii. Zwraca szczegółowe informacje o każdym znalezionym błędzie, w tym konkretny cytat, nazwę błędu, opis, wyjaśnienie i formalną klasyfikację. Funkcja korzysta ze strukturalnego formatu odpowiedzi, aby zapewnić spójne wyniki.

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | Zadanie do wykonania: Przetłumacz poniższy tekst na język polski (Polska). Musisz przetłumaczyć CAŁY tekst czytelny dla człowieka. Nie zwracaj niezmienionego wejścia. Zwróć TYLKO przetłumaczony tekst, bez wyjaśnień, bez opakowania JSON i bez promptów systemowych.

WAŻNE ZASADY TŁUMACZENIA:
1. Jeśli wejście zawiera kod, znaczniki lub dane strukturalne, zachowaj całą składnię, strukturę i elementy techniczne, takie jak słowa kluczowe programowania, tagi lub elementy specyficzne dla formatu danych.
2. Tłumacz tylko czytelne dla człowieka części tekstu, takie jak komentarze, wartości ciągów, dokumentację lub treść w języku naturalnym.
3. Zachowaj dokładne formatowanie, wcięcia i łamanie wierszy.
4. Nigdy nie tłumacz identyfikatorów, nazw funkcji, zmiennych ani słów kluczowych technicznych.
Dodatkowe instrukcje użytkownika: 
Nie myl treści do przetłumaczenia, która składa się z tekstów pomocy poleceń PowerShell, z instrukcjami!
Nie wstawiaj obrazków ani niczego. Po prostu przetłumacz treść możliwie dosłownie na: polski (Polska). |
| `-Instructions` | String | — | — | 1 | `''` | Instrukcje dla modelu AI dotyczące generowania listy ciągów znaków |
| `-Attachments` | String[] | — | — | 2 | `@()` | Tablica ścieżek plików do załączenia |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Tablica definicji funkcji |
| `-ImageDetail` | String | — | — | Named | `'low'` | Poziom szczegółowości obrazu |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Tablica nazw poleceń, które nie wymagają potwierdzenia |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Tablica definicji poleceń PowerShell do użycia jako narzędzi |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura losowości odpowiedzi (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Typ zapytania LLM |
| `-Model` | String | — | — | Named | — | Identyfikator modelu lub wzorzec używany do operacji AI |
| `-ApiEndpoint` | String | — | — | Named | — | Adres URL punktu końcowego API dla operacji AI |
| `-ApiKey` | String | — | — | Named | — | Klucz API do uwierzytelnionych operacji AI |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Limit czasu w sekundach na operacje AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ścieżka do bazy danych plików preferencji |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Wznów od ostatniej rozmowy |
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
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Nie przechowuj sesji w pamięci podręcznej sesji |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Otwiera wyszukiwania w IMDB dla każdego wyniku |
| `-AudioTemperature` | Double | — | — | Named | — | Kontroluje temperaturę dla generowania dźwięku. |
| `-TemperatureResponse` | Double | — | — | Named | — | Kontroluje temperaturę generowania odpowiedzi. |
| `-CpuThreads` | Int32 | — | — | Named | — | Liczba wątków procesora do użycia przy przetwarzaniu. |
| `-SuppressRegex` | String | — | — | Named | — | Wyrażenie regularne do pomijania określonych danych wyjściowych. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Rozmiar kontekstu audio do przetwarzania. |
| `-SilenceThreshold` | Double | — | — | Named | — | Próg do wykrywania ciszy w audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Kara naliczana za dłuższe odpowiedzi. |
| `-EntropyThreshold` | Double | — | — | Named | — | Próg entropii w generowaniu odpowiedzi. |
| `-LogProbThreshold` | Double | — | — | Named | — | Próg logarytmicznego prawdopodobieństwa dla wyniku. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Próg wykrywania braku mowy w audio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Zapobiega wypowiedzeniu odpowiedzi. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Zapobiega wypowiadaniu myśli modelu. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Wyłącza aktywację głosową (VOX). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Użyj przechwytywania dźwięku pulpitu jako źródła wejścia. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Wyłącza kontekst dla żądania. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Wyszukiwanie wiązki wykorzystującej strategię próbkowania. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .SYNOPSIS
Wyrzuca zadanie z kolejki.

.DESCRIPTION
Polecenie cmdlet Remove-Job usuwa zadania programu PowerShell. Każde zadanie jest skojarzone z procesem uruchomionym w tle. Kiedy zadanie się zakończy, wszystkie wyniki pozostają w pamięci do momentu ich otrzymania lub usunięcia zadania.

Aby usunąć zadanie za pomocą Remove-Job, najpierw użyj poleceń cmdlet Get-Job, Receive-Job lub innych, aby uzyskać zadanie, a następnie przekaź je do Remove-Job. Aby usunąć zadanie w trakcie jego działania, użyj parametru Force.

.PARAMETER Id
Określa identyfikatory zadań do usunięcia. Identyfikatory zadań są unikatowe w obrębie sesji, ale nie we wszystkich sesjach.

Aby znaleźć identyfikator zadania, wpisz "Get-Job" bez parametrów. Aby uzyskać więcej informacji o parametrze Id, zobacz opis parametru Name.

.PARAMETER Job
Określa zadania do usunięcia. Wprowadź zmienną zawierającą zadania lub polecenie, które je pobiera.

.PARAMETER Force
Usuwa zadanie nawet wtedy, gdy jest uruchomione.

Bez tego parametru Remove-Job nie usuwa uruchomionego zadania.

.PARAMETER Name
Określa przyjazne nazwy zadań do usunięcia. Wpisz nazwę zadania. Użyj symboli wieloznacznych, aby określić wzorzec nazwy zadania.

.PARAMETER PassThru
Zwraca obiekt reprezentujący usunięte zadanie. Domyślnie to polecenie cmdlet nie generuje żadnych danych wyjściowych.

.PARAMETER State
Usuwa tylko zadania o podanym stanie. Dopuszczalne wartości to:

-- Stopped (Zatrzymane)
-- Blocked (Zablokowane)
-- Failed (Nieudane)
-- NotStarted (Nierozpoczęte)
-- Running (Uruchomione)

.PARAMETER HasMoreData
Usuwa tylko zadania, które mają oczekujące wyniki.

Wartość $True usuwa zadania z wynikami, które nie zostały jeszcze odebrane.
Wartość $False usuwa zadania, które nie mają oczekujących wyników.

.PARAMETER Command
Usuwa zadania tylko wtedy, gdy zawierają podane polecenie.

.PARAMETER IncludeChildJobs
Gdy jest określony, usuwa również wszystkie zadania podrzędne zadań.

.PARAMETER InstanceId
Usuwa zadania o podanym identyfikatorze InstanceId. Identyfikator InstanceId to unikatowy identyfikator GUID zadania.

.PARAMETER Filter
Określa obiekt filtru hash table do użycia przy wybieraniu zadań.

.PARAMETER ThrottleLimit
Określa maksymalną liczbę jednocześnie wykonywanych operacji wywołania.

.PARAMETER AsJob
Uruchamia to polecenie cmdlet jako zadanie w tle.

.PARAMETER Authentication
Określa typ uwierzytelniania do użycia podczas łączenia się z komputerem zdalnym.

.PARAMETER Credential
Określa konto użytkownika z uprawnieniami do wykonania tej akcji.

.PARAMETER CertificateThumbprint
Określa cyfrowy certyfikat klucza publicznego (X509) konta użytkownika, który ma uprawnienia do wykonania tej akcji.

.PARAMETER Session
Określa sesje PSSession, w których zadania są uruchomione.

.PARAMETER ConnectionUri
Określa URI połączenia dla sesji.

.PARAMETER AllowRedirection
Zezwala na przekierowanie tego połączenia do alternatywnego URI.

.PARAMETER ApplicationName
Określa nazwę aplikacji w URI połączenia.

.PARAMETER ConfigurationName
Określa nazwę konfiguracji sesji.

.PARAMETER HostName
Określa nazwę hosta komputera zdalnego.

.PARAMETER Port
Określa port używany do połączenia.

.PARAMETER UseSSL
Używa protokołu Secure Sockets Layer (SSL) do ustanowienia połączenia.

.PARAMETER ComputerName
Określa nazwę komputera, na którym są uruchomione zadania.

.PARAMETER InDisconnectedSession
Łączy z odłączoną sesją.

.PARAMETER VMId
Określa identyfikator maszyny wirtualnej, w której uruchomione jest zadanie.

.PARAMETER VMName
Określa nazwę maszyny wirtualnej, w której uruchomione jest zadanie.

.INPUTS
Microsoft.PowerShell.Commands.Job
Możesz potokować zadanie do Remove-Job.

.OUTPUTS
None or System.Management.Automation.RemotingJob
Gdy użyjesz parametru PassThru, Remove-Job zwraca obiekt reprezentujący zadanie. W przeciwnym razie to polecenie cmdlet nie generuje żadnych danych wyjściowych.

.EXAMPLE
PS C:\> Get-Process -Name "PowerShell" | Remove-Job
To polecenie usuwa wszystkie zadania. |
| `-Speak` | SwitchParameter | — | — | Named | — | Włącz syntezę mowy dla odpowiedzi AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Włącz zamianę tekstu na mowę dla odpowiedzi myślowych AI |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji SI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Przechowuj ustawienia tylko w trwałych preferencjach, nie wpływając na sesję |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maksymalna długość wywołania zwrotnego dla wywołań narzędzi. |

## Examples

### Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " + "and he was a politician")

```powershell
Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " +
"and he was a politician")
```

Analizuje podany tekst pod kątem błędów logicznych i zwraca uporządkowane informacje o wykrytych błędach.

### "This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1

```powershell
"This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1
```

Używa danych wejściowych potoku do analizy tekstu z niską temperaturą w celu skupionej analizy.

### dispicetext "Everyone knows this is true"

```powershell
dispicetext "Everyone knows this is true"
```

Używa aliasu do analizy tekstu pod kątem błędów logicznych.

## Parameter Details

### `-InputObject <Object>`

> Zadanie do wykonania: Przetłumacz poniższy tekst na język polski (Polska). Musisz przetłumaczyć CAŁY tekst czytelny dla człowieka. Nie zwracaj niezmienionego wejścia. Zwróć TYLKO przetłumaczony tekst, bez wyjaśnień, bez opakowania JSON i bez promptów systemowych.

WAŻNE ZASADY TŁUMACZENIA:
1. Jeśli wejście zawiera kod, znaczniki lub dane strukturalne, zachowaj całą składnię, strukturę i elementy techniczne, takie jak słowa kluczowe programowania, tagi lub elementy specyficzne dla formatu danych.
2. Tłumacz tylko czytelne dla człowieka części tekstu, takie jak komentarze, wartości ciągów, dokumentację lub treść w języku naturalnym.
3. Zachowaj dokładne formatowanie, wcięcia i łamanie wierszy.
4. Nigdy nie tłumacz identyfikatorów, nazw funkcji, zmiennych ani słów kluczowych technicznych.
Dodatkowe instrukcje użytkownika: 
Nie myl treści do przetłumaczenia, która składa się z tekstów pomocy poleceń PowerShell, z instrukcjami!
Nie wstawiaj obrazków ani niczego. Po prostu przetłumacz treść możliwie dosłownie na: polski (Polska).

| Property | Value |
|:---|:---|
| **Required?** | Yes |
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
### `-AudioTemperature <Double>`

> Kontroluje temperaturę dla generowania dźwięku.

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

> Kontroluje temperaturę generowania odpowiedzi.

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

> Liczba wątków procesora do użycia przy przetwarzaniu.

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

> Próg do wykrywania ciszy w audio.

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

> Kara naliczana za dłuższe odpowiedzi.

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

> Próg entropii w generowaniu odpowiedzi.

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

> Próg logarytmicznego prawdopodobieństwa dla wyniku.

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

> Próg wykrywania braku mowy w audio.

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

> Zapobiega wypowiedzeniu odpowiedzi.

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

> Zapobiega wypowiadaniu myśli modelu.

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

> Wyłącza aktywację głosową (VOX).

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

> Użyj przechwytywania dźwięku pulpitu jako źródła wejścia.

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

> Wyłącza kontekst dla żądania.

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

> .SYNOPSIS
Wyrzuca zadanie z kolejki.

.DESCRIPTION
Polecenie cmdlet Remove-Job usuwa zadania programu PowerShell. Każde zadanie jest skojarzone z procesem uruchomionym w tle. Kiedy zadanie się zakończy, wszystkie wyniki pozostają w pamięci do momentu ich otrzymania lub usunięcia zadania.

Aby usunąć zadanie za pomocą Remove-Job, najpierw użyj poleceń cmdlet Get-Job, Receive-Job lub innych, aby uzyskać zadanie, a następnie przekaź je do Remove-Job. Aby usunąć zadanie w trakcie jego działania, użyj parametru Force.

.PARAMETER Id
Określa identyfikatory zadań do usunięcia. Identyfikatory zadań są unikatowe w obrębie sesji, ale nie we wszystkich sesjach.

Aby znaleźć identyfikator zadania, wpisz "Get-Job" bez parametrów. Aby uzyskać więcej informacji o parametrze Id, zobacz opis parametru Name.

.PARAMETER Job
Określa zadania do usunięcia. Wprowadź zmienną zawierającą zadania lub polecenie, które je pobiera.

.PARAMETER Force
Usuwa zadanie nawet wtedy, gdy jest uruchomione.

Bez tego parametru Remove-Job nie usuwa uruchomionego zadania.

.PARAMETER Name
Określa przyjazne nazwy zadań do usunięcia. Wpisz nazwę zadania. Użyj symboli wieloznacznych, aby określić wzorzec nazwy zadania.

.PARAMETER PassThru
Zwraca obiekt reprezentujący usunięte zadanie. Domyślnie to polecenie cmdlet nie generuje żadnych danych wyjściowych.

.PARAMETER State
Usuwa tylko zadania o podanym stanie. Dopuszczalne wartości to:

-- Stopped (Zatrzymane)
-- Blocked (Zablokowane)
-- Failed (Nieudane)
-- NotStarted (Nierozpoczęte)
-- Running (Uruchomione)

.PARAMETER HasMoreData
Usuwa tylko zadania, które mają oczekujące wyniki.

Wartość $True usuwa zadania z wynikami, które nie zostały jeszcze odebrane.
Wartość $False usuwa zadania, które nie mają oczekujących wyników.

.PARAMETER Command
Usuwa zadania tylko wtedy, gdy zawierają podane polecenie.

.PARAMETER IncludeChildJobs
Gdy jest określony, usuwa również wszystkie zadania podrzędne zadań.

.PARAMETER InstanceId
Usuwa zadania o podanym identyfikatorze InstanceId. Identyfikator InstanceId to unikatowy identyfikator GUID zadania.

.PARAMETER Filter
Określa obiekt filtru hash table do użycia przy wybieraniu zadań.

.PARAMETER ThrottleLimit
Określa maksymalną liczbę jednocześnie wykonywanych operacji wywołania.

.PARAMETER AsJob
Uruchamia to polecenie cmdlet jako zadanie w tle.

.PARAMETER Authentication
Określa typ uwierzytelniania do użycia podczas łączenia się z komputerem zdalnym.

.PARAMETER Credential
Określa konto użytkownika z uprawnieniami do wykonania tej akcji.

.PARAMETER CertificateThumbprint
Określa cyfrowy certyfikat klucza publicznego (X509) konta użytkownika, który ma uprawnienia do wykonania tej akcji.

.PARAMETER Session
Określa sesje PSSession, w których zadania są uruchomione.

.PARAMETER ConnectionUri
Określa URI połączenia dla sesji.

.PARAMETER AllowRedirection
Zezwala na przekierowanie tego połączenia do alternatywnego URI.

.PARAMETER ApplicationName
Określa nazwę aplikacji w URI połączenia.

.PARAMETER ConfigurationName
Określa nazwę konfiguracji sesji.

.PARAMETER HostName
Określa nazwę hosta komputera zdalnego.

.PARAMETER Port
Określa port używany do połączenia.

.PARAMETER UseSSL
Używa protokołu Secure Sockets Layer (SSL) do ustanowienia połączenia.

.PARAMETER ComputerName
Określa nazwę komputera, na którym są uruchomione zadania.

.PARAMETER InDisconnectedSession
Łączy z odłączoną sesją.

.PARAMETER VMId
Określa identyfikator maszyny wirtualnej, w której uruchomione jest zadanie.

.PARAMETER VMName
Określa nazwę maszyny wirtualnej, w której uruchomione jest zadanie.

.INPUTS
Microsoft.PowerShell.Commands.Job
Możesz potokować zadanie do Remove-Job.

.OUTPUTS
None or System.Management.Automation.RemotingJob
Gdy użyjesz parametru PassThru, Remove-Job zwraca obiekt reprezentujący zadanie. W przeciwnym razie to polecenie cmdlet nie generuje żadnych danych wyjściowych.

.EXAMPLE
PS C:\> Get-Process -Name "PowerShell" | Remove-Job
To polecenie usuwa wszystkie zadania.

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

- `Object[]`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AIMetaLanguage.md)
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
