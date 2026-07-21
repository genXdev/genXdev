# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl`

## Synopsis

> Wykonuje zapytania i manipuluje węzłami DOM w aktywnej karcie przeglądarki za pomocą selektorów CSS.

## Description

Używa automatyzacji przeglądarki do znalezienia elementów pasujących do selektora CSS i zwraca ich zawartość HTML lub wykonuje niestandardowy JavaScript na każdym znalezionym elemencie. Ta funkcja jest przydatna do scrapowania stron internetowych i zadań automatyzacji przeglądarki.

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | Ciąg lub tablica ciągów selektora zapytania używana do wyboru węzłów DOM |
| `-ModifyScript` | String | — | — | 1 | `''` | Skrypt do modyfikacji wyniku selektora zapytań, np. e.outerHTML lub e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Użyj przeglądarki Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Użyj przeglądarki Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Użyj Microsoft Edge lub Google Chrome, w zależności od tego, która przeglądarka jest domyślna |
| `-Firefox` | SwitchParameter | — | — | Named | — | Użyj przeglądarki Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Użyj przeglądarki WebKit zarządzanej przez Playwright |
| `-Page` | Object | — | — | Named | — | Odwołanie do obiektu strony przeglądarki do kierowania na konkretną kartę |
| `-ByReference` | PSObject | — | — | Named | — | Obiekt referencyjny sesji przeglądarki do ponownego wykorzystania istniejącej sesji przeglądarki |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Zapobiegaj automatycznemu wybieraniu karty |

## Examples

### Get HTML of all header divs Get-WebbrowserTabDomNodes -QuerySelector "div.header"

```powershell
Get HTML of all header divs
Get-WebbrowserTabDomNodes -QuerySelector "div.header"
```

### Pause all videos on the page wl "video" "e.pause()"

```powershell
Pause all videos on the page
wl "video" "e.pause()"
```

## Parameter Details

### `-QuerySelector <String[]>`

> Ciąg lub tablica ciągów selektora zapytania używana do wyboru węzłów DOM

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifyScript <String>`

> Skrypt do modyfikacji wyniku selektora zapytań, np. e.outerHTML lub e.outerHTML='hello world'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Użyj przeglądarki Microsoft Edge

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

> Użyj przeglądarki Google Chrome

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

> Użyj Microsoft Edge lub Google Chrome, w zależności od tego, która przeglądarka jest domyślna

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

> Użyj przeglądarki Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Użyj przeglądarki WebKit zarządzanej przez Playwright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Object>`

> Odwołanie do obiektu strony przeglądarki do kierowania na konkretną kartę

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ByReference <PSObject>`

> Obiekt referencyjny sesji przeglądarki do ponownego wykorzystania istniejącej sesji przeglądarki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoAutoSelectTab`

> Zapobiegaj automatycznemu wybieraniu karty

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Webbrowser.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-WebsiteInAllBrowsers.md)
