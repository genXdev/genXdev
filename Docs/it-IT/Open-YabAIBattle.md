# Open-YabAIBattle

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `yabbattle`

## Synopsis

> Apre il gioco YabAI Battle in un browser web.

## Description

Questa funzione avvia il gioco YabAI Battle in un browser web con ampie opzioni di personalizzazione per il posizionamento della finestra, la selezione del browser e la modalità di visualizzazione. Funge da wrapper attorno alla funzione GenXdev\Open-Webbrowser con costruzione di URL specifici per il gioco e gestione dei parametri.

La funzione supporta due modalità di gioco:
- Modalità Battaglia: Avvia una nuova battaglia AI vs AI
- Modalità Spettatore: Guarda battaglie AI esistenti

Le opzioni di posizionamento del browser includono sinistra, destra, in alto, in basso, centrato e modalità a schermo intero con supporto multi-monitor. La funzione gestisce automaticamente le impostazioni della modalità applicazione e la gestione delle estensioni del browser per un'esperienza di gioco ottimale.

## Syntax

```powershell
Open-YabAIBattle [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | La lingua dell'interfaccia di gioco |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | Non iniziare una nuova partita, guarda soltanto l'AI giocare |
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
| `-Monitor` | Int32 | — | — | Named | `-2` | Il monitor da utilizzare, 0 = predefinito, -1 scarta, -2 = secondo monitor configurato, per impostazione predefinita $Global:DefaultSecondaryMonitor o 2 se non trovato |
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
| `-AcceptLang` | String | — | — | Named | — | Imposta l'intestazione http accept-lang del browser |
| `-KeysToSend` | String[] | — | — | Named | — | Tasti da inviare alla finestra del browser, vedere la documentazione per il cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape dei caratteri di controllo durante l'invio dei tasti. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Impedisci di restituire lo stato attivo a PowerShell dopo l'invio dei tasti. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Invia Maiusc+Invio invece del normale Invio per andare a capo quando si inviano i tasti. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Ritardo in millisecondi tra l'invio di ciascun tasto. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Mettere a fuoco la finestra del browser dopo l'apertura |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Porta la finestra del browser in primo piano dopo l'apertura |
| `-Maximize` | SwitchParameter | — | — | Named | — | Ingrandisci la finestra dopo il posizionamento |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Ripristina la finestra allo stato normale dopo il posizionamento |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Ripristina lo stato attivo sulla finestra precedente dopo aver aperto il browser. |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Non riutilizzare la finestra del browser esistente; creane invece una nuova. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Restituisce un oggetto [System.Diagnostics.Process] del processo del browser |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Non aprire il browser web, restituisci solo l'URL |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Dopo aver aperto il browser web, restituisci l'url |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Non aprire in modalità schermo intero |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Mostra i controlli del browser |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Rimuove i bordi della finestra del browser. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Posizionare la finestra del browser a schermo intero su un monitor diverso da PowerShell, oppure affiancata a PowerShell sullo stesso monitor. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative salvate nella sessione per le preferenze AI. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Impostazioni alternative memorizzate nella sessione cancellate per le preferenze AI. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Salva le impostazioni solo nelle preferenze persistenti senza influenzare la sessione. |

## Examples

### Open-YabAIBattle -Edge -Private -NoFullScreen

```powershell
Open-YabAIBattle -Edge -Private -NoFullScreen
```

Apre il gioco YabAI Battle in Microsoft Edge utilizzando la modalità di navigazione in incognito senza schermo intero.

### yabbattle -e -incognito -nfs

```powershell
yabbattle -e -incognito -nfs
```

Apre il gioco utilizzando alias per Edge, modalità incognito e senza schermo intero.

### Open-YabAIBattle -SpectateOnly -Chrome

```powershell
Open-YabAIBattle -SpectateOnly -Chrome
```

Apre il gioco in modalità spettatore utilizzando Google Chrome per guardare le battaglie AI.

### Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left

```powershell
Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left
```

Apre il gioco con l'interfaccia in lingua spagnola posizionata sul lato sinistro del monitor 1.

## Parameter Details

### `-Language <String>`

> La lingua dell'interfaccia di gioco

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpectateOnly`

> Non iniziare una nuova partita, guarda soltanto l'AI giocare

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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

> Il monitor da utilizzare, 0 = predefinito, -1 scarta, -2 = secondo monitor configurato, per impostazione predefinita $Global:DefaultSecondaryMonitor o 2 se non trovato

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
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
| **Default value** | *(none)* |
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

> Escape dei caratteri di controllo durante l'invio dei tasti.

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

> Impedisci di restituire lo stato attivo a PowerShell dopo l'invio dei tasti.

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

> Invia Maiusc+Invio invece del normale Invio per andare a capo quando si inviano i tasti.

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

> Ritardo in millisecondi tra l'invio di ciascun tasto.

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

> Ripristina lo stato attivo sulla finestra precedente dopo aver aperto il browser.

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
### `-NoFullScreen`

> Non aprire in modalità schermo intero

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nfs`, `nf` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoApplicationMode`

> Mostra i controlli del browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `na`, `napp`, `noappmode` |
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

- [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-GameOfLife.md)
- [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-GenXdevAppCatalog.md)
- [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-Timeline.md)
- [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-ViralSimulation.md)
- [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-Yab.md)
