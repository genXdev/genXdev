# Open-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `sites`

## Synopsis

> Otwiera zakładki przeglądarki pasujące do określonych kryteriów wyszukiwania.

## Description

Wyszukuje zakładki w przeglądarkach Microsoft Edge, Google Chrome i Mozilla Firefox na podstawie podanych zapytań. Otwiera pasujące zakładki w wybranej przeglądarce z konfigurowalnymi ustawieniami okna i trybami przeglądarki.

Ta funkcja zapewnia kompleksowy interfejs do znajdowania i otwierania zakładek przeglądarki z zaawansowanymi opcjami filtrowania i wyświetlania. Obsługuje wiele kryteriów wyszukiwania i może otwierać wyniki w dowolnej zainstalowanej przeglądarce z szeroką personalizacją pozycjonowania okna i zachowania.

## Syntax

```powershell
Open-BrowserBookmarks [[-Queries] <String[]>] [[-Count] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Terminy wyszukiwania do filtrowania zakładek |
| `-Count` | Int32 | — | — | 1 | `50` | Maksymalna liczba adresów URL do otwarcia |
| `-Edge` | SwitchParameter | — | — | Named | — | Zaznacz w przeglądarce Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Wybierz w Google Chrome |
| `-Firefox` | SwitchParameter | — | — | Named | — | Zaznacz w przeglądarce Firefox |
| `-Monitor` | Int32 | — | — | Named | `-1` | Monitor do użycia, 0 = domyślny, -1 oznacza odrzuć, -2 = Skonfigurowany monitor dodatkowy |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Ustawi okno na pełny ekran na innym monitorze niż PowerShell lub obok PowerShell na tym samym monitorze |
| `-Private` | SwitchParameter | — | — | Named | — | Otwiera w trybie incognito/prywatnym |
| `-Force` | SwitchParameter | — | — | Named | — | Wymuś włączenie portu debugowania, zatrzymując istniejące przeglądarki, jeśli to konieczne |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Otwiera w trybie pełnoekranowym |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Pokaż okno przeglądarki (nie 1d ani ukryte) |
| `-Width` | Int32 | — | — | Named | `-1` | Początkowa szerokość okna przeglądarki internetowej |
| `-Height` | Int32 | — | — | Named | `-1` | Początkowa wysokość okna przeglądarki internetowej |
| `-X` | Int32 | — | — | Named | `-999999` | Początkowa pozycja X okna przeglądarki internetowej |
| `-Y` | Int32 | — | — | Named | `-999999` | Początkowa pozycja Y okna przeglądarki internetowej |
| `-Left` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki po lewej stronie ekranu |
| `-Right` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki po prawej stronie ekranu |
| `-Top` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki na górnej krawędzi ekranu |
| `-Bottom` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki na dolnej krawędzi ekranu |
| `-Centered` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki na środku ekranu |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ukryj kontrolki przeglądarki |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Zapobiegaj ładowaniu rozszerzeń przeglądarki |
| `-AcceptLang` | String | — | — | Named | `$null` | Ustaw nagłówek http accept-lang przeglądarki |
| `-KeysToSend` | String[] | — | — | Named | — | Naciśnięcia klawiszy do wysłania do okna przeglądarki, zobacz dokumentację polecenia cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Ustaw fokus na oknie przeglądarki po otwarciu |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Ustaw okno przeglądarki na pierwszym planie po otwarciu |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimalizuj okno po ustawieniu pozycji |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maksymalizuj okno po pozycjonowaniu |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Przywróć okno do normalnego stanu po pozycjonowaniu |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Przywróć fokus okna PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Nie używaj ponownie istniejącego okna przeglądarki, zamiast tego utwórz nowe. |
| `-Chromium` | SwitchParameter | — | — | Named | — | Otwiera w Microsoft Edge lub Google Chrome, w zależności od tego, która przeglądarka jest domyślna |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Użyj przeglądarki zarządzanej przez Playwright zamiast przeglądarki zainstalowanej w systemie operacyjnym |
| `-Webkit` | SwitchParameter | — | — | Named | — | Otwiera przeglądarkę WebKit zarządzaną przez Playwright. Implikuje użycie -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Uruchom przeglądarkę bez widocznego okna |
| `-All` | SwitchParameter | — | — | Named | — | Otwiera się we wszystkich zarejestrowanych nowoczesnych przeglądarkach |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Wyłącz blokadę wyskakujących okienek |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Pomiń znaki sterujące podczas wysyłania klawiszy |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Zapobiegaj powrotowi fokusu klawiatury do PowerShell po wysłaniu klawiszy |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Wyślij Shift+Enter zamiast zwykłego Entera dla przejścia do nowej linii |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Opóźnienie między wysyłaniem różnych sekwencji klawiszy w milisekundach |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Usuwa obramowania okna przeglądarki |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji SI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Przechowuj ustawienia tylko w trwałych preferencjach, nie wpływając na sesję |

## Examples

### Open-BrowserBookmarks -Queries "github" -Edge -Count 5

```powershell
Open-BrowserBookmarks -Queries "github" -Edge -Count 5
```

Wyszukuje zakładki zawierające "github" w Microsoft Edge i otwiera pierwsze 5 wyników w domyślnej przeglądarce.

### sites gh -e -c 5

```powershell
sites gh -e -c 5
```

To samo, używając aliasów - przeszukuje zakładki Edge'a w poszukiwaniu "gh" i otwiera 5 wyników w domyślnej przeglądarce.

### Open-BrowserBookmarks -Queries "development", "tools" -Chrome -Firefox -Left -Count 10

```powershell
Open-BrowserBookmarks -Queries "development", "tools" -Chrome -Firefox -Left -Count 10
```

Przeszukuje zakładki Chrome w poszukiwaniu "development" i "tools", otwiera pierwsze 10 wyników w Firefoksie umieszczonym po lewej stronie ekranu.

## Parameter Details

### `-Queries <String[]>`

> Terminy wyszukiwania do filtrowania zakładek

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Count <Int32>`

> Maksymalna liczba adresów URL do otwarcia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `50` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Zaznacz w przeglądarce Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Wybierz w Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Zaznacz w przeglądarce Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Monitor do użycia, 0 = domyślny, -1 oznacza odrzuć, -2 = Skonfigurowany monitor dodatkowy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Ustawi okno na pełny ekran na innym monitorze niż PowerShell lub obok PowerShell na tym samym monitorze

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Otwiera w trybie incognito/prywatnym

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Wymuś włączenie portu debugowania, zatrzymując istniejące przeglądarki, jeśli to konieczne

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

> Otwiera w trybie pełnoekranowym

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Pokaż okno przeglądarki (nie 1d ani ukryte)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Początkowa szerokość okna przeglądarki internetowej

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

> Początkowa wysokość okna przeglądarki internetowej

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Początkowa pozycja X okna przeglądarki internetowej

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> Początkowa pozycja Y okna przeglądarki internetowej

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Umieść okno przeglądarki po lewej stronie ekranu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> Umieść okno przeglądarki po prawej stronie ekranu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> Umieść okno przeglądarki na górnej krawędzi ekranu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> Umieść okno przeglądarki na dolnej krawędzi ekranu

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

> Umieść okno przeglądarki na środku ekranu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Ukryj kontrolki przeglądarki

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

> Zapobiegaj ładowaniu rozszerzeń przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Ustaw nagłówek http accept-lang przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Naciśnięcia klawiszy do wysłania do okna przeglądarki, zobacz dokumentację polecenia cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-Minimize`

> Minimalizuj okno po ustawieniu pozycji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Maksymalizuj okno po pozycjonowaniu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> Przywróć okno do normalnego stanu po pozycjonowaniu

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

> Przywróć fokus okna PowerShell

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

> Nie używaj ponownie istniejącego okna przeglądarki, zamiast tego utwórz nowe.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Otwiera w Microsoft Edge lub Google Chrome, w zależności od tego, która przeglądarka jest domyślna

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
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
### `-DisablePopupBlocker`

> Wyłącz blokadę wyskakujących okienek

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Pomiń znaki sterujące podczas wysyłania klawiszy

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

> Zapobiegaj powrotowi fokusu klawiatury do PowerShell po wysłaniu klawiszy

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

> Wyślij Shift+Enter zamiast zwykłego Entera dla przejścia do nowej linii

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

> Opóźnienie między wysyłaniem różnych sekwencji klawiszy w milisekundach

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

> Usuwa obramowania okna przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
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
## Related Links

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-WebbrowserEvaluation.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-WebsiteInAllBrowsers.md)
