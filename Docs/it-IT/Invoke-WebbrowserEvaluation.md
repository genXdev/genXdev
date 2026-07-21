# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Esegue codice JavaScript in una scheda del browser selezionata.

## Description

<details>
<summary><b>Expand description</b></summary>

Esegue codice JavaScript in una scheda del browser selezionata con supporto per async/await,
promise e sincronizzazione dei dati tra PowerShell e il contesto del browser.
Può eseguire codice da stringhe, file o URL.

Questa funzione fornisce accesso completo alle API del browser inclusi IndexedDB,
localStorage, sessionStorage e altre funzionalità della piattaforma web. Include
gestione degli errori incorporata, gestione dei timeout e supporto per la restituzione
di più risultati da funzioni generatrici.

La funzione utilizza Playwright per l'automazione del browser, che fornisce accesso
privilegiato che bypassa le restrizioni di sicurezza JavaScript standard nel contesto
della pagina corrente. Ciò consente l'accesso alle API di archiviazione, risorse
cross-origin (nella stessa scheda) e altre funzionalità del browser che normalmente
sarebbero limitate nei contesti web standard.

Capacità principali:
- Supporto async/await e Promise
- Funzioni generatrici con supporto yield
- Sincronizzazione dei dati tramite $Global:Data
- Accesso privilegiato alle API di archiviazione del browser
- Bypassa le restrizioni della politica same-origin per la memoria della pagina corrente
- Enumerazione ed estrazione dati da IndexedDB
- Manipolazione del DOM e accesso alle API web
- Gestione degli errori e dei timeout

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Codice JavaScript, percorso file o URL da eseguire |
| `-Inspect` | SwitchParameter | — | — | Named | — | Interrompi nel debugger del browser prima di eseguire |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Impedisci la selezione automatica della scheda |
| `-Edge` | SwitchParameter | — | — | Named | — | Utilizza il browser Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Usa il browser Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Usa Microsoft Edge o Google Chrome, a seconda di quale sia il browser predefinito |
| `-Firefox` | SwitchParameter | — | — | Named | — | Utilizza il browser Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Utilizzare il browser WebKit gestito da Playwright |
| `-Page` | Object | — | — | Named | — | Riferimento all'oggetto della pagina del browser |
| `-ByReference` | PSObject | — | — | Named | — | Oggetto di riferimento della sessione del browser |

## Examples

### // Execute simple JavaScript Invoke-WebbrowserEvaluation "document.title = 'hello world'"

```powershell
// Execute simple JavaScript
Invoke-WebbrowserEvaluation "document.title = 'hello world'"
```

### PS>

```powershell
PS>
```

// Sincronizzazione dei dati
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Titolo del documento : $($Global:Data.title)
    Valore restituito   : $Number
";

### PS>

```powershell
PS>
```

Supporto per le promise
Select-WebbrowserTab -Force;
Invoke-WebbrowserEvaluation "
    let myList = [];
    return new Promise((resolve) => {
        let i = 0;
        let a = setInterval(() => {
            myList.push(++i);
            if (i == 10) {
                clearInterval(a);
                resolve(myList);
            }
        }, 1000);
    });
"

### PS>

```powershell
PS>
```

// Supporto per promise e altro ancora

// questa funzione restituisce tutte le righe di tutti i tabelle/datastore di tutti i database di indexedDb nella scheda selezionata
// attenzione, non tutti i siti web utilizzano indexedDb, potrebbe restituire un insieme vuoto

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // enumera tutti i database indexedDB
    for (let db of await indexedDB.databases()) {

        // richiesta di apertura del database
        let openRequest = await indexedDB.open(db.name);

        // attesa della chiamata degli eventi
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // ottieni il riferimento
        let openedDb = openRequest.result;

        // inizializza il risultato
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // itera sui nomi degli object store
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // riferimento
            let storeName = openedDb.objectStoreNames[i];

            // avvia una transazione di sola lettura
            let tr = openedDb.transaction(storeName);

            // ottieni il handle dell'object store
            let store = tr.objectStore(storeName);

            // richiedi tutti i dati
            let getRequest = store.getAll();

            // attendi il risultato
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // aggiungi il risultato
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // invia questo contenuto del database al pipeline PowerShell e continua
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// NOTA DI SICUREZZA: Questo esempio di base funziona perché il modulo utilizza Playwright
// per l'automazione del browser, che bypassa le normali restrizioni di sicurezza JavaScript
// nel contesto della pagina corrente. Le pagine web standard non possono accedere a IndexedDB da
// altre origini, ma Playwright ha gli stessi privilegi del sito web stesso.
// Vedi l'esempio avanzato qui sotto per maggiori dettagli sulle considerazioni di sicurezza.

### PS>

```powershell
PS>
```

// Enumerazione IndexedDB migliorata con metadati e gestione degli errori

// Questo approccio migliorato fornisce un'estrazione più completa dei dati IndexedDB, inclusi
// conteggi dei database, gestione degli errori e metadati. A differenza dell'esempio base precedente, questa
// versione gestisce le restrizioni di sicurezza, fornisce informazioni dettagliate sugli store e
// include i conteggi dei record senza necessariamente recuperare tutti i dati.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Enumerazione IndexedDB migliorata con gestione completa degli errori
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Apri database con timeout
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Timeout apertura database')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Elabora ogni object store
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Ottieni il conteggio dei record (più veloce che recuperare tutti i dati)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Timeout conteggio')), 3000);
                    });

                    dbResult.Stores.push({
                        StoreName: storeName,
                        RecordCount: count,
                        KeyPath: store.keyPath,
                        AutoIncrement: store.autoIncrement,
                        IndexNames: Array.from(store.indexNames)
                    });

                } catch (storeError) {
                    dbResult.Stores.push({
                        StoreName: storeName,
                        Error: storeError.message
                    });
                }
            }

            results.push(dbResult);
            db.close();

        } catch (dbError) {
            results.push({
                DatabaseName: dbInfo.name,
                Error: dbError.message
            });
        }
    }

    yield results;
";

$EnhancedIndexedDbData | ConvertTo-Json -Depth 10

// Differenze chiave rispetto all'esempio base:
// 1. Include la gestione degli errori per problemi di accesso al database
// 2. Fornisce metadati (KeyPath, AutoIncrement, IndexNames)
// 3. Ottiene i conteggi dei record senza recuperare tutti i dati (più efficiente)
// 4. Gestisce scenari di timeout
// 5. Restituisce informazioni strutturate sullo schema del database
// 6. Più adatto per database di grandi dimensioni dove recuperare tutti i dati sarebbe lento

// CONSIDERAZIONI SULLA SICUREZZA PER L'ACCESSO A INDEXEDDB:
// Entrambi gli esempi funzionano perché questo modulo utilizza l'automazione del browser Playwright,
// che bypassa le restrizioni di sicurezza JavaScript standard nel contesto
// della pagina corrente:

// Limitazioni JavaScript standard:
// - La policy same-origin limita l'accesso a IndexedDB da altre origini
// - Alcuni database possono essere nascosti o protetti dalle funzionalità di sicurezza del browser
// - L'accesso cross-origin ai database è generalmente bloccato
// - I database dei service worker possono avere protezioni aggiuntive

// Come questo esempio bypassa le restrizioni:
// - Utilizza l'automazione del browser Playwright per l'accesso privilegiato
// - Esegue nel contesto della pagina effettiva, non in un ambiente sandbox
// - Ha gli stessi permessi del sito web per il proprio storage
// - Può accedere a tutti i database creati dall'origine/dominio corrente

// Limitazioni:
// - Non può accedere a database da altre origini/domini nello stesso browser
// - Non può accedere a database da altri profili browser o navigazione privata
// - Alcune estensioni del browser possono creare storage isolato non accessibile tramite JavaScript

// Approcci alternativi per il massimo accesso:
// - Usare GenXdev.Webbrowser con più schede da diverse origini
// - Combinare con l'accesso al filesystem delle directory del profilo browser (quando possibile)
// - Usare l'automazione del browser per navigare tra diversi domini

### PS>

```powershell
PS>
```

Supporto per i risultati del pipeline generati
Select-WebbrowserTab -Force;
Invoke-WebbrowserEvaluation "

    for (let i = 0; i < 10; i++) {

        await (new Promise((resolve) => setTimeout(resolve, 1000)));

        yield i;
    }
";

### PS> Get-ChildItem *.js | Invoke-WebbrowserEvaluation -Edge

```powershell
PS> Get-ChildItem *.js | Invoke-WebbrowserEvaluation -Edge
```

### PS> ls *.js | et -e

```powershell
PS> ls *.js | et -e
```

## Parameter Details

### `-Scripts <Object[]>`

> Codice JavaScript, percorso file o URL da eseguire

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Inspect`

> Interrompi nel debugger del browser prima di eseguire

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

> Riferimento all'oggetto della pagina del browser

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

> Oggetto di riferimento della sessione del browser

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
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Show-WebsiteInAllBrowsers.md)
