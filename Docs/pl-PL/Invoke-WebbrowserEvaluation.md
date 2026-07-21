# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Wykonuje kod JavaScript w wybranej karcie przeglądarki internetowej.

## Description

<details>
<summary><b>Expand description</b></summary>

Wykonuje kod JavaScript w wybranej karcie przeglądarki z obsługą async/await, obietnic (promises) i synchronizacji danych między PowerShell a kontekstem przeglądarki. Może wykonywać kod z ciągów znaków, plików lub adresów URL.

Ta funkcja zapewnia kompleksowy dostęp do interfejsów API przeglądarki, w tym IndexedDB, localStorage, sessionStorage i innych funkcji platformy internetowej. Zawiera wbudowaną obsługę błędów, zarządzanie limitem czasu i obsługę zwracania wielu wyników z funkcji generatora.

Funkcja używa Playwright do automatyzacji przeglądarki, co zapewnia uprzywilejowany dostęp, który omija standardowe ograniczenia bezpieczeństwa JavaScript w kontekście bieżącej strony. Umożliwia to dostęp do interfejsów API pamięci masowej, zasobów zewnętrznych (w obrębie tej samej karty) i innych funkcji przeglądarki, które byłyby normalnie ograniczone w standardowych kontekstach internetowych.

Kluczowe możliwości:
- Obsługa async/await i obietnic
- Funkcje generatora z obsługą yield
- Synchronizacja danych za pomocą $Global:Data
- Uprzywilejowany dostęp do interfejsów API pamięci przeglądarki
- Omija ograniczenia polityki samego pochodzenia dla pamięci bieżącej strony
- Wyliczanie i ekstrakcja danych z IndexedDB
- Manipulacja DOM i dostęp do API sieciowych
- Obsługa błędów i zarządzanie limitem czasu

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Kod JavaScript, ścieżka pliku lub adres URL do wykonania |
| `-Inspect` | SwitchParameter | — | — | Named | — | Przerwij w debuggerze przeglądarki przed wykonaniem |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Zapobiegaj automatycznemu wybieraniu karty |
| `-Edge` | SwitchParameter | — | — | Named | — | Użyj przeglądarki Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Użyj przeglądarki Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Użyj Microsoft Edge lub Google Chrome, w zależności od tego, która przeglądarka jest domyślna |
| `-Firefox` | SwitchParameter | — | — | Named | — | Użyj przeglądarki Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Użyj przeglądarki WebKit zarządzanej przez Playwright |
| `-Page` | Object | — | — | Named | — | Odwołanie do obiektu strony przeglądarki |
| `-ByReference` | PSObject | — | — | Named | — | Obiekt referencyjny sesji przeglądarki |

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

// Synchronizacja danych
Select-WebbrowserTab -Force;
$Global:Data = @{ files = (Get-ChildItem *.* -file | % FullName) };

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Tytuł dokumentu : $($Global:Data.title)
    Wartość zwrotna : $Number
";

### PS>

```powershell
PS>
```

Wsparcie dla obietnic
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

// Wsparcie dla obietnic i więcej

// ta funkcja zwraca wszystkie wiersze wszystkich tabel/magazynów danych wszystkich baz danych indexedDb w wybranej karcie
// uwaga, nie wszystkie strony internetowe używają indexedDb, może zwrócić pusty zestaw

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // wylicz wszystkie bazy danych indexedDB
    for (let db of await indexedDB.databases()) {

        // żądanie otwarcia bazy danych
        let openRequest = await indexedDB.open(db.name);

        // oczekiwanie na wywołanie procedur obsługi zdarzeń
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // uzyskanie referencji
        let openedDb = openRequest.result;

        // inicjalizacja wyniku
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // iteracja po nazwach magazynów obiektów
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // referencja
            let storeName = openedDb.objectStoreNames[i];

            // rozpoczęcie transakcji tylko do odczytu
            let tr = openedDb.transaction(storeName);

            // pobranie uchwytu magazynu obiektów
            let store = tr.objectStore(storeName);

            // żądanie wszystkich danych
            let getRequest = store.getAll();

            // oczekiwanie na wynik
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // dodanie wyniku
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // przesyłanie zawartości tej bazy danych do potoku PowerShell i kontynuacja
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// UWAGA DOTYCZĄCA BEZPIECZEŃSTWA: Ten podstawowy przykład działa, ponieważ moduł używa
// automatyzacji przeglądarki Playwright, która omija normalne ograniczenia bezpieczeństwa JavaScript
// w kontekście bieżącej strony. Standardowe strony internetowe nie mogą uzyskać dostępu do IndexedDB z
// innych źródeł, ale Playwright ma te same uprawnienia co sama strona internetowa.
// Zobacz rozszerzony przykład poniżej, aby uzyskać więcej informacji o kwestiach bezpieczeństwa.

### PS>

```powershell
PS>
```

// Ulepszone wyliczanie IndexedDB z metadanymi i obsługą błędów

// To ulepszone podejście zapewnia bardziej wszechstronne wyodrębnianie danych IndexedDB, w tym
// liczbę baz danych, obsługę błędów i metadane. W przeciwieństwie do powyższego podstawowego przykładu, ta
// wersja obsługuje ograniczenia bezpieczeństwa, dostarcza szczegółowe informacje o sklepach i
// zawiera liczbę rekordów bez konieczności pobierania wszystkich danych.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Ulepszone wyliczanie IndexedDB z kompleksową obsługą błędów
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Otwórz bazę danych z limitem czasu
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Przekroczono czas otwierania bazy danych')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Przetwórz każdy magazyn obiektów
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Pobierz liczbę rekordów (szybciej niż pobieranie wszystkich danych)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Przekroczono czas zliczania')), 3000);
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

// Kluczowe różnice w stosunku do podstawowego przykładu:
// 1. Zawiera obsługę błędów dla problemów z dostępem do bazy danych
// 2. Dostarcza metadane (KeyPath, AutoIncrement, IndexNames)
// 3. Pobiera liczbę rekordów bez pobierania wszystkich danych (bardziej wydajne)
// 4. Obsługuje scenariusze przekroczenia czasu
// 5. Zwraca ustrukturyzowane informacje o schemacie bazy danych
// 6. Bardziej odpowiednie dla dużych baz danych, gdzie pobieranie wszystkich danych byłoby powolne

// ZAGADNIENIA BEZPIECZEŃSTWA DOTYCZĄCE DOSTĘPU DO INDEXEDDB:
// Oba przykłady działają, ponieważ ten moduł używa automatyzacji przeglądarki Playwright,
// która omija standardowe ograniczenia bezpieczeństwa JavaScript w kontekście
// bieżącej strony:

// Standardowe ograniczenia JavaScript:
// - Zasada samego pochodzenia ogranicza dostęp do IndexedDB z innych domen
// - Niektóre bazy danych mogą być ukryte lub chronione przez funkcje bezpieczeństwa przeglądarki
// - Dostęp do baz danych z różnych domen jest zazwyczaj blokowany
// - Bazy danych service worker mogą mieć dodatkową ochronę

// Jak ten przykład omija ograniczenia:
// - Używa automatyzacji przeglądarki Playwright z uprzywilejowanym dostępem
// - Wykonuje się w kontekście rzeczywistej strony, a nie w środowisku izolowanym
// - Ma takie same uprawnienia jak sama strona internetowa do jej własnego przechowywania
// - Może uzyskać dostęp do wszystkich baz danych utworzonych przez bieżące źródło/domenę

// Ograniczenia:
// - Nie może uzyskać dostępu do baz danych z innych źródeł/domen w tej samej przeglądarce
// - Nie może uzyskać dostępu do baz danych z innych profili przeglądarki lub przeglądania prywatnego
// - Niektóre rozszerzenia przeglądarki mogą tworzyć izolowane przechowywanie, do którego nie można uzyskać dostępu przez JavaScript

// Alternatywne podejścia dla maksymalnego dostępu:
// - Użyj GenXdev.Webbrowser z wieloma kartami z różnych źródeł
// - Połącz z dostępem do systemu plików do katalogów profili przeglądarki (gdy to możliwe)
// - Użyj automatyzacji przeglądarki do nawigacji między różnymi domenami

### PS>

```powershell
PS>
```

Obsługa wyników przesyłanych za pomocą yield
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

> Kod JavaScript, ścieżka pliku lub adres URL do wykonania

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

> Przerwij w debuggerze przeglądarki przed wykonaniem

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

> Zapobiegaj automatycznemu wybieraniu karty

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

> Użyj przeglądarki Microsoft Edge

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

> Użyj przeglądarki Google Chrome

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

> Użyj Microsoft Edge lub Google Chrome, w zależności od tego, która przeglądarka jest domyślna

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

> Użyj przeglądarki Firefox

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

> Użyj przeglądarki WebKit zarządzanej przez Playwright

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

> Odwołanie do obiektu strony przeglądarki

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

> Obiekt referencyjny sesji przeglądarki

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-WebsiteInAllBrowsers.md)
