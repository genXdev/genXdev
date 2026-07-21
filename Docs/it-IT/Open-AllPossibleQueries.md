# Open-AllPossibleQueries

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** `qq`

## Synopsis

> Apre tutti i tipi di query possibili per i termini di ricerca o gli URL forniti.

## Description

Esegue tutti i cmdlet che gestiscono le query di pagine web, elaborando sia gli URL che i termini di ricerca. Per gli URL, esegue query specifiche del sito, mentre per i termini di ricerca esegue query web generali. Questa funzione scopre ed esegue dinamicamente tutti i cmdlet di query disponibili della famiglia di moduli GenXdev.Queries.

## Syntax

```powershell
Open-AllPossibleQueries -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | La query da eseguire. |
| `-Language` | String | — | — | 2 | — | La lingua dei risultati di ricerca restituiti |
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
| `-Monitor` | Int32 | — | — | Named | `-1` | Il monitor da utilizzare, 0 = predefinito, -1 è scartato, -2 = Monitor secondario configurato, default a -1, nessun posizionamento |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Si apre in modalità a schermo intero |
| `-Width` | Int32 | — | — | Named | `-1` | La larghezza iniziale della finestra del browser web |
| `-Height` | Int32 | — | — | Named | `-1` | L'altezza iniziale della finestra del browser web |
| `-X` | Int32 | — | — | Named | `-999999` | La posizione X iniziale della finestra del browser web |
| `-Y` | Int32 | — | — | Named | `-999999` | La posizione Y iniziale della finestra del browser web |
| `-Left` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser sul lato sinistro dello schermo |
| `-Right` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser sul lato destro dello schermo |
| `-Top` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser nella parte superiore dello schermo |
| `-Bottom` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser sul lato inferiore dello schermo |
| `-Centered` | SwitchParameter | — | — | Named | — | Posiziona la finestra del browser al centro dello schermo |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Nascondi i controlli del browser |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Impedisce il caricamento delle estensioni del browser |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disabilita il blocco dei popup |
| `-AcceptLang` | String | — | — | Named | `$null` | Imposta l'intestazione http accept-lang del browser |
| `-KeysToSend` | String[] | — | — | Named | — | Tasti da inviare alla finestra del browser, vedere la documentazione per il cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Mettere a fuoco la finestra del browser dopo l'apertura |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Porta la finestra del browser in primo piano dopo l'apertura |
| `-Maximize` | SwitchParameter | — | — | Named | — | Ingrandisci la finestra dopo il posizionamento |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Ripristina la finestra allo stato normale dopo il posizionamento |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Ripristina il focus della finestra di PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Non riutilizzare la finestra del browser esistente; creane invece una nuova. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Restituisce un oggetto [System.Diagnostics.Process] del processo del browser |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Non aprire il browser web, restituisci solo l'URL |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Dopo aver aperto il browser web, restituisci l'url |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape dei caratteri di controllo durante l'invio delle chiavi |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Impedisci di restituire lo stato attivo della tastiera a PowerShell dopo l'invio dei tasti |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Invia Maiusc+Invio invece del normale Invio per interruzioni di riga |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Ritardo in millisecondi tra l'invio di diverse sequenze di tasti |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Rimuove i bordi della finestra del browser. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza la modalità solo sessione per il profilo del browser. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Cancella la sessione del browser prima di aprire. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salta il ripristino della sessione del browser. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Posizionare la finestra del browser a schermo intero su un monitor diverso da PowerShell, oppure affiancata a PowerShell sullo stesso monitor. |

## Examples

### Open-AllPossibleQueries -Queries "powershell scripting" -Monitor 0

```powershell
Open-AllPossibleQueries -Queries "powershell scripting" -Monitor 0
```

Apre tutti i tipi di query possibili per "powershell scripting" sul monitor predefinito.

### qq "https://github.com" -m -1

```powershell
qq "https://github.com" -m -1
```

Apre tutti i possibili tipi di query per l'URL di GitHub utilizzando alias e parametri brevi.

## Parameter Details

### `-Queries <String[]>`

> La query da eseguire.

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
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-ShowWindow`

> Si apre in modalità a schermo intero

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

> Restituisce un oggetto [System.Diagnostics.Process] del processo del browser

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
### `-SessionOnly`

> Utilizza la modalità solo sessione per il profilo del browser.

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

> Cancella la sessione del browser prima di aprire.

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

> Salta il ripristino della sessione del browser.

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

- [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertTo-Uris.md)
