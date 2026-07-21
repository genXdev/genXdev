# Show-WebsiteInAllBrowsers

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Apre un URL in più browser contemporaneamente in una disposizione a mosaico.

## Description

Questa funzione crea un layout a mosaico di finestre del browser aprendo l'URL specificato in Chrome, Edge, Firefox e una finestra di navigazione privata. I browser sono disposti in una griglia 2x2:
- Chrome: quadrante in alto a sinistra
- Edge: quadrante in basso a sinistra
- Firefox: quadrante in alto a destra
- Finestra privata: quadrante in basso a destra

Tutti i parametri di Open-Webbrowser sono supportati e passati per controllare il posizionamento, il comportamento e l'aspetto dei browser. La funzione funge da wrapper che applica un posizionamento coerente dei quadranti consentendo la piena personalizzazione dei parametri di avvio del browser.

## Syntax

```powershell
Show-WebsiteInAllBrowsers -Url <String> [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Gli URL da aprire in tutti i browser simultaneamente |
| `-Monitor` | Int32 | — | — | Named | `-1` | Il monitor da utilizzare, 0 = predefinito, -1 scarta, -2 = secondo monitor configurato, per impostazione predefinita $Global:DefaultSecondaryMonitor o 2 se non trovato |
| `-Width` | Int32 | — | — | Named | `-1` | La larghezza iniziale della finestra del browser web |
| `-Height` | Int32 | — | — | Named | `-1` | L'altezza iniziale della finestra del browser web |
| `-X` | Int32 | — | — | Named | `-999999` | La posizione X iniziale della finestra del browser web |
| `-Y` | Int32 | — | — | Named | `-999999` | La posizione Y iniziale della finestra del browser web |
| `-AcceptLang` | String | — | — | Named | — | Imposta l'intestazione http accept-lang del browser |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Si apre in modalità a schermo intero |
| `-Private` | SwitchParameter | — | — | Named | — | Apre in modalità di navigazione in incognito/privata |
| `-Force` | SwitchParameter | — | — | Named | — | Forza l'abilitazione della porta di debug, fermando i browser esistenti se necessario |
| `-Edge` | SwitchParameter | — | — | Named | — | Si apre in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Si apre in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Si apre in Microsoft Edge o Google Chrome, a seconda di quale sia il browser predefinito |
| `-Firefox` | SwitchParameter | — | — | Named | — | Si apre in Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Usa il browser gestito da Playwright invece del browser installato nel sistema operativo |
| `-Webkit` | SwitchParameter | — | — | Named | — | Apre il browser WebKit gestito da Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Esegui il browser senza una finestra visibile |
| `-All` | SwitchParameter | — | — | Named | — | Si apre in tutti i browser moderni registrati |
| `-Left` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser sul lato sinistro dello schermo |
| `-Right` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser sul lato destro dello schermo |
| `-Top` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser nella parte superiore dello schermo |
| `-Bottom` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser sul lato inferiore dello schermo |
| `-Centered` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser al centro dello schermo |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Nascondi i controlli del browser |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Impedisce il caricamento delle estensioni del browser |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disabilita il blocco dei popup |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Ripristina il focus della finestra di PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Non riutilizzare la finestra del browser esistente; creane invece una nuova. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Mettere a fuoco la finestra del browser dopo l'apertura |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Porta la finestra del browser in primo piano dopo l'apertura |
| `-Maximize` | SwitchParameter | — | — | Named | — | Ingrandisci la finestra dopo il posizionamento |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Ripristina la finestra allo stato normale dopo il posizionamento |
| `-KeysToSend` | String[] | — | — | Named | — | Tasti da inviare alla finestra del browser, vedere la documentazione per il cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape dei caratteri di controllo durante l'invio delle chiavi |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Impedisci di restituire lo stato attivo della tastiera a PowerShell dopo l'invio dei tasti |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Invia Maiusc+Invio invece del normale Invio per interruzioni di riga |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Ritardo in millisecondi tra l'invio di diverse sequenze di tasti |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Rimuove i bordi della finestra del browser. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Posizionare la finestra del browser a schermo intero su un monitor diverso da PowerShell, oppure affiancata a PowerShell sullo stesso monitor. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative salvate nella sessione per le preferenze AI. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Impostazioni alternative memorizzate nella sessione cancellate per le preferenze AI. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione. |

## Examples

### Show-WebsiteInAllBrowsers -Url "https://www.github.com" Opens github.com in four different browsers arranged in a mosaic layout.

```powershell
Show-WebsiteInAllBrowsers -Url "https://www.github.com"
Opens github.com in four different browsers arranged in a mosaic layout.
```

### "https://www.github.com" | Show-UrlInAllBrowsers Uses the function's alias and pipeline input to achieve the same result.

```powershell
"https://www.github.com" | Show-UrlInAllBrowsers
Uses the function's alias and pipeline input to achieve the same result.
```

## Parameter Details

### `-Url <String>`

> Gli URL da aprire in tutti i browser simultaneamente

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Value`, `Uri`, `FullName`, `Website`, `WebsiteUrl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Il monitor da utilizzare, 0 = predefinito, -1 scarta, -2 = secondo monitor configurato, per impostazione predefinita $Global:DefaultSecondaryMonitor o 2 se non trovato

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> La larghezza iniziale della finestra del browser web

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

> L'altezza iniziale della finestra del browser web

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

> La posizione X iniziale della finestra del browser web

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

> La posizione Y iniziale della finestra del browser web

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

> Imposta l'intestazione http accept-lang del browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> Si apre in modalità a schermo intero

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

> Apre in modalità di navigazione in incognito/privata

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

> Forza l'abilitazione della porta di debug, fermando i browser esistenti se necessario

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

> Si apre in Microsoft Edge

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

> Si apre in Google Chrome

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

> Si apre in Microsoft Edge o Google Chrome, a seconda di quale sia il browser predefinito

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

> Si apre in Firefox

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

> Usa il browser gestito da Playwright invece del browser installato nel sistema operativo

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

> Apre il browser WebKit gestito da Playwright. Implica -PlayWright

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

> Esegui il browser senza una finestra visibile

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

> Si apre in tutti i browser moderni registrati

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Posiziona la finestra del browser sul lato sinistro dello schermo

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

> Posiziona la finestra del browser sul lato destro dello schermo

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

> Posiziona la finestra del browser nella parte superiore dello schermo

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

> Posiziona la finestra del browser sul lato inferiore dello schermo

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

> Posiziona la finestra del browser al centro dello schermo

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

> Nascondi i controlli del browser

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

> Impedisce il caricamento delle estensioni del browser

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

> Disabilita il blocco dei popup

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Ripristina il focus della finestra di PowerShell

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

> Non riutilizzare la finestra del browser esistente; creane invece una nuova.

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

> Mettere a fuoco la finestra del browser dopo l'apertura

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

> Porta la finestra del browser in primo piano dopo l'apertura

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

> Ingrandisci la finestra dopo il posizionamento

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

> Ripristina la finestra allo stato normale dopo il posizionamento

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Tasti da inviare alla finestra del browser, vedere la documentazione per il cmdlet GenXdev\Send-Key

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

> Escape dei caratteri di controllo durante l'invio delle chiavi

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

> Impedisci di restituire lo stato attivo della tastiera a PowerShell dopo l'invio dei tasti

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

> Invia Maiusc+Invio invece del normale Invio per interruzioni di riga

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

> Ritardo in millisecondi tra l'invio di diverse sequenze di tasti

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

> Rimuove i bordi della finestra del browser.

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

> Posizionare la finestra del browser a schermo intero su un monitor diverso da PowerShell, oppure affiancata a PowerShell sullo stesso monitor.

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

> Utilizza impostazioni alternative salvate nella sessione per le preferenze AI.

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

> Impostazioni alternative memorizzate nella sessione cancellate per le preferenze AI.

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

> Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione.

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
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-WebbrowserTabLocation.md)
