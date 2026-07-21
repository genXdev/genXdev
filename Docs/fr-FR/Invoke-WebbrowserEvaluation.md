# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Exécute du code JavaScript dans un onglet de navigateur web sélectionné.

## Description

<details>
<summary><b>Expand description</b></summary>

Exécute du code JavaScript dans un onglet de navigateur sélectionné avec prise en charge d'async/await, des promesses et de la synchronisation des données entre PowerShell et le contexte du navigateur. Peut exécuter du code à partir de chaînes, de fichiers ou d'URL.

Cette fonction fournit un accès complet aux API du navigateur, notamment IndexedDB, localStorage, sessionStorage et d'autres fonctionnalités de la plateforme web. Elle inclut une gestion intégrée des erreurs, une gestion des délais d'attente et la prise en charge de la production de plusieurs résultats à partir de fonctions génératrices.

La fonction utilise Playwright pour l'automatisation du navigateur, ce qui offre un accès privilégié contournant les restrictions de sécurité JavaScript standard dans le contexte de la page actuelle. Cela permet d'accéder aux API de stockage, aux ressources跨origine (dans le même onglet) et à d'autres fonctionnalités du navigateur qui seraient normalement restreintes dans les contextes web standard.

Capacités clés :
- Prise en charge d'async/await et des promesses
- Fonctions génératrices avec prise en charge de yield
- Synchronisation des données via $Global:Data
- Accès privilégié aux API de stockage du navigateur
- Contournement des restrictions de la politique de même origine pour le stockage de la page actuelle
- Énumération et extraction de données d'IndexedDB
- Manipulation du DOM et accès aux API web
- Gestion des erreurs et des délais d'attente

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Code JavaScript, chemin de fichier ou URL à exécuter |
| `-Inspect` | SwitchParameter | — | — | Named | — | Interrompre dans le débogueur du navigateur avant l'exécution |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Empêcher la sélection automatique d'onglet |
| `-Edge` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Utilisez Microsoft Edge ou Google Chrome, selon le navigateur par défaut |
| `-Firefox` | SwitchParameter | — | — | Named | — | Utilisez le navigateur Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Utiliser le navigateur WebKit géré par Playwright |
| `-Page` | Object | — | — | Named | — | Référence de l'objet de page du navigateur |
| `-ByReference` | PSObject | — | — | Named | — | Objet de référence de session de navigateur |

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

// Synchronisation des données
Select-WebbrowserTab -Force;
$Global:Data = @{ fichiers= (Get-ChildItem *.* -file | % CheminComplet)};

[int] $nombre = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.fichiers);
    data.title = document.title;
    return 123;
";

Write-Host "
    Titre du document : $($Global:Data.title)
    Valeur de retour   : $Nombre
";

### PS>

```powershell
PS>
```

Prise en charge des promesses
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

// Prise en charge des promesses et plus

// cette fonction retourne toutes les lignes de toutes les tables/magasins de données de toutes les bases de données IndexedDB dans l'onglet sélectionné
// attention, tous les sites web n'utilisent pas IndexedDB, cela peut retourner un ensemble vide

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // énumérer toutes les bases de données indexedDB
    for (let db of await indexedDB.databases()) {

        // demande d'ouverture de la base de données
        let openRequest = await indexedDB.open(db.name);

        // attendre que les gestionnaires d'événements soient appelés
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // obtenir la référence
        let openedDb = openRequest.result;

        // initialiser le résultat
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // parcourir les noms des magasins d'objets
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // référence
            let storeName = openedDb.objectStoreNames[i];

            // démarrer une transaction en lecture seule
            let tr = openedDb.transaction(storeName);

            // obtenir le handle du magasin d'objets
            let store = tr.objectStore(storeName);

            // demander toutes les données
            let getRequest = store.getAll();

            // attendre le résultat
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // ajouter le résultat
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // diffuser le contenu de cette base de données vers le pipeline PowerShell, et continuer
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// NOTE DE SÉCURITÉ : Cet exemple basique fonctionne car le module utilise l'automatisation du navigateur Playwright,
// qui contourne les restrictions de sécurité JavaScript normales dans le contexte de la page actuelle.
// Les pages web standard ne peuvent pas accéder à IndexedDB depuis d'autres origines,
// mais Playwright a les mêmes privilèges que le site web lui-même.
// Voir l'exemple amélioré ci-dessous pour plus de détails sur les considérations de sécurité.

### PS>

```powershell
PS>
```

// Énumération améliorée d'IndexedDB avec métadonnées et gestion des erreurs

// Cette approche améliorée fournit une extraction plus complète des données IndexedDB, y compris
// les comptages de bases de données, la gestion des erreurs et les métadonnées. Contrairement à l'exemple de base ci-dessus, cette
// version gère les restrictions de sécurité, fournit des informations détaillées sur les magasins et
// inclut le nombre d'enregistrements sans nécessairement récupérer toutes les données.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Énumération améliorée d'IndexedDB avec gestion complète des erreurs
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Ouvrir la base de données avec un délai d'attente
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Délai d\'attente d\'ouverture de la base de données dépassé')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Traiter chaque magasin d'objets
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Obtenir le nombre d'enregistrements (plus rapide que de récupérer toutes les données)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Délai d\'attente du comptage dépassé')), 3000);
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

// Principales différences par rapport à l'exemple de base :
// 1. Inclut la gestion des erreurs pour les problèmes d'accès à la base de données
// 2. Fournit des métadonnées (KeyPath, AutoIncrement, IndexNames)
// 3. Obtient le nombre d'enregistrements sans récupérer toutes les données (plus efficace)
// 4. Gère les scénarios de délai d'attente
// 5. Renvoie des informations structurées sur le schéma de la base de données
// 6. Plus adapté aux grandes bases de données où la récupération de toutes les données serait lente

// CONSIDÉRATIONS DE SÉCURITÉ POUR L'ACCÈS À INDEXEDDB :
// Les deux exemples fonctionnent car ce module utilise l'automatisation du navigateur Playwright,
// qui contourne les restrictions de sécurité JavaScript standard dans le contexte
// de la page actuelle :

// Limitations JavaScript standard :
// - La politique de même origine restreint l'accès à IndexedDB depuis d'autres origines
// - Certaines bases de données peuvent être masquées ou protégées par des fonctionnalités de sécurité du navigateur
// - L'accès aux bases de données inter-origines est généralement bloqué
// - Les bases de données des service workers peuvent avoir une protection supplémentaire

// Comment cet exemple contourne les restrictions :
// - Utilise l'automatisation du navigateur Playwright pour un accès privilégié
// - S'exécute dans le contexte de la page réelle, pas dans un environnement sandboxé
// - Possède les mêmes permissions que le site web lui-même pour son propre stockage
// - Peut accéder à toutes les bases de données créées par l'origine/domaine actuel

// Limitations :
// - Ne peut pas accéder aux bases de données d'autres origines/domaines dans le même navigateur
// - Ne peut pas accéder aux bases de données d'autres profils de navigateur ou de navigation privée
// - Certaines extensions de navigateur peuvent créer un stockage isolé inaccessible via JavaScript

// Approches alternatives pour un accès maximal :
// - Utiliser GenXdev.Webbrowser avec plusieurs onglets de différentes origines
// - Combiner avec l'accès au système de fichiers vers les répertoires de profil du navigateur (si possible)
// - Utiliser l'automatisation du navigateur pour naviguer entre différents domaines

### PS>

```powershell
PS>
```

Prise en charge des résultats de pipeline générés
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

> Code JavaScript, chemin de fichier ou URL à exécuter

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

> Interrompre dans le débogueur du navigateur avant l'exécution

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

> Empêcher la sélection automatique d'onglet

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

> Utilisez le navigateur Microsoft Edge

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

> Utilisez le navigateur Google Chrome

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

> Utilisez Microsoft Edge ou Google Chrome, selon le navigateur par défaut

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

> Utilisez le navigateur Firefox

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

> Utiliser le navigateur WebKit géré par Playwright

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

> Référence de l'objet de page du navigateur

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

> Objet de référence de session de navigateur

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRClose-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRClose-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRExport-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRFind-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRImport-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRImport-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSelect-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRShow-WebsiteInAllBrowsers.md)
