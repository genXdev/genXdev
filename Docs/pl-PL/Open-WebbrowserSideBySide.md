# Open-WebbrowserSideBySide

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wbn`

## Synopsis

> Uruchamia nowe okno przeglądarki z określonym pozycjonowaniem.

## Description

Otwiera nowe okno przeglądarki (Edge lub Chrome) umieszczone po prawej stronie głównego monitora w trybie tła.

## Syntax

```powershell
Open-WebbrowserSideBySide [[-Url] <String[]>] [[-Monitor] <Int32>] [-AcceptLang <String>] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String[] | — | ✅ (ByValue) | 0 | — | Adresy URL do otwarcia w przeglądarce |
| `-Monitor` | Int32 | — | — | 1 | `-2` | Monitor do użycia, 0 = domyślny, -1 = odrzuć, -2 = skonfigurowany monitor dodatkowy, domyślnie $Global:DefaultSecondaryMonitor lub 2, jeśli nie znaleziono |
| `-Width` | Int32 | — | — | Named | `-1` | Początkowa szerokość okna przeglądarki internetowej |
| `-Height` | Int32 | — | — | Named | `-1` | Początkowa wysokość okna przeglądarki internetowej |
| `-X` | Int32 | — | — | Named | `-999999` | Początkowa pozycja X okna przeglądarki internetowej |
| `-Y` | Int32 | — | — | Named | `-999999` | Początkowa pozycja Y okna przeglądarki internetowej |
| `-AcceptLang` | String | — | — | Named | `$null` | Ustaw nagłówek http accept-lang przeglądarki |
| `-Force` | SwitchParameter | — | — | Named | — | Wymuś włączenie portu debugowania, zatrzymując istniejące przeglądarki, jeśli to konieczne |
| `-Edge` | SwitchParameter | — | — | Named | — | Otwiera w przeglądarce Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Otwiera w Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Otwiera w Microsoft Edge lub Google Chrome, w zależności od tego, która przeglądarka jest domyślna |
| `-Firefox` | SwitchParameter | — | — | Named | — | Otwiera w przeglądarce Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Użyj przeglądarki zarządzanej przez Playwright zamiast przeglądarki zainstalowanej w systemie operacyjnym |
| `-Webkit` | SwitchParameter | — | — | Named | — | Otwiera przeglądarkę WebKit zarządzaną przez Playwright. Implikuje użycie -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Uruchom przeglądarkę bez widocznego okna |
| `-Left` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki po lewej stronie ekranu |
| `-Right` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki po prawej stronie ekranu |
| `-Top` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki na górnej krawędzi ekranu |
| `-Bottom` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki na dolnej krawędzi ekranu |
| `-Centered` | SwitchParameter | — | — | Named | — | Umieść okno przeglądarki na środku ekranu |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Otwiera w trybie pełnoekranowym |
| `-Private` | SwitchParameter | — | — | Named | — | Otwiera w trybie incognito/prywatnym |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ukryj kontrolki przeglądarki |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Zapobiegaj ładowaniu rozszerzeń przeglądarki |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Wyłącz blokadę wyskakujących okienek |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Nie używaj ponownie istniejącego okna przeglądarki, zamiast tego utwórz nowe. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Ustaw fokus na oknie przeglądarki po otwarciu |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Ustaw okno przeglądarki na pierwszym planie po otwarciu |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maksymalizuj okno po pozycjonowaniu |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Przywróć okno do normalnego stanu po pozycjonowaniu |
| `-PassThru` | SwitchParameter | — | — | Named | — | Zwraca obiekt PowerShell procesu przeglądarki |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Usuwa obramowanie okna |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Przywróć fokus okna PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Ustaw okno przeglądarki na pełnym ekranie na innym monitorze niż PowerShell lub obok siebie z PowerShell na tym samym monitorze |
| `-KeysToSend` | String[] | — | — | Named | — | Naciśnięcia klawiszy do wysłania do okna, patrz dokumentacja polecenia cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Uciekaj przed znakami kontrolnymi i modyfikatorami podczas wysyłania klawiszy |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Utrzymaj fokus klawiatury na docelowym oknie podczas wysyłania klawiszy |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Użyj Shift+Enter zamiast Enter podczas wysyłania klawiszy |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Opóźnienie między różnymi ciągami wejściowymi w milisekundach podczas wysyłania klawiszy |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji SI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Przechowuj ustawienia tylko w trwałych preferencjach, nie wpływając na sesję |

## Examples

### wbn -Edge

```powershell
wbn -Edge
```

### wbn -ch ###################################################################

```powershell
wbn -ch
###################################################################
```

## Parameter Details

### `-Url <String[]>`

> Adresy URL do otwarcia w przeglądarce

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | `Value`, `Uri`, `FullName`, `Website`, `WebsiteUrl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Monitor do użycia, 0 = domyślny, -1 = odrzuć, -2 = skonfigurowany monitor dodatkowy, domyślnie $Global:DefaultSecondaryMonitor lub 2, jeśli nie znaleziono

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
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
### `-PassThru`

> Zwraca obiekt PowerShell procesu przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Usuwa obramowanie okna

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
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
### `-SideBySide`

> Ustaw okno przeglądarki na pełnym ekranie na innym monitorze niż PowerShell lub obok siebie z PowerShell na tym samym monitorze

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Naciśnięcia klawiszy do wysłania do okna, patrz dokumentacja polecenia cmdlet GenXdev\Send-Key

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

> Uciekaj przed znakami kontrolnymi i modyfikatorami podczas wysyłania klawiszy

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

> Utrzymaj fokus klawiatury na docelowym oknie podczas wysyłania klawiszy

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

> Użyj Shift+Enter zamiast Enter podczas wysyłania klawiszy

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

> Opóźnienie między różnymi ciągami wejściowymi w milisekundach podczas wysyłania klawiszy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
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
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-Webbrowser.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-WebsiteInAllBrowsers.md)
