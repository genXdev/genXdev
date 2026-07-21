# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st`

## Synopsis

> Seleziona una scheda del browser dai browser gestiti da Playwright in esecuzione.

## Description

Elenco e selezione delle schede del browser da tutte le istanze del browser gestite da Playwright in esecuzione. Se chiamato senza criteri di selezione, visualizza una tabella di tutte le schede disponibili in tutti i tipi di browser. Supporta la selezione per indice numerico, pattern URL o riferimento diretto alla pagina.

Quando viene selezionata una scheda, imposta $Global:chromeController e $Global:chromeSession per la compatibilità con altri cmdlet Webbrowser.

## Syntax

```powershell
Select-WebbrowserTab [[-Id] <Int32>] [<CommonParameters>]

Select-WebbrowserTab -Name <String> [<CommonParameters>]

Select-WebbrowserTab -ByReference <Object> [<CommonParameters>]

Select-WebbrowserTab [-All] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Force] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Id` | Int32 | — | — | 0 | `-1` | Indice delle schede dall'elenco mostrato *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | Seleziona la prima scheda che contiene questo testo nell'URL *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | Riferimento di pagina diretta da uno stato del browser Playwright *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Filtra le schede alle istanze del browser Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Filtra le schede nelle istanze del browser Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Filtra le schede per istanze del browser basate su Chromium (Edge o Chrome) |
| `-Firefox` | SwitchParameter | — | — | Named | — | Filtra le schede per istanze del browser Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Filtra le schede a tutti i tipi di browser gestiti da Playwright |
| `-Webkit` | SwitchParameter | — | — | Named | — | Filtra le schede nelle istanze del browser WebKit |
| `-All` | SwitchParameter | — | — | Named | — | Mostra schede da tutti i tipi di browser (nessun filtro) |
| `-Force` | SwitchParameter | — | — | Named | — | Salta la conferma e seleziona la prima scheda corrispondente |

## Examples

### Select-WebbrowserTab Lists all open tabs across all Playwright browser types.

```powershell
Select-WebbrowserTab
Lists all open tabs across all Playwright browser types.
```

### Select-WebbrowserTab -Id 2 Selects the tab at index 2 from the list.

```powershell
Select-WebbrowserTab -Id 2
Selects the tab at index 2 from the list.
```

### st -Name "github.com" Selects the first tab whose URL contains "github.com".

```powershell
st -Name "github.com"
Selects the first tab whose URL contains "github.com".
```

### st -Firefox -Id 0 Selects the first tab from the Firefox browser.

```powershell
st -Firefox -Id 0
Selects the first tab from the Firefox browser.
```

## Parameter Details

### `-Id <Int32>`

> Indice delle schede dall'elenco mostrato

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ById |

<hr/>
### `-Name <String>`

> Seleziona la prima scheda che contiene questo testo nell'URL

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | ByName |

<hr/>
### `-ByReference <Object>`

> Riferimento di pagina diretta da uno stato del browser Playwright

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ByReference |

<hr/>
### `-Edge`

> Filtra le schede alle istanze del browser Microsoft Edge

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

> Filtra le schede nelle istanze del browser Google Chrome

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

> Filtra le schede per istanze del browser basate su Chromium (Edge o Chrome)

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

> Filtra le schede per istanze del browser Firefox

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

> Filtra le schede a tutti i tipi di browser gestiti da Playwright

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

> Filtra le schede nelle istanze del browser WebKit

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> Mostra schede da tutti i tipi di browser (nessun filtro)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Salta la conferma e seleziona la prima scheda corrispondente

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

- `PSObject`

## Related Links

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-WebbrowserSideBySide.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Show-WebsiteInAllBrowsers.md)
