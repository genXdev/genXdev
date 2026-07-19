# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> Voert JavaScript-code uit in een geselecteerd webbrowsertabblad.

## Description

<details>
<summary><b>Expand description</b></summary>

Voert JavaScript-code uit in een geselecteerd browsertabblad met ondersteuning voor async/await,
promises en gegevenssynchronisatie tussen PowerShell en de browsercontext.
Kan code uitvoeren vanaf strings, bestanden of URL's.

Deze functie biedt uitgebreide toegang tot browser-API's, waaronder IndexedDB,
localStorage, sessionStorage en andere webplatformfuncties. Het bevat
ingebouwde foutafhandeling, time-outbeheer en ondersteuning voor het opleveren van meerdere
resultaten van generatorfuncties.

De functie maakt gebruik van Playwright voor browserautomatisering, wat bevoorrechte
toegang biedt die de standaard JavaScript-beveiligingsbeperkingen in de context
van de huidige pagina omzeilt. Dit maakt toegang mogelijk tot opslag-API's, cross-origin
bronnen (binnen hetzelfde tabblad) en andere browserfuncties die normaal
beperkt zouden zijn in standaard webcontexten.

Belangrijkste mogelijkheden:
- Async/await en Promise-ondersteuning
- Generatorfuncties met yield-ondersteuning
- Gegevenssynchronisatie via $Global:Data
- Bevoorrechte toegang tot browseropslag-API's
- Omzeilt same-origin policybeperkingen voor huidige pagina-opslag
- IndexedDB-enumeratie en gegevensextractie
- DOM-manipulatie en web-API-toegang
- Foutafhandeling en time-outbeheer

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript code, bestandspad of URL om uit te voeren |
| `-Inspect` | SwitchParameter | — | — | Named | — | Onderbreken in browser debugger voor uitvoering |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Automatische tabselectie voorkomen |
| `-Edge` | SwitchParameter | — | — | Named | — | Gebruik de Microsoft Edge-browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Gebruik de Google Chrome-browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Gebruik Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Gebruik Firefox-browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Gebruik de door Playwright beheerde WebKit-browser |
| `-Page` | Object | — | — | Named | — | Browserpagina-objectreferentie |
| `-ByReference` | PSObject | — | — | Named | — | Browser sessie referentie object |

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

// Gegevens synchroniseren
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Documenttitel: $($Global:Data.title)
    retourwaarde  : $Number
";

### PS>

```powershell
PS>
```

Ondersteuning voor promises
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

// Ondersteuning voor promises en meer

// deze functie retourneert alle rijen van alle tabellen/gegevensopslag van alle databases van indexedDb in het geselecteerde tabblad
// wees voorzichtig, niet alle websites gebruiken indexedDb, het kan een lege set retourneren

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // alle indexedDB databases opsommen
    for (let db of await indexedDB.databases()) {

        // verzoek om database te openen
        let openRequest = await indexedDB.open(db.name);

        // wacht tot eventhandlers zijn aangeroepen
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // referentie verkrijgen
        let openedDb = openRequest.result;

        // resultaat initialiseren
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // itereer object store namen
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // referentie
            let storeName = openedDb.objectStoreNames[i];

            // start alleen-lezen transactie
            let tr = openedDb.transaction(storeName);

            // objectstore-handle verkrijgen
            let store = tr.objectStore(storeName);

            // alle gegevens opvragen
            let getRequest = store.getAll();

            // wacht op resultaat
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // resultaat toevoegen
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // stream deze database-inhoud naar de PowerShell-pijplijn, en ga verder
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// BEVEILIGINGSNOTITIE: Dit basale voorbeeld werkt omdat de module Playwright
// browserautomatisering gebruikt, die normale JavaScript-beveiligingsbeperkingen
// omzeilt in de huidige paginacontext. Standaard webpagina's hebben geen toegang tot IndexedDB van
// andere oorsprongen, maar Playwright heeft dezelfde rechten als de website zelf.
// Zie het uitgebreide voorbeeld hieronder voor meer details over beveiligingsoverwegingen.

### PS>

```powershell
PS>
```

// Verbeterde IndexedDB-enumeratie met metadata en foutafhandeling

// Deze verbeterde aanpak biedt uitgebreidere IndexedDB-data-extractie, inclusief
// databasetellingen, foutafhandeling en metadata. In tegenstelling tot het eenvoudige voorbeeld hierboven,
// verwerkt deze versie beveiligingsbeperkingen, biedt gedetailleerde winkel-informatie en
// bevat recordtellingen zonder noodzakelijkerwijs alle gegevens op te halen.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Verbeterde IndexedDB-enumeratie met uitgebreide foutafhandeling
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Open database met timeout
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Database open timeout')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Verwerk elke object store
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Haal recordtelling op (sneller dan alle gegevens ophalen)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Count timeout')), 3000);
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

// Belangrijkste verschillen met het eenvoudige voorbeeld:
// 1. Bevat foutafhandeling voor toegangsproblemen tot databases
// 2. Biedt metadata (KeyPath, AutoIncrement, IndexNames)
// 3. Haalt recordtellingen op zonder alle gegevens op te halen (efficiënter)
// 4. Verwerkt time-outscenario's
// 5. Retourneert gestructureerde informatie over databaseschema
// 6. Geschikter voor grote databases waar het ophalen van alle gegevens traag zou zijn

// BEVEILIGINGSOUVERWEGINGEN VOOR INDEXEDDB-TOEGANG:
// Beide voorbeelden werken omdat deze module Playwright-browserautomatisering gebruikt,
// die standaard JavaScript-beveiligingsbeperkingen omzeilt in de context
// van de huidige pagina:

// Beperkingen van standaard JavaScript:
// - Same-origin-beleid beperkt toegang tot IndexedDB van andere oorsprongen
// - Sommige databases kunnen verborgen of beschermd zijn door beveiligingsfuncties van de browser
// - Toegang tot databases van andere oorsprongen is meestal geblokkeerd
// - Service worker-databases kunnen extra bescherming hebben

// Hoe dit voorbeeld beperkingen omzeilt:
// - Gebruikt Playwright-browserautomatisering voor bevoorrechte toegang
// - Wordt uitgevoerd in de context van de werkelijke pagina, niet in een sandboxomgeving
// - Heeft dezelfde machtigingen als de website zelf voor zijn eigen opslag
// - Heeft toegang tot alle databases die door de huidige oorsprong/domein zijn gemaakt

// Beperkingen:
// - Heeft geen toegang tot databases van andere oorsprongen/domeinen in dezelfde browser
// - Heeft geen toegang tot databases van andere browserprofielen of privé-navigatie
// - Sommige browserextensies kunnen geïsoleerde opslag creëren die niet toegankelijk is via JavaScript

// Alternatieve benaderingen voor maximale toegang:
// - Gebruik GenXdev.Webbrowser met meerdere tabbladen van verschillende oorsprongen
// - Combineer met bestandssysteemtoegang tot browserprofielmappen (indien mogelijk)
// - Gebruik browserautomatisering om tussen verschillende domeinen te navigeren

### PS>

```powershell
PS>
```

Ondersteuning voor opgeleverde pijplijnresultaten
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

## Related Links

- [Invoke-WebbrowserEvaluation on GitHub](https://github.com/genXdev/genXdev)
