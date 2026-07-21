# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Kör JavaScript-kod i en vald webbläsarflik.

## Description

Kör JavaScript-kod i en vald webbläsarflik med stöd för async/await,

## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript-kod, filväg eller URL att köra |
| `-Inspect` | SwitchParameter | — | — | Named | — | Bryt i webbläsarens felsökare före exekvering |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Förhindra automatisk flikmarkering |
| `-Edge` | SwitchParameter | — | — | Named | — | Använd webbläsaren Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | @{response=Använd webbläsaren Google Chrome} |
| `-Chromium` | SwitchParameter | — | — | Named | — | Använd Microsoft Edge eller Google Chrome, beroende på vad som är standardwebbläsaren |
| `-Firefox` | SwitchParameter | — | — | Named | — | Använd webbläsaren Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Använd Playwright-hanterad WebKit-webbläsare |
| `-Page` | Object | — | — | Named | — | Webbläsarsidobjektreferens |
| `-ByReference` | PSObject | — | — | Named | — | Webbläsarsessionsreferensobjekt |

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

// Synkroniserar data
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Dokumenttitel : $($Global:Data.title)
    returvärde   : $Number
";

### PS>

```powershell
PS>
```

Stöd för löften
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

### PS>

```powershell
PS>
```

// Förbättrad IndexedDB-uppräkning med metadata och felhantering

// Denna förbättrade metod ger mer omfattande IndexedDB-dataextrahering inklusive
// databasräkningar, felhantering och metadata. Till skillnad från det grundläggande exemplet ovan, hanterar denna
// version säkerhetsbegränsningar, ger detaljerad butiksinformation, och
// inkluderar posträkningar utan att nödvändigtvis hämta all data.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Förbättrad IndexedDB-uppräkning med omfattande felhantering
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Öppna databas med timeout
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Timeout vid öppning av databas')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Bearbeta varje objektbutik
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Hämta postantal (snabbare än att hämta all data)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Timeout vid räkning')), 3000);
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

// Viktiga skillnader från det grundläggande exemplet:
// 1. Inkluderar felhantering för databasåtkomstproblem
// 2. Tillhandahåller metadata (KeyPath, AutoIncrement, IndexNames)
// 3. Hämtar postantal utan att hämta all data (mer effektivt)
// 4. Hanterar timeout-scenarier
// 5. Returnerar strukturerad information om databasschemat
// 6. Mer lämplig för stora databaser där hämtning av all data skulle vara långsam

// SÄKERHETSÖVERVÄGANDEN FÖR INDEXEDDB-ÅTKOMST:
// Båda exemplen fungerar eftersom denna modul använder Playwright-webbläsarautomatisering,
// vilket kringgår vanliga JavaScript-säkerhetsbegränsningar i sammanhanget
// av den aktuella sidan:

// Standard JavaScript-begränsningar:
// - Samma ursprung-policy begränsar åtkomst till IndexedDB från andra ursprung
// - Vissa databaser kan vara dolda eller skyddade av webbläsarens säkerhetsfunktioner
// - Åtkomst över ursprung (cross-origin) blockeras normalt
// - Service worker-databaser kan ha ytterligare skydd

// Hur detta exempel kringgår begränsningar:
// - Använder Playwright-webbläsarautomatisering för privilegierad åtkomst
// - Körs i sammanhanget av den faktiska sidan, inte en sandlådemiljö
// - Har samma behörigheter som webbplatsen själv för sin egen lagring
// - Kan komma åt alla databaser skapade av det aktuella ursprunget/domänen

// Begränsningar:
// - Kan inte komma åt databaser från andra ursprung/domäner i samma webbläsare
// - Kan inte komma åt databaser från andra webbläsarprofiler eller privat surfning
// - Vissa webbläsartillägg kan skapa isolerad lagring som inte är tillgänglig via JavaScript

// Alternativa metoder för maximal åtkomst:
// - Använd GenXdev.Webbrowser med flera flikar från olika ursprung
// - Kombinera med filsystemåtkomst till webbläsarprofilsmappar (när möjligt)
// - Använd webbläsarautomatisering för att navigera mellan olika domäner

### PS>

```powershell
PS>
```

Stöd för utbytta pipeline-resultat
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

> JavaScript-kod, filväg eller URL att köra

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

> Bryt i webbläsarens felsökare före exekvering

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

> Förhindra automatisk flikmarkering

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

> Använd webbläsaren Microsoft Edge

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

> @{response=Använd webbläsaren Google Chrome}

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

> Använd Microsoft Edge eller Google Chrome, beroende på vad som är standardwebbläsaren

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

> Använd webbläsaren Firefox

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

> Använd Playwright-hanterad WebKit-webbläsare

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

> Webbläsarsidobjektreferens

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

> Webbläsarsessionsreferensobjekt

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Show-WebsiteInAllBrowsers.md)
