# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Führt JavaScript-Code in einem ausgewählten Webbrowser-Tab aus.

## Description

<details>
<summary><b>Expand description</b></summary>

Führt JavaScript-Code in einem ausgewählten Browser-Tab aus, mit Unterstützung für async/await, Promises und Datensynchronisation zwischen PowerShell und dem Browser-Kontext. Code kann aus Zeichenfolgen, Dateien oder URLs ausgeführt werden.

Diese Funktion bietet umfassenden Zugriff auf Browser-APIs einschließlich IndexedDB, localStorage, sessionStorage und andere Webplattform-Funktionen. Sie enthält integrierte Fehlerbehandlung, Timeout-Verwaltung und Unterstützung für das Ausliefern mehrerer Ergebnisse aus Generatorfunktionen.

Die Funktion verwendet Playwright für die Browser-Automatisierung, das privilegierten Zugriff bietet, der die standardmäßigen JavaScript-Sicherheitsbeschränkungen im Kontext der aktuellen Seite umgeht. Dies ermöglicht den Zugriff auf Speicher-APIs, Cross-Origin-Ressourcen (innerhalb desselben Tabs) und andere Browserfunktionen, die in standardmäßigen Webkontexten normalerweise eingeschränkt wären.

Wichtige Fähigkeiten:
- Async/await und Promise-Unterstützung
- Generatorfunktionen mit yield-Unterstützung
- Datensynchronisation über $Global:Data
- Privilegierter Zugriff auf Browser-Speicher-APIs
- Umgeht Same-Origin-Policy-Beschränkungen für den aktuellen Seitenspeicher
- IndexedDB-Enumeration und Datenextraktion
- DOM-Manipulation und Web-API-Zugriff
- Fehlerbehandlung und Timeout-Verwaltung

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript-Code, Dateipfad oder URL zum Ausführen |
| `-Inspect` | SwitchParameter | — | — | Named | — | Im Browser-Debugger vor der Ausführung anhalten |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Automatische Registerkartenauswahl verhindern |
| `-Edge` | SwitchParameter | — | — | Named | — | Verwenden Sie den Microsoft Edge-Browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Verwenden Sie den Google Chrome Browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Verwenden Sie Microsoft Edge oder Google Chrome, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox-Browser verwenden |
| `-Webkit` | SwitchParameter | — | — | Named | — | Verwenden Sie den von Playwright verwalteten WebKit-Browser |
| `-Page` | Object | — | — | Named | — | Browser-Seitenobjektreferenz |
| `-ByReference` | PSObject | — | — | Named | — | Browser-Sitzungsreferenzobjekt |

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

// Synchronisieren der Daten
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Dokumenttitel : $($Global:Data.title)
    Rückgabewert   : $Number
";

### PS>

```powershell
PS>
```

Unterstützung für Promises
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

// Unterstützung für Promises und mehr

// Diese Funktion gibt alle Zeilen aller Tabellen/Datenspeicher aller Datenbanken von IndexedDB im ausgewählten Tab zurück
// Vorsicht: Nicht alle Websites verwenden IndexedDB; es könnte ein leeres Set zurückgegeben werden

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // alle IndexedDB-Datenbanken aufzählen
    for (let db of await indexedDB.databases()) {

        // Anfrage zum Öffnen der Datenbank
        let openRequest = await indexedDB.open(db.name);

        // auf Aufruf der Ereignishandler warten
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // Referenz erhalten
        let openedDb = openRequest.result;

        // Ergebnis initialisieren
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // Objektstore-Namen durchlaufen
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // Referenz
            let storeName = openedDb.objectStoreNames[i];

            // schreibgeschützte Transaktion starten
            let tr = openedDb.transaction(storeName);

            // Objektstore-Handle erhalten
            let store = tr.objectStore(storeName);

            // alle Daten anfordern
            let getRequest = store.getAll();

            // auf Ergebnis warten
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // Ergebnis hinzufügen
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // diese Datenbankinhalte an die PowerShell-Pipeline streamen und fortfahren
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// SICHERHEITSHINWEIS: Dieses einfache Beispiel funktioniert, weil das Modul Playwright
// Browser-Automatisierung verwendet, die normale JavaScript-Sicherheitsbeschränkungen
// im aktuellen Seitenkontext umgeht. Standard-Webseiten können nicht auf IndexedDB von
// anderen Ursprüngen zugreifen, aber Playwright hat die gleichen Privilegien wie die
// Website selbst. Siehe das erweiterte Beispiel unten für weitere Details zu Sicherheitsaspekten.

### PS>

```powershell
PS>
```

// Erweiterte IndexedDB-Aufzählung mit Metadaten und Fehlerbehandlung

// Dieser erweiterte Ansatz bietet eine umfassendere Extraktion von IndexedDB-Daten,
// einschließlich Datenbankanzahlen, Fehlerbehandlung und Metadaten. Anders als das
// obige Basisbeispiel behandelt diese Version Sicherheitseinschränkungen, liefert
// detaillierte Store-Informationen und enthält Datensatzanzahlen, ohne
// notwendigerweise alle Daten abzurufen.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Erweiterte IndexedDB-Aufzählung mit umfassender Fehlerbehandlung
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Datenbank mit Timeout öffnen
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Datenbank-Öffnungs-Timeout')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Jeden Objektspeicher verarbeiten
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Datensatzanzahl abrufen (schneller als alle Daten abzurufen)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Zähl-Timeout')), 3000);
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

// Wichtige Unterschiede zum Basisbeispiel:
// 1. Enthält Fehlerbehandlung für Datenbankzugriffsprobleme
// 2. Liefert Metadaten (KeyPath, AutoIncrement, IndexNames)
// 3. Holt Datensatzanzahlen ohne alle Daten abzurufen (effizienter)
// 4. Behandelt Timeout-Szenarien
// 5. Gibt strukturierte Informationen über das Datenbankschema zurück
// 6. Geeigneter für große Datenbanken, bei denen das Abrufen aller Daten langsam wäre

// SICHERHEITSASPEKTE FÜR DEN INDEXEDDB-ZUGRIFF:
// Beide Beispiele funktionieren, weil dieses Modul Playwright-Browserautomatisierung verwendet,
// die die standardmäßigen JavaScript-Sicherheitseinschränkungen im Kontext
// der aktuellen Seite umgeht:

// Standardmäßige JavaScript-Einschränkungen:
// - Die Same-Origin-Richtlinie schränkt den Zugriff auf IndexedDB von anderen Ursprüngen ein
// - Einige Datenbanken können durch Browser-Sicherheitsfunktionen verborgen oder geschützt sein
// - Der Zugriff auf datenbankübergreifende Daten ist normalerweise blockiert
// - Service-Worker-Datenbanken können zusätzlichen Schutz bieten

// Wie dieses Beispiel Einschränkungen umgeht:
// - Verwendet Playwright-Browserautomatisierung für privilegierten Zugriff
// - Führt im Kontext der tatsächlichen Seite aus, nicht in einer Sandbox-Umgebung
// - Hat die gleichen Berechtigungen wie die Website selbst für ihren eigenen Speicher
// - Kann auf alle Datenbanken zugreifen, die vom aktuellen Ursprung/der aktuellen Domain erstellt wurden

// Einschränkungen:
// - Kann nicht auf Datenbanken von anderen Ursprüngen/Domains im selben Browser zugreifen
// - Kann nicht auf Datenbanken von anderen Browserprofilen oder privaten Browsing-Sitzungen zugreifen
// - Einige Browsererweiterungen können isolierten Speicher erstellen, der über JavaScript nicht zugänglich ist

// Alternative Ansätze für maximalen Zugriff:
// - GenXdev.Webbrowser mit mehreren Tabs von verschiedenen Ursprüngen verwenden
// - Mit Dateisystemzugriff auf Browserprofilverzeichnisse kombinieren (wenn möglich)
// - Browserautomatisierung verwenden, um zwischen verschiedenen Domains zu navigieren

### PS>

```powershell
PS>
```

Unterstützung für weitergeleitete Pipelinergebnisse
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

> JavaScript-Code, Dateipfad oder URL zum Ausführen

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

> Im Browser-Debugger vor der Ausführung anhalten

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

> Automatische Registerkartenauswahl verhindern

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

> Verwenden Sie den Microsoft Edge-Browser

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

> Verwenden Sie den Google Chrome Browser

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

> Verwenden Sie Microsoft Edge oder Google Chrome, je nachdem, welcher der Standardbrowser ist

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

> Firefox-Browser verwenden

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

> Verwenden Sie den von Playwright verwalteten WebKit-Browser

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

> Browser-Seitenobjektreferenz

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

> Browser-Sitzungsreferenzobjekt

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/de-DE/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/de-DE/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/de-DE/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/de-DE/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/de-DE/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-WebsiteInAllBrowsers.md)
