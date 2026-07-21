# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl`

## Synopsis

> Interroga e manipola nodi DOM nella scheda attiva del browser utilizzando selettori CSS.

## Description

Utilizza l'automazione del browser per trovare elementi corrispondenti a un selettore CSS e restituisce il loro contenuto HTML o esegue JavaScript personalizzato su ciascun elemento corrispondente. Questa funzione è utile per lo scraping web e le attività di automazione del browser.

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | La stringa o l'array di stringhe del selettore di query da utilizzare per selezionare i nodi DOM |
| `-ModifyScript` | String | — | — | 1 | `''` | Lo script per modificare l'output del selettore di query, ad esempio e.outerHTML o e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Utilizza il browser Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Usa il browser Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Usa Microsoft Edge o Google Chrome, a seconda di quale sia il browser predefinito |
| `-Firefox` | SwitchParameter | — | — | Named | — | Utilizza il browser Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Utilizzare il browser WebKit gestito da Playwright |
| `-Page` | Object | — | — | Named | — | Riferimento all'oggetto pagina del browser per il targeting di una scheda specifica |
| `-ByReference` | PSObject | — | — | Named | — | Oggetto di riferimento per la sessione del browser per riutilizzare una sessione del browser esistente |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Impedisci la selezione automatica della scheda |

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

> La stringa o l'array di stringhe del selettore di query da utilizzare per selezionare i nodi DOM

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

> Lo script per modificare l'output del selettore di query, ad esempio e.outerHTML o e.outerHTML='hello world'

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

> Utilizza il browser Microsoft Edge

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

> Usa il browser Google Chrome

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

> Usa Microsoft Edge o Google Chrome, a seconda di quale sia il browser predefinito

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

> Utilizza il browser Firefox

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

> Utilizzare il browser WebKit gestito da Playwright

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

> Riferimento all'oggetto pagina del browser per il targeting di una scheda specifica

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

> Oggetto di riferimento per la sessione del browser per riutilizzare una sessione del browser esistente

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

> Impedisci la selezione automatica della scheda

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-Webbrowser.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Show-WebsiteInAllBrowsers.md)
