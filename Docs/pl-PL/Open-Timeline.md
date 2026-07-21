# Open-Timeline

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `timeline`

## Synopsis

> Otwiera interaktywną oś czasu pokazującą bieżący czas, datę, wiek i tysiąclecie.

## Description

Otwiera internetową oś czasu z funkcją interaktywną.
Obsługuje wiele języków i opcje personalizacji wyglądu.

## Syntax

```powershell
Open-Timeline [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-BorderDarkColor <String>] [-BorderLightColor <String>] [-BorderWidth <Int32>] [-Bottom] [-BrowserExtensions] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-DragedNodeBackground <String>] [-Edge] [-Firefox] [-FocusedNodeBackground <String>] [-FocusedNodeForeground <String>] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-RotationDelaySeconds <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-UnFocusedNodeBackground <String>] [-UnFocusedNodeForeground <String>] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Private` | SwitchParameter | — | — | Named | — | Otwiera w trybie incognito/prywatnym |
| `-Force` | SwitchParameter | — | — | Named | — | Wymuś włączenie portu debugowania, zatrzymując istniejące przeglądarki, jeśli to konieczne |
| `-Edge` | SwitchParameter | — | — | Named | — | Otwiera w przeglądarce Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Otwiera w Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Otwiera w Microsoft Edge lub Google Chrome, w zależności od tego, która przeglądarka jest domyślna |
| `-Firefox` | SwitchParameter | — | — | Named | — | Otwiera w przeglądarce Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Użyj przeglądarki zarządzanej przez Playwright zamiast przeglądarki zainstalowanej w systemie operacyjnym |
| `-Webkit` | SwitchParameter | — | — | Named | — | Otwiera przeglądarkę WebKit zarządzaną przez Playwright. Implikuje użycie -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Uruchom przeglądarkę bez widocznego okna |
| `-All` | SwitchParameter | — | — | Named | — | Otwiera się we wszystkich zarejestrowanych nowoczesnych przeglądarkach |
| `-Monitor` | Int32 | — | — | Named | `-2` | Monitor do użycia, 0 = domyślny, -1 = odrzuć, -2 = Skonfigurowany monitor pomocniczy, domyślnie Global:DefaultSecondaryMonitor lub 2, jeśli nie znaleziono |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Nie otwieraj w trybie pełnoekranowym |
| `-Width` | Int32 | — | — | Named | `-1` | Początkowa szerokość okna przeglądarki internetowej |
| `-Height` | Int32 | — | — | Named | `-1` | Początkowa wysokość okna przeglądarki internetowej |
| `-X` | Int32 | — | — | Named | `-999999` | Początkowa pozycja X okna przeglądarki internetowej |
| `-Y` | Int32 | — | — | Named | `-999999` | Początkowa pozycja Y okna przeglądarki internetowej |
| `-Left` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki po lewej stronie ekranu |
| `-Right` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki po prawej stronie ekranu |
| `-Top` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki na górnej krawędzi ekranu |
| `-Bottom` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki na dolnej krawędzi ekranu |
| `-Centered` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki na środku ekranu |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Pokaż elementy sterujące przeglądarki |
| `-BrowserExtensions` | SwitchParameter | — | — | Named | — | Nie blokuj wczytywania rozszerzeń przeglądarki |
| `-AcceptLang` | String | — | — | Named | `$null` | Ustaw nagłówek http accept-lang przeglądarki |
| `-KeysToSend` | String[] | — | — | Named | — | Naciśnięcia klawiszy do wysłania do okna przeglądarki, zobacz dokumentację polecenia cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Ustaw fokus na oknie przeglądarki po otwarciu |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Ustaw okno przeglądarki na pierwszym planie po otwarciu |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maksymalizuj okno po pozycjonowaniu |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Przywróć okno do normalnego stanu po pozycjonowaniu |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Przywróć fokus okna PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Nie używaj ponownie istniejącego okna przeglądarki, zamiast tego utwórz nowe. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Zwraca obiekt [System.Diagnostics.Process] procesu przeglądarki |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | Nie zaczynaj nowej gry, po prostu patrz, jak AI gra. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Nie otwieraj przeglądarki, po prostu zwróć adres URL. |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Po otwarciu przeglądarki internetowej zwróć adres URL |
| `-Language` | String | — | — | 1 | — | Zastąp domyślny język przeglądarki lub wybierz [Wszystkie], aby co minutę przełączać wszystkie języki. |
| `-DragedNodeBackground` | String | — | — | Named | `$null` | Zastąp styl css-color do malowania tła aktualnie przeciąganego węzła |
| `-FocusedNodeBackground` | String | — | — | Named | `$null` | Zastąp styl kolorów CSS do malowania tła zaznaczonego węzła (w centrum) |
| `-FocusedNodeForeground` | String | — | — | Named | `$null` | Nadpisuje styl koloru CSS dla malowania tekstu pierwszego planu skupionego węzła (w centrum) |
| `-UnFocusedNodeBackground` | String | — | — | Named | `$null` | Zastąp styl kolorów CSS do malowania tła zaznaczonego węzła (w centrum) |
| `-UnFocusedNodeForeground` | String | — | — | Named | `$null` | Nadpisz styl css-color dla malowania tekstu pierwszego planu nieaktywnego węzła (w centrum). |
| `-BorderLightColor` | String | — | — | Named | `$null` | Zastąp domyślny styl koloru obramowania css border-light-color |
| `-BorderDarkColor` | String | — | — | Named | `$null` | Zmień domyślny styl koloru obramowania css border-dark-color |
| `-BorderWidth` | Int32 | — | — | Named | `1` | Zastąp domyślną szerokość do malowania obramowań węzłów |
| `-RotationDelaySeconds` | Int32 | — | — | Named | `15` | Zastąp domyślną szerokość opóźnienia rotacji tła |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Otwiera w trybie pełnoekranowym |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ukryj kontrolki przeglądarki |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Zapobiegaj ładowaniu rozszerzeń przeglądarki |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Wyłącz blokadę wyskakujących okienek |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Pomiń znaki sterujące podczas wysyłania klawiszy |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Zapobiegaj powrotowi fokusu klawiatury do PowerShell po wysłaniu klawiszy |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Wyślij Shift+Enter zamiast zwykłego Entera dla przejścia do nowej linii |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Opóźnienie między wysyłaniem różnych sekwencji klawiszy w milisekundach |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Usuwa obramowanie okna przeglądarki. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Ustaw okno przeglądarki na pełny ekran na innym monitorze niż PowerShell lub obok PowerShell na tym samym monitorze. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji SI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Przechowuj ustawienia tylko w trwałych preferencjach, nie wpływając na sesję |

## Examples

### Open-Timeline -Language "English"

```powershell
Open-Timeline -Language "English"
```

Otwiera interaktywną oś czasu z inspirowanymi Van Goghem wizualizacjami w języku angielskim.

### timeline -mon 2

```powershell
timeline -mon 2
```

Otwiera oś czasu na monitorze 2 przy użyciu aliasów.

### Open-Timeline -Private -Chrome -FullScreen

```powershell
Open-Timeline -Private -Chrome -FullScreen
```

Otwiera oś czasu w trybie incognito Chrome na pełnym ekranie.

## Parameter Details

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
### `-Edge`

> Otwiera w przeglądarce Microsoft Edge

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

> Otwiera w Google Chrome

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
### `-Firefox`

> Otwiera w przeglądarce Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
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
### `-Monitor <Int32>`

> Monitor do użycia, 0 = domyślny, -1 = odrzuć, -2 = Skonfigurowany monitor pomocniczy, domyślnie Global:DefaultSecondaryMonitor lub 2, jeśli nie znaleziono

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoFullScreen`

> Nie otwieraj w trybie pełnoekranowym

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nfs`, `nf` |
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
### `-NoApplicationMode`

> Pokaż elementy sterujące przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `na`, `napp`, `noappmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-BrowserExtensions`

> Nie blokuj wczytywania rozszerzeń przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ext`, `Extensions` |
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
### `-PassThru`

> Zwraca obiekt [System.Diagnostics.Process] procesu przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpectateOnly`

> Nie zaczynaj nowej gry, po prostu patrz, jak AI gra.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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

<hr/>
### `-ReturnOnlyURL`

> Po otwarciu przeglądarki internetowej zwróć adres URL

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

> Zastąp domyślny język przeglądarki lub wybierz [Wszystkie], aby co minutę przełączać wszystkie języki.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DragedNodeBackground <String>`

> Zastąp styl css-color do malowania tła aktualnie przeciąganego węzła

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusedNodeBackground <String>`

> Zastąp styl kolorów CSS do malowania tła zaznaczonego węzła (w centrum)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusedNodeForeground <String>`

> Nadpisuje styl koloru CSS dla malowania tekstu pierwszego planu skupionego węzła (w centrum)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UnFocusedNodeBackground <String>`

> Zastąp styl kolorów CSS do malowania tła zaznaczonego węzła (w centrum)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UnFocusedNodeForeground <String>`

> Nadpisz styl css-color dla malowania tekstu pierwszego planu nieaktywnego węzła (w centrum).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BorderLightColor <String>`

> Zastąp domyślny styl koloru obramowania css border-light-color

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BorderDarkColor <String>`

> Zmień domyślny styl koloru obramowania css border-dark-color

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BorderWidth <Int32>`

> Zastąp domyślną szerokość do malowania obramowań węzłów

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RotationDelaySeconds <Int32>`

> Zastąp domyślną szerokość opóźnienia rotacji tła

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `15` |
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

> Usuwa obramowanie okna przeglądarki.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Ustaw okno przeglądarki na pełny ekran na innym monitorze niż PowerShell lub obok PowerShell na tym samym monitorze.

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
## Related Links

- [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GameOfLife.md)
- [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-GenXdevAppCatalog.md)
- [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-ViralSimulation.md)
- [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-Yab.md)
- [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-YabAIBattle.md)
