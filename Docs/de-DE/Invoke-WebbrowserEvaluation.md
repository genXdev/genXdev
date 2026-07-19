# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> Executes JavaScript code in a selected web browser tab.

## Description

<details>
<summary><b>Expand description</b></summary>

Führt JavaScript-Code in einem ausgewählten Browser-Tab aus und unterstützt async/await, Promises sowie die Datensynchronisation zwischen PowerShell und dem Browserkontext. Kann Code aus Zeichenketten, Dateien oder URLs ausführen.

Diese Funktion bietet umfassenden Zugriff auf Browser-APIs, einschließlich IndexedDB, localStorage, sessionStorage und anderer Webplattformfunktionen. Sie enthält eine integrierte Fehlerbehandlung, Zeitüberschreitungsverwaltung und Unterstützung für die Ausgabe mehrerer Ergebnisse aus Generatorfunktionen.

Die Funktion verwendet Playwright zur Browserautomatisierung, das privilegierten Zugriff gewährt, der die standardmäßigen JavaScript-Sicherheitsbeschränkungen im Kontext der aktuellen Seite umgeht. Dies ermöglicht den Zugriff auf Speicher-APIs, ressourcenübergreifende Ressourcen (innerhalb desselben Tabs) und andere Browserfunktionen, die normalerweise in Standard-Webkontexten eingeschränkt wären.

Wichtige Fähigkeiten:
- Async/await und Promise-Unterstützung
- Generatorfunktionen mit yield-Unterstützung
- Datensynchronisation über $Global:Data
- Privilegierter Zugriff auf Browser-Speicher-APIs
- Umgeht Same-Origin-Policy-Einschränkungen für den Speicher der aktuellen Seite
- IndexedDB-Auflistung und Datenextraktion
- DOM-Manipulation und Zugriff auf Web-APIs
- Fehlerbehandlung und Zeitüberschreitungsverwaltung

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript-Code, Dateipfad oder URL zur Ausführung |
| `-Inspect` | SwitchParameter | — | — | Named | — | Im Browser-Debugger vor dem Ausführen anhalten |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Automatische Tab-Auswahl verhindern |
| `-Edge` | SwitchParameter | — | — | Named | — | Verwenden Sie den Microsoft Edge-Browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Verwenden Sie Microsoft Edge oder Google Chrome, je nachdem, welcher der Standardbrowser ist. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Verwenden Sie den Firefox-Browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Verwenden Sie den Playwright-verwalteten WebKit-Browser |
| `-Page` | Object | — | — | Named | — | Referenz auf das Browser-Seitenobjekt |
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
    Rückgabewert  : $Number
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
// Achtung, nicht alle Websites verwenden IndexedDB, es könnte eine leere Menge zurückgegeben werden

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // alle IndexedDB-Datenbanken auflisten
    for (let db of await indexedDB.databases()) {

        // Anfrage zum Öffnen der Datenbank
        let openRequest = await indexedDB.open(db.name);

        // warten auf Aufruf der Ereignishandler
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // Referenz erhalten
        let openedDb = openRequest.result;

        // Ergebnis initialisieren
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // über Objekt-Speichernamen iterieren
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // Referenz
            let storeName = openedDb.objectStoreNames[i];

            // schreibgeschützte Transaktion starten
            let tr = openedDb.transaction(storeName);

            // Objektspeicher-Handle holen
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

        // diesen Datenbankinhalt an die PowerShell-Pipeline streamen und fortfahren
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// SICHERHEITSHINWEIS: Dieses einfache Beispiel funktioniert, weil das Modul Playwright
// zur Browserautomatisierung verwendet, was normale JavaScript-Sicherheitsbeschränkungen
// im aktuellen Seitenkontext umgeht. Standard-Webseiten können nicht auf IndexedDB von
// anderen Ursprüngen zugreifen, aber Playwright hat dieselben Rechte wie die Website selbst.
// Siehe das erweiterte Beispiel unten für weitere Details zu Sicherheitsüberlegungen.

### PS>

```powershell
PS>
```

// Erweiterte IndexedDB-Enumeration mit Metadaten und Fehlerbehandlung

// Dieser verbesserte Ansatz bietet eine umfassendere Extraktion von IndexedDB-Daten, einschließlich
// Datenbankzählungen, Fehlerbehandlung und Metadaten. Im Gegensatz zum obigen einfachen Beispiel
// behandelt diese Version Sicherheitseinschränkungen, liefert detaillierte Store-Informationen und
// enthält Datensatzzahlen, ohne notwendigerweise alle Daten abzurufen.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Erweiterte IndexedDB-Enumeration mit umfassender Fehlerbehandlung
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Datenbank mit Timeout öffnen
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Datenbank-Timeout beim Öffnen')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Jeden Object Store verarbeiten
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
                        setTimeout(() => reject(new Error('Timeout bei Anzahl')), 3000);
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

// Hauptunterschiede zum einfachen Beispiel:
// 1. Enthält Fehlerbehandlung für Datenbankzugriffsprobleme
// 2. Liefert Metadaten (KeyPath, AutoIncrement, IndexNames)
// 3. Ruft Datensatzzahlen ab, ohne alle Daten zu holen (effizienter)
// 4. Behandelt Timeout-Szenarien
// 5. Gibt strukturierte Informationen zum Datenbankschema zurück
// 6. Besser geeignet für große Datenbanken, bei denen das Abrufen aller Daten langsam wäre

// SICHERHEITSASPEKTE BEIM INDEXEDDB-ZUGRIFF:
// Beide Beispiele funktionieren, weil dieses Modul Playwright-Browserautomation verwendet,
// die die standardmäßigen JavaScript-Sicherheitseinschränkungen im Kontext der aktuellen Seite umgeht:

// Standardmäßige JavaScript-Einschränkungen:
// - Same-Origin-Policy schränkt den Zugriff auf IndexedDB von anderen Ursprüngen ein
// - Einige Datenbanken können durch Browsersicherheitsfunktionen verborgen oder geschützt sein
// - Ursprungsübergreifender Datenbankzugriff ist normalerweise blockiert
// - Service-Worker-Datenbanken können zusätzlichen Schutz haben

// Wie dieses Beispiel Einschränkungen umgeht:
// - Verwendet Playwright-Browserautomation für privilegierten Zugriff
// - Wird im Kontext der tatsächlichen Seite ausgeführt, nicht in einer Sandbox-Umgebung
// - Hat die gleichen Berechtigungen wie die Website selbst für ihren eigenen Speicher
// - Kann auf alle Datenbanken zugreifen, die vom aktuellen Ursprung/Domain erstellt wurden

// Einschränkungen:
// - Kann nicht auf Datenbanken von anderen Ursprüngen/Domains im selben Browser zugreifen
// - Kann nicht auf Datenbanken von anderen Browserprofilen oder privatem Surfen zugreifen
// - Einige Browsererweiterungen können isolierten Speicher erstellen, der über JavaScript nicht zugänglich ist

// Alternative Ansätze für maximalen Zugriff:
// - GenXdev.Webbrowser mit mehreren Tabs von verschiedenen Ursprüngen verwenden
// - Mit Dateisystemzugriff auf Browserprofilverzeichnisse kombinieren (wenn möglich)
// - Browserautomation verwenden, um zwischen verschiedenen Domains zu navigieren

### PS>

```powershell
PS>
```

Unterstützung für gelieferte Pipeline-Ergebnisse
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
