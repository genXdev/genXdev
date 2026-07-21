# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> Otwiera zapytanie wyszukiwania repozytoriów Github w przeglądarce internetowej lub wykonuje zaawansowane wyszukiwania za pomocą interfejsu REST API Github obsługującego wszystkie dostępne kwalifikatory i kategorie wyszukiwania (repozytoria, kod, problemy, użytkownicy, commity, dyskusje, tematy, wiki).

## Description

Otwiera zapytanie przeszukujące repozytorium Github w przeglądarce internetowej z rozbudowanymi opcjami dostosowywania lub wykonuje zaawansowane wyszukiwanie przez API. Ta funkcja zapewnia potężny interfejs do szybkiego dostępu do repozytoriów Github z PowerShell z obsługą wielu przeglądarek, pozycjonowania okien, filtrowania języków i automatyzacji klawiatury lub pobierania strukturalnych danych przez API. Kluczowe funkcje:

Obsługa wielu zapytań wyszukiwania z wejściem potokowym
Filtrowanie specyficzne dla języka z automatyczną lokalizacją
Obsługa wielu przeglądarek (Edge, Chrome, Firefox)
Zaawansowane pozycjonowanie okien i wybór monitora
Tryb prywatny/incognito
Tryb aplikacji dla przeglądania bez zakłóceń
Automatyzacja klawiatury i zarządzanie fokusem
Opcje zwracania URL dla użycia programistycznego
Zaawansowane wyszukiwanie przez API z kwalifikatorami, sortowaniem, paginacją
Obsługa wszystkich typów wyszukiwania Github
Uwierzytelnianie za pomocą osobistego tokena dostępu
Asynchroniczne wykonywanie zadań dla wyszukiwań API
Wyjście w postaci surowego JSON lub strukturalnego obiektu

Funkcja automatycznie konstruuje URL-e wyszukiwania Github dla trybu internetowego lub punkty końcowe API dla trybu API i przekazuje wszystkie parametry związane z przeglądarką do bazowej funkcji Open-Webbrowser dla spójnego zachowania.

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Zapytania wyszukiwania do wykonania w serwisie Github. Obsługuje wiele zapytań oraz dane wejściowe z potoku do wyszukiwania wsadowego. Każde zapytanie zostanie zakodowane w URL-u i użyte do przeszukiwania Github. |
| `-Type` | String | — | — | Named | `'Code'` | Główna kategoria do wyszukiwania. Domyślnie 'Kod'. |
| `-In` | String[] | — | — | Named | — | Pole(a) do wyszukiwania. Akceptowane będą tylko prawidłowe opcje dla wybranego typu. |
| `-User` | String | — | — | Named | — | Ogranicz wyszukiwanie do zasobów użytkownika (repozytoria, kod, zgłoszenia itp.). |
| `-Org` | String | — | — | Named | — | Ogranicz wyszukiwanie do organizacji. |
| `-Repo` | String | — | — | Named | — | Ogranicz wyszukiwanie do nazwanego repozytorium („właściciel/repozytorium”). |
| `-Path` | String | — | — | Named | — | Ogranicz wyszukiwanie kodu do konkretnych ścieżek plików lub katalogów (obsługuje symbole wieloznaczne zgodnie ze składnią wyszukiwania GitHub). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filtruj wyniki według nazwy pliku (nie ścieżki). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Ogranicz wyszukiwanie kodu do rozszerzeń plików. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Filtruj według języka programowania. |
| `-Size` | String | — | — | Named | — | Rozmiar pliku/repo. Obsługuje składnię numeryczną i zakresową (patrz przykłady). |
| `-State` | String | — | — | Named | — | W przypadku problemów/zgłoszeń. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: ogranicz do tych utworzonych przez określonego użytkownika. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Problemy/PR: ogranicz do tych przypisanych użytkownikowi. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR: muszą być oznaczone wszystkimi określonymi ciągami znaków. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Problemy/PR: muszą brakować pewnych metadanych (np. etykieta, kamień milowy). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Pole sortowania (zależy od typu). Np. „stars”, „forks”, „updated” itd. |
| `-Order` | String | — | — | Named | — | Kolejność „asc” lub „desc” sortowania. |
| `-PerPage` | Int32 | — | — | Named | `10` | Rozmiar strony (maks. 100). |
| `-Page` | Int32 | — | — | Named | `1` | Numer strony dla wyników stronicowanych. |
| `-Token` | String | — | — | Named | — | Token OAuth GitHub lub osobisty token dostępu. Jeśli nie podano, używa GITHUB_TOKEN lub zmiennej środowiskowej. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Ustaw nagłówek http accept-lang przeglądarki. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Opóźnienie między wysyłaniem różnych sekwencji klawiszy w milisekundach. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Monitor, na którym mają być wyświetlane wyniki. 0 = domyślny, -1 = odrzuć, -2 = pomocniczy. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | Początkowa szerokość okna przeglądarki. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | Początkowa wysokość okna przeglądarki. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | Początkowa pozycja X okna przeglądarki. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | Początkowa pozycja Y okna przeglądarki. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Naciśnięcia klawiszy do wysłania do okna przeglądarki, zobacz dokumentację polecenia cmdlet GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Dopasowuj tylko uwzględniające wielkość liter wyniki (jeśli obsługiwane). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Uruchom wyszukiwanie asynchronicznie jako zadanie PowerShell. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | Krótki opis:
Polecenie cmdlet Get-ChildItem pobiera elementy z jednej lub więcej określonych lokalizacji. Jeśli element jest kontenerem, pobiera również elementy w tym kontenerze, o ile nie jest używany parametr -Force. Kontenery to na przykład katalogi w systemie plików lub klucze w rejestrze.

Długi opis:
Polecenie cmdlet Get-ChildItem służy do wyświetlania listy elementów w jednej lub więcej określonych lokalizacjach. W systemie plików wyświetla listę plików i folderów. W przypadku rejestru wyświetla listę kluczy rejestru i wartości. Parametry można używać do filtrowania, sortowania i wybierania określonych typów elementów.

Parametry:
-Path <String[]>
Określa ścieżkę do lokalizacji, z której mają zostać pobrane elementy. Domyślnie bieżąca lokalizacja (bieżący katalog lub klucz rejestru).

-Filter <String>
Określa filtr w formacie dostawcy. Format i dokładna składnia filtra zależą od dostawcy. Filtry są bardziej wydajne niż inne parametry, ponieważ dostawca stosuje je podczas pobierania obiektów.

-Include <String[]>
Pobiera tylko określone elementy po przefiltrowaniu wszystkich elementów. Łańcuchy kwalifikujące (np. *.txt) są dozwolone. Ten parametr jest skuteczny tylko wtedy, gdy polecenie zawiera parametr -Recurse lub ścieżka prowadzi do zawartości katalogu (np. C:\*).

-Exclude <String[]>
Pomija określone elementy po przefiltrowaniu wszystkich elementów. Łańcuchy kwalifikujące (np. *.txt) są dozwolone.

-Recurse <SwitchParameter>
Pobiera elementy ze wszystkich podkontenerów. Bez tego parametru Get-ChildItem nie pobiera elementów z podkontenerów.

-Depth <UInt32>
Określa liczbę poziomów podkontenerów do rekurencyjnego przejścia. Domyślnie nieograniczona.

-Force <SwitchParameter>
Pobiera również elementy, które w przeciwnym razie byłyby ukryte lub niedostępne. Domyślnie Get-ChildItem nie pobiera elementów ukrytych.

-Name <SwitchParameter>
Zwraca tylko nazwy elementów, a nie pełnych obiektów.

-ParameterSetName <String[]>
Określa zestawy parametrów do użycia. Ten parametr jest przeznaczony do użytku przez scenariusze programistyczne.

-UseTransaction <SwitchParameter>
Uwzględnia polecenie w aktywnej transakcji. Ten parametr działa tylko wtedy, gdy trwa transakcja.

Przykłady:
Przykład 1: Pobierz wszystkie pliki i foldery z bieżącego katalogu.
    Get-ChildItem

Przykład 2: Pobierz wszystkie pliki z podkatalogów.
    Get-ChildItem -Recurse *.txt

Przykład 3: Pobierz wszystkie pliki o określonym rozszerzeniu.
    Get-ChildItem -Path C:\*.txt -Recurse -Include *.txt -Exclude *test*

Informacje techniczne:
Aby uzyskać więcej informacji, uruchom: Get-Help Get-ChildItem -Detailed
Aby uzyskać przykłady, uruchom: Get-Help Get-ChildItem -Examples
Aby uzyskać pełną pomoc, uruchom: Get-Help Get-ChildItem -Full *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Użyj trybu API zamiast otwierania w przeglądarce internetowej. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Otwiera przeglądarkę w prywatnym/incognito trybie przeglądania w celu anonimowego wyszukiwania. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Wymuś włączenie portu debugowania, zatrzymując w razie potrzeby istniejące przeglądarki. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Otwiera wyniki wyszukiwania w przeglądarce Microsoft Edge. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Otwiera wyniki wyszukiwania w przeglądarce Google Chrome. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Otwiera wyniki wyszukiwania w przeglądarce Microsoft Edge lub Google Chrome, w zależności od tego, która jest domyślną przeglądarką. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Otwiera wyniki wyszukiwania w przeglądarce Mozilla Firefox. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Użyj przeglądarki zarządzanej przez Playwright zamiast przeglądarki zainstalowanej w systemie operacyjnym |
| `-Webkit` | SwitchParameter | — | — | Named | — | Otwiera przeglądarkę WebKit zarządzaną przez Playwright. Implikuje użycie -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Uruchom przeglądarkę bez widocznego okna |
| `-All` | SwitchParameter | — | — | Named | — | Otwiera się we wszystkich zarejestrowanych nowoczesnych przeglądarkach |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Otwiera przeglądarkę w trybie pełnoekranowym. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki po lewej stronie ekranu. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki po prawej stronie ekranu. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki na górnej krawędzi ekranu. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki na dolnej krawędzi ekranu. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki na środku ekranu. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ukryj elementy sterujące przeglądarki. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Zapobiegaj ładowaniu rozszerzeń przeglądarki. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Wyłącz blokadę wyskakujących okienek w przeglądarce. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Ustaw fokus na oknie przeglądarki po otwarciu. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Ustaw okno przeglądarki na pierwszym planie po otwarciu. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maksymalizuj okno po pozycjonowaniu. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Przywrócenie fokusu okna PowerShell. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Nie używaj ponownie istniejącego okna przeglądarki, zamiast tego utwórz nowe. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Zwraca obiekt [System.Diagnostics.Process] procesu przeglądarki w trybie internetowym lub obiekt zapytania w trybie API. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Nie otwieraj przeglądarki, po prostu zwróć adres URL. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Po otwarciu przeglądarki internetowej zwróć adres URL. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Podczas wysyłania klawiszy należy zmieniać znaki sterujące. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Zapobiegaj powrotowi fokusa klawiatury do PowerShell po wysłaniu klawiszy. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Wysyłaj Shift+Enter zamiast zwykłego Entera dla przejść do nowej linii. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Usuń obramowania okien i pasek tytułu dla czystszego wyglądu. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki obok okna PowerShell na tym samym monitorze. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Przechowuj ustawienia tylko w preferencjach trwałych, bez wpływu na bieżącą sesję. *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Parameter Details

### `-Query <String[]>`

> Zapytania wyszukiwania do wykonania w serwisie Github. Obsługuje wiele zapytań oraz dane wejściowe z potoku do wyszukiwania wsadowego. Każde zapytanie zostanie zakodowane w URL-u i użyte do przeszukiwania Github.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Queries` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Type <String>`

> Główna kategoria do wyszukiwania. Domyślnie 'Kod'.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Code'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-In <String[]>`

> Pole(a) do wyszukiwania. Akceptowane będą tylko prawidłowe opcje dla wybranego typu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-User <String>`

> Ogranicz wyszukiwanie do zasobów użytkownika (repozytoria, kod, zgłoszenia itp.).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Org <String>`

> Ogranicz wyszukiwanie do organizacji.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repo <String>`

> Ogranicz wyszukiwanie do nazwanego repozytorium („właściciel/repozytorium”).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> Ogranicz wyszukiwanie kodu do konkretnych ścieżek plików lub katalogów (obsługuje symbole wieloznaczne zgodnie ze składnią wyszukiwania GitHub).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Filename <String>`

> Filtruj wyniki według nazwy pliku (nie ścieżki).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Extension <String>`

> Ogranicz wyszukiwanie kodu do rozszerzeń plików.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Language <String>`

> Filtruj według języka programowania.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Size <String>`

> Rozmiar pliku/repo. Obsługuje składnię numeryczną i zakresową (patrz przykłady).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-State <String>`

> W przypadku problemów/zgłoszeń.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Author <String>`

> Issues/PR: ogranicz do tych utworzonych przez określonego użytkownika.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Assignee <String>`

> Problemy/PR: ogranicz do tych przypisanych użytkownikowi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Labels <String[]>`

> Issues/PR: muszą być oznaczone wszystkimi określonymi ciągami znaków.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-No <String[]>`

> Problemy/PR: muszą brakować pewnych metadanych (np. etykieta, kamień milowy).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-SortBy <String>`

> Pole sortowania (zależy od typu). Np. „stars”, „forks”, „updated” itd.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Order <String>`

> Kolejność „asc” lub „desc” sortowania.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerPage <Int32>`

> Rozmiar strony (maks. 100).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `10` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Int32>`

> Numer strony dla wyników stronicowanych.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> Token OAuth GitHub lub osobisty token dostępu. Jeśli nie podano, używa GITHUB_TOKEN lub zmiennej środowiskowej.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-AcceptLang <String>`

> Ustaw nagłówek http accept-lang przeglądarki.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Opóźnienie między wysyłaniem różnych sekwencji klawiszy w milisekundach.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Monitor <Int32>`

> Monitor, na którym mają być wyświetlane wyniki. 0 = domyślny, -1 = odrzuć, -2 = pomocniczy.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Width <Int32>`

> Początkowa szerokość okna przeglądarki.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Height <Int32>`

> Początkowa wysokość okna przeglądarki.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-X <Int32>`

> Początkowa pozycja X okna przeglądarki.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Y <Int32>`

> Początkowa pozycja Y okna przeglądarki.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-KeysToSend <String[]>`

> Naciśnięcia klawiszy do wysłania do okna przeglądarki, zobacz dokumentację polecenia cmdlet GenXdev\Send-Key.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-CaseSensitive`

> Dopasowuj tylko uwzględniające wielkość liter wyniki (jeśli obsługiwane).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsJob`

> Uruchom wyszukiwanie asynchronicznie jako zadanie PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-RawResponse`

> Krótki opis:
Polecenie cmdlet Get-ChildItem pobiera elementy z jednej lub więcej określonych lokalizacji. Jeśli element jest kontenerem, pobiera również elementy w tym kontenerze, o ile nie jest używany parametr -Force. Kontenery to na przykład katalogi w systemie plików lub klucze w rejestrze.

Długi opis:
Polecenie cmdlet Get-ChildItem służy do wyświetlania listy elementów w jednej lub więcej określonych lokalizacjach. W systemie plików wyświetla listę plików i folderów. W przypadku rejestru wyświetla listę kluczy rejestru i wartości. Parametry można używać do filtrowania, sortowania i wybierania określonych typów elementów.

Parametry:
-Path <String[]>
Określa ścieżkę do lokalizacji, z której mają zostać pobrane elementy. Domyślnie bieżąca lokalizacja (bieżący katalog lub klucz rejestru).

-Filter <String>
Określa filtr w formacie dostawcy. Format i dokładna składnia filtra zależą od dostawcy. Filtry są bardziej wydajne niż inne parametry, ponieważ dostawca stosuje je podczas pobierania obiektów.

-Include <String[]>
Pobiera tylko określone elementy po przefiltrowaniu wszystkich elementów. Łańcuchy kwalifikujące (np. *.txt) są dozwolone. Ten parametr jest skuteczny tylko wtedy, gdy polecenie zawiera parametr -Recurse lub ścieżka prowadzi do zawartości katalogu (np. C:\*).

-Exclude <String[]>
Pomija określone elementy po przefiltrowaniu wszystkich elementów. Łańcuchy kwalifikujące (np. *.txt) są dozwolone.

-Recurse <SwitchParameter>
Pobiera elementy ze wszystkich podkontenerów. Bez tego parametru Get-ChildItem nie pobiera elementów z podkontenerów.

-Depth <UInt32>
Określa liczbę poziomów podkontenerów do rekurencyjnego przejścia. Domyślnie nieograniczona.

-Force <SwitchParameter>
Pobiera również elementy, które w przeciwnym razie byłyby ukryte lub niedostępne. Domyślnie Get-ChildItem nie pobiera elementów ukrytych.

-Name <SwitchParameter>
Zwraca tylko nazwy elementów, a nie pełnych obiektów.

-ParameterSetName <String[]>
Określa zestawy parametrów do użycia. Ten parametr jest przeznaczony do użytku przez scenariusze programistyczne.

-UseTransaction <SwitchParameter>
Uwzględnia polecenie w aktywnej transakcji. Ten parametr działa tylko wtedy, gdy trwa transakcja.

Przykłady:
Przykład 1: Pobierz wszystkie pliki i foldery z bieżącego katalogu.
    Get-ChildItem

Przykład 2: Pobierz wszystkie pliki z podkatalogów.
    Get-ChildItem -Recurse *.txt

Przykład 3: Pobierz wszystkie pliki o określonym rozszerzeniu.
    Get-ChildItem -Path C:\*.txt -Recurse -Include *.txt -Exclude *test*

Informacje techniczne:
Aby uzyskać więcej informacji, uruchom: Get-Help Get-ChildItem -Detailed
Aby uzyskać przykłady, uruchom: Get-Help Get-ChildItem -Examples
Aby uzyskać pełną pomoc, uruchom: Get-Help Get-ChildItem -Full

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Api`

> Użyj trybu API zamiast otwierania w przeglądarce internetowej.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Private`

> Otwiera przeglądarkę w prywatnym/incognito trybie przeglądania w celu anonimowego wyszukiwania.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Force`

> Wymuś włączenie portu debugowania, zatrzymując w razie potrzeby istniejące przeglądarki.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Edge`

> Otwiera wyniki wyszukiwania w przeglądarce Microsoft Edge.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chrome`

> Otwiera wyniki wyszukiwania w przeglądarce Google Chrome.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chromium`

> Otwiera wyniki wyszukiwania w przeglądarce Microsoft Edge lub Google Chrome, w zależności od tego, która jest domyślną przeglądarką.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Firefox`

> Otwiera wyniki wyszukiwania w przeglądarce Mozilla Firefox.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
### `-FullScreen`

> Otwiera przeglądarkę w trybie pełnoekranowym.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Left`

> Umieść okno przeglądarki po lewej stronie ekranu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Right`

> Umieść okno przeglądarki po prawej stronie ekranu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Top`

> Umieść okno przeglądarki na górnej krawędzi ekranu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Bottom`

> Umieść okno przeglądarki na dolnej krawędzi ekranu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Centered`

> Umieść okno przeglądarki na środku ekranu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ApplicationMode`

> Ukryj elementy sterujące przeglądarki.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBrowserExtensions`

> Zapobiegaj ładowaniu rozszerzeń przeglądarki.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-DisablePopupBlocker`

> Wyłącz blokadę wyskakujących okienek w przeglądarce.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-FocusWindow`

> Ustaw fokus na oknie przeglądarki po otwarciu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SetForeground`

> Ustaw okno przeglądarki na pierwszym planie po otwarciu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Maximize`

> Maksymalizuj okno po pozycjonowaniu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-RestoreFocus`

> Przywrócenie fokusu okna PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NewWindow`

> Nie używaj ponownie istniejącego okna przeglądarki, zamiast tego utwórz nowe.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PassThru`

> Zwraca obiekt [System.Diagnostics.Process] procesu przeglądarki w trybie internetowym lub obiekt zapytania w trybie API.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> Nie otwieraj przeglądarki, po prostu zwróć adres URL.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ReturnOnlyURL`

> Po otwarciu przeglądarki internetowej zwróć adres URL.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyEscape`

> Podczas wysyłania klawiszy należy zmieniać znaki sterujące.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Zapobiegaj powrotowi fokusa klawiatury do PowerShell po wysłaniu klawiszy.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyUseShiftEnter`

> Wysyłaj Shift+Enter zamiast zwykłego Entera dla przejść do nowej linii.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBorders`

> Usuń obramowania okien i pasek tytułu dla czystszego wyglądu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SideBySide`

> Umieść okno przeglądarki obok okna PowerShell na tym samym monitorze.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SessionOnly`

> Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ClearSession`

> Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SkipSession`

> Przechowuj ustawienia tylko w preferencjach trwałych, bez wpływu na bieżącą sesję.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-BuiltWithSiteInfo.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-YoutubeQuery.md)
