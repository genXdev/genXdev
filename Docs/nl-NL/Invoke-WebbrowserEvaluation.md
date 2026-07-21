# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Voert JavaScript-code uit in een geselecteerd tabblad van de webbrowser.

## Description

<details>
<summary><b>Expand description</b></summary>

Voert JavaScript-code uit in een geselecteerd browsertabblad met ondersteuning voor async/await,
promises en gegevenssynchronisatie tussen PowerShell en de browsercontext.
Kan code uitvoeren van tekenreeksen, bestanden of URL's.

Deze functie biedt uitgebreide toegang tot browser-API's, waaronder IndexedDB,
localStorage, sessionStorage en andere webplatformfuncties. Het bevat
ingebouwde foutafhandeling, time-outbeheer en ondersteuning voor het opleveren van meerdere
resultaten van generatorfuncties.

De functie gebruikt Playwright voor browserautomatisering, wat bevoorrechte toegang biedt
die de standaard JavaScript-beveiligingsbeperkingen in de context
van de huidige pagina omzeilt. Dit maakt toegang mogelijk tot opslag-API's, bronnen van andere
oorsprong (binnen hetzelfde tabblad) en andere browserfuncties die
normaal gesproken beperkt zouden zijn in standaard webcontexten.

Belangrijkste mogelijkheden:
- Async/await en Promise-ondersteuning
- Generatorfuncties met yield-ondersteuning
- Gegevenssynchronisatie via $Global:Data
- Bevoorrechte toegang tot browseropslag-API's
- Omzeilt same-origin policy-beperkingen voor opslag van de huidige pagina
- IndexedDB-opsomming en gegevensextractie
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
| `-Inspect` | SwitchParameter | — | — | Named | — | Stop in browser debugger voordat uitgevoerd wordt |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Voorkom automatische tabselectie |
| `-Edge` | SwitchParameter | — | — | Named | — | Gebruik de Microsoft Edge-browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Gebruik de Google Chrome-browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Gebruik Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Gebruik Firefox-browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Gebruik de door Playwright beheerde WebKit-browser |
| `-Page` | Object | — | — | Named | — | Referentie naar browserpagina-object |
| `-ByReference` | PSObject | — | — | Named | — | Referentieobject browsersessie |

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
    Documenttitel : $($Global:Data.title)
    retourwaarde   : $Number
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

// Deze functie retourneert alle rijen van alle tabellen/datastores van alle databases van IndexedDB in het geselecteerde tabblad
// Let op, niet alle websites gebruiken IndexedDB, het kan een lege set retourneren

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // alle indexedDB-databases opsommen
    for (let db of await indexedDB.databases()) {

        // verzoek om database te openen
        let openRequest = await indexedDB.open(db.name);

        // wachten tot eventhandlers worden aangeroepen
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // referentie verkrijgen
        let openedDb = openRequest.result;

        // resultaat initialiseren
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // object store namen doorlopen
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // referentie
            let storeName = openedDb.objectStoreNames[i];

            // alleen-lezen transactie starten
            let tr = openedDb.transaction(storeName);

            // objectstore-handle verkrijgen
            let store = tr.objectStore(storeName);

            // alle gegevens opvragen
            let getRequest = store.getAll();

            // wachten op resultaat
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // resultaat toevoegen
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // deze database-inhoud naar de PowerShell-pijplijn sturen en doorgaan
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// VEILIGHEIDSNOTITIE: Dit basale voorbeeld werkt omdat de module Playwright
// browserautomatisering gebruikt, die normale JavaScript-beveiligingsbeperkingen
// in de huidige paginacontext omzeilt. Standaard webpagina's hebben geen toegang tot IndexedDB van
// andere oorsprongen, maar Playwright heeft dezelfde bevoegdheden als de website zelf.
// Zie het uitgebreide voorbeeld hieronder voor meer details over beveiligingsoverwegingen.

### PS>

```powershell
PS>
```

// Verbeterde IndexedDB-opsomming met metadata en foutafhandeling

// Deze verbeterde aanpak biedt uitgebreidere IndexedDB-gegevensextractie inclusief
// databasetellingen, foutafhandeling en metadata. In tegenstelling tot het eenvoudige voorbeeld hierboven,
// behandelt deze versie beveiligingsbeperkingen, geeft gedetailleerde store-informatie en
// bevat recordtellingen zonder noodzakelijkerwijs alle gegevens op te halen.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Verbeterde IndexedDB-opsomming met uitgebreide foutafhandeling
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Database openen met timeout
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Time-out bij openen database')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Elke objectstore verwerken
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Aantal records ophalen (sneller dan alle gegevens ophalen)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Time-out bij tellen')), 3000);
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
// 1. Bevat foutafhandeling voor problemen met databasetoegang
// 2. Biedt metadata (KeyPath, AutoIncrement, IndexNames)
// 3. Haalt recordtellingen op zonder alle gegevens op te halen (efficiënter)
// 4. Behandelt time-outscenario's
// 5. Retourneert gestructureerde informatie over het databaseschema
// 6. Geschikter voor grote databases waar het ophalen van alle gegevens traag zou zijn

// BEVEILIGINGSOVERWEGINGEN VOOR INDEXEDDB-TOEGANG:
// Beide voorbeelden werken omdat deze module Playwright-browserautomatisering gebruikt,
// die de standaard JavaScript-beveiligingsbeperkingen omzeilt in de context
// van de huidige pagina:

// Standaard JavaScript-beperkingen:
// - Same-origin-beleid beperkt toegang tot IndexedDB van andere origins
// - Sommige databases kunnen verborgen of beschermd zijn door browserbeveiligingsfuncties
// - Cross-origin-databasetoegang is doorgaans geblokkeerd
// - Service worker-databases kunnen extra beveiliging hebben

// Hoe dit voorbeeld beperkingen omzeilt:
// - Gebruikt Playwright-browserautomatisering voor geprivilegieerde toegang
// - Voert uit in de context van de daadwerkelijke pagina, niet in een sandbox-omgeving
// - Heeft dezelfde machtigingen als de website zelf voor zijn eigen opslag
// - Heeft toegang tot alle databases die door de huidige origin/domain zijn gemaakt

// Beperkingen:
// - Geen toegang tot databases van andere origins/domains in dezelfde browser
// - Geen toegang tot databases van andere browserprofielen of privé browsen
// - Sommige browserextensies kunnen geïsoleerde opslag maken die niet toegankelijk is via JavaScript

// Alternatieve benaderingen voor maximale toegang:
// - Gebruik GenXdev.Webbrowser met meerdere tabbladen van verschillende origins
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

## Parameter Details

### `-Scripts <Object[]>`

> JavaScript code, bestandspad of URL om uit te voeren

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

> Stop in browser debugger voordat uitgevoerd wordt

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

> Voorkom automatische tabselectie

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

> Gebruik de Microsoft Edge-browser

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

> Gebruik de Google Chrome-browser

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

> Gebruik Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is

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

> Gebruik Firefox-browser

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

> Gebruik de door Playwright beheerde WebKit-browser

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

> Referentie naar browserpagina-object

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

> Referentieobject browsersessie

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Show-WebsiteInAllBrowsers.md)
