# Open-SimularWebSiteInfo

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `simularsite`

## Synopsis

> Apre le informazioni del sito web SimilarWeb per gli URL specificati in un browser web.

## Description

Apre una query "Similar web" in un browser web in modo configurabile utilizzando parametri da riga di comando. Consente di controllare le analisi dei siti web e i confronti per l'analisi del traffico dei siti web, la ricerca competitiva e approfondimenti di marketing digitale.

## Syntax

```powershell
Open-SimularWebSiteInfo -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Gli URL dei siti web da analizzare su SimilarWeb |
| `-Language` | String | — | — | 1 | — | La lingua dei risultati di ricerca restituiti |
| `-Monitor` | Int32 | — | — | Named | `-1` | Il monitor da utilizzare, 0 = predefinito, -1 è scartato, -2 = Monitor secondario configurato, default a -1, nessun posizionamento |
| `-Width` | Int32 | — | — | Named | `-1` | La larghezza iniziale della finestra del browser web |
| `-Height` | Int32 | — | — | Named | `-1` | L'altezza iniziale della finestra del browser web |
| `-X` | Int32 | — | — | Named | `-999999` | La posizione X iniziale della finestra del browser web |
| `-Y` | Int32 | — | — | Named | `-999999` | La posizione Y iniziale della finestra del browser web |
| `-Left` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser sul lato sinistro dello schermo |
| `-Right` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser sul lato destro dello schermo |
| `-Top` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser nella parte superiore dello schermo |
| `-Bottom` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser sul lato inferiore dello schermo |
| `-Centered` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser al centro dello schermo |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Si apre in modalità a schermo intero |
| `-Private` | SwitchParameter | — | — | Named | — | Apre in modalità di navigazione in incognito/privata |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Rimuove i bordi della finestra del browser. |
| `-Force` | SwitchParameter | — | — | Named | — | Forza l'abilitazione della porta di debug, fermando i browser esistenti se necessario |
| `-Edge` | SwitchParameter | — | — | Named | — | Si apre in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Si apre in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Si apre in Microsoft Edge o Google Chrome, a seconda di quale sia il browser predefinito |
| `-Firefox` | SwitchParameter | — | — | Named | — | Si apre in Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Usa il browser gestito da Playwright invece del browser installato nel sistema operativo |
| `-Webkit` | SwitchParameter | — | — | Named | — | Apre il browser WebKit gestito da Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Esegui il browser senza una finestra visibile |
| `-All` | SwitchParameter | — | — | Named | — | Si apre in tutti i browser moderni registrati |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Nascondi i controlli del browser |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Impedisce il caricamento delle estensioni del browser |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disabilita il blocco dei popup |
| `-AcceptLang` | String | — | — | Named | `$null` | Imposta l'intestazione http accept-lang del browser |
| `-KeysToSend` | String[] | — | — | Named | — | Tasti da inviare alla finestra del browser, vedere la documentazione per il cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape dei caratteri di controllo e modificatori quando si inviano i tasti |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantenere il focus della tastiera sulla finestra di destinazione quando si inviano tasti |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Usa Shift+Invio invece di Invio quando invii i tasti |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Ritardo tra le diverse stringhe di input in millisecondi quando si inviano i tasti |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Mettere a fuoco la finestra del browser dopo l'apertura |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Porta la finestra del browser in primo piano dopo l'apertura |
| `-Maximize` | SwitchParameter | — | — | Named | — | Ingrandisci la finestra dopo il posizionamento |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Ripristina la finestra allo stato normale dopo il posizionamento |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Ripristina il focus della finestra di PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Non riutilizzare la finestra del browser esistente; creane invece una nuova. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Restituisce un oggetto PowerShell del processo del browser |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Non aprire il browser web, restituisci solo l'URL |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Dopo aver aperto il browser web, restituisci l'url |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Posizionare la finestra del browser a schermo intero su un monitor diverso da PowerShell, oppure affiancata a PowerShell sullo stesso monitor. |

## Examples

### Open-SimularWebSiteInfo -Queries "google.com" -Monitor 0

```powershell
Open-SimularWebSiteInfo -Queries "google.com" -Monitor 0
```

Apre un'analisi SimilarWeb per Google.com sul monitor principale.

### simularsite google.com -mon 0

```powershell
simularsite google.com -mon 0
```

Apre un'analisi SimilarWeb utilizzando l'alias della funzione con posizionamento del monitor.

### "microsoft.com", "apple.com" | Open-SimularWebSiteInfo -Language "English" -Centered

```powershell
"microsoft.com", "apple.com" | Open-SimularWebSiteInfo -Language "English" -Centered
```

Analizza più siti web attraverso l'input della pipeline con posizionamento centrato della finestra.

### Open-SimularWebSiteInfo -Queries "github.com" -ReturnURL

```powershell
Open-SimularWebSiteInfo -Queries "github.com" -ReturnURL
```

Restituisce l'URL di SimilarWeb per GitHub senza aprire il browser.

## Parameter Details

### `-Queries <String[]>`

> Gli URL dei siti web da analizzare su SimilarWeb

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> La lingua dei risultati di ricerca restituiti

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Il monitor da utilizzare, 0 = predefinito, -1 è scartato, -2 = Monitor secondario configurato, default a -1, nessun posizionamento

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
### `-AcceptLang <String>`

> Imposta l'intestazione http accept-lang del browser

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

> Escape dei caratteri di controllo e modificatori quando si inviano i tasti

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

> Mantenere il focus della tastiera sulla finestra di destinazione quando si inviano tasti

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

> Usa Shift+Invio invece di Invio quando invii i tasti

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

> Ritardo tra le diverse stringhe di input in millisecondi quando si inviano i tasti

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
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
### `-PassThru`

> Restituisce un oggetto PowerShell del processo del browser

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

> Non aprire il browser web, restituisci solo l'URL

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

> Dopo aver aperto il browser web, restituisci l'url

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

> Utilizza impostazioni alternative memorizzate nella sessione per le preferenze AI

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

> Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI

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

> Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
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
## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-BuiltWithSiteInfo.md)
- [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-GithubQuery.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-SearchEngine.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-YoutubeQuery.md)
