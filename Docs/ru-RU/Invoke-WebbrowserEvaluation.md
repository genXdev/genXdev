# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Выполняет код JavaScript на выбранной вкладке веб-браузера.

## Description

<details>
<summary><b>Expand description</b></summary>

Выполняет код JavaScript на выбранной вкладке браузера с поддержкой async/await, промисов и синхронизации данных между PowerShell и контекстом браузера. Может выполнять код из строк, файлов или URL.

Эта функция предоставляет полный доступ к API браузера, включая IndexedDB, localStorage, sessionStorage и другие возможности веб-платформы. Включает встроенную обработку ошибок, управление тайм-аутами и поддержку возврата нескольких результатов из функций-генераторов.

Функция использует Playwright для автоматизации браузера, что предоставляет привилегированный доступ, обходящий стандартные ограничения безопасности JavaScript в контексте текущей страницы. Это позволяет получить доступ к API хранилищ, кросс-доменным ресурсам (в пределах одной вкладки) и другим функциям браузера, которые обычно ограничены в стандартных веб-контекстах.

Ключевые возможности:
- Поддержка async/await и промисов
- Поддержка функций-генераторов с yield
- Синхронизация данных через $Global:Data
- Привилегированный доступ к API хранилищ браузера
- Обход ограничений политики одинакового источника для хранилищ текущей страницы
- Перечисление и извлечение данных из IndexedDB
- Манипуляции с DOM и доступ к веб-API
- Обработка ошибок и управление тайм-аутами

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript-код, путь к файлу или URL-адрес для выполнения |
| `-Inspect` | SwitchParameter | — | — | Named | — | Приостановить выполнение в отладчике браузера |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Запретить автоматический выбор вкладок |
| `-Edge` | SwitchParameter | — | — | Named | — | Используйте браузер Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Используйте браузер Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Используйте Microsoft Edge или Google Chrome, в зависимости от того, какой браузер используется по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Используйте браузер Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Используйте браузер WebKit, управляемый Playwright |
| `-Page` | Object | — | — | Named | — | Ссылка на объект страницы браузера |
| `-ByReference` | PSObject | — | — | Named | — | Объект ссылки на сеанс браузера |

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

// Синхронизация данных
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Название документа : $($Global:Data.title)
    Возвращаемое значение   : $Number
";

### PS>

```powershell
PS>
```

Поддержка промисов
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

// Поддержка промисов и многое другое

// Эта функция возвращает все строки всех таблиц/хранилищ данных всех баз данных IndexedDB на выбранной вкладке
// Будьте осторожны, не все веб-сайты используют IndexedDB, она может вернуть пустой набор

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // перечислить все базы данных indexedDB
    for (let db of await indexedDB.databases()) {

        // запрос на открытие базы данных
        let openRequest = await indexedDB.open(db.name);

        // ожидание вызовов обработчиков событий
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // получить ссылку
        let openedDb = openRequest.result;

        // инициализировать результат
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // перебор имен хранилищ объектов
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // ссылка
            let storeName = openedDb.objectStoreNames[i];

            // начать транзакцию только для чтения
            let tr = openedDb.transaction(storeName);

            // получить дескриптор хранилища объектов
            let store = tr.objectStore(storeName);

            // запросить все данные
            let getRequest = store.getAll();

            // ожидать результат
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // добавить результат
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // передать содержимое этой базы данных в конвейер PowerShell и продолжить
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// ПРИМЕЧАНИЕ ПО БЕЗОПАСНОСТИ: Этот базовый пример работает, потому что модуль использует
// автоматизацию браузера Playwright, которая обходит обычные ограничения безопасности JavaScript
// в контексте текущей страницы. Стандартные веб-страницы не могут получить доступ к IndexedDB из
// других источников, но Playwright имеет те же привилегии, что и сам веб-сайт.
// См. расширенный пример ниже для получения дополнительных сведений о вопросах безопасности.

### PS>

```powershell
PS>
```

// Расширенное перечисление IndexedDB с метаданными и обработкой ошибок

// Этот расширенный подход обеспечивает более полное извлечение данных из IndexedDB, включая
// количество баз данных, обработку ошибок и метаданные. В отличие от базового примера выше, эта
// версия обрабатывает ограничения безопасности, предоставляет подробную информацию о хранилищах и
// включает количество записей без обязательного извлечения всех данных.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Расширенное перечисление IndexedDB с комплексной обработкой ошибок
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Открыть базу данных с таймаутом
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Таймаут открытия базы данных')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Обработка каждого хранилища объектов
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Получить количество записей (быстрее, чем извлечение всех данных)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Таймаут подсчета')), 3000);
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

// Ключевые отличия от базового примера:
// 1. Включает обработку ошибок при доступе к базе данных
// 2. Предоставляет метаданные (KeyPath, AutoIncrement, IndexNames)
// 3. Получает количество записей без извлечения всех данных (более эффективно)
// 4. Обрабатывает сценарии таймаута
// 5. Возвращает структурированную информацию о схеме базы данных
// 6. Более подходит для больших баз данных, где извлечение всех данных было бы медленным

// ВОПРОСЫ БЕЗОПАСНОСТИ ПРИ ДОСТУПЕ К INDEXEDDB:
// Оба примера работают, потому что этот модуль использует автоматизацию браузера Playwright,
// которая обходит стандартные ограничения безопасности JavaScript в контексте
// текущей страницы:

// Стандартные ограничения JavaScript:
// - Политика одинакового источника ограничивает доступ к IndexedDB из других источников
// - Некоторые базы данных могут быть скрыты или защищены функциями безопасности браузера
// - Доступ к базам данных из других источников обычно заблокирован
// - Базы данных сервис-воркеров могут иметь дополнительную защиту

// Как этот пример обходит ограничения:
// - Использует автоматизацию браузера Playwright для привилегированного доступа
// - Выполняется в контексте реальной страницы, а не в изолированной среде
// - Имеет те же разрешения, что и сам веб-сайт, для его собственного хранилища
// - Может получить доступ ко всем базам данных, созданным текущим источником/доменом

// Ограничения:
// - Не может получить доступ к базам данных из других источников/доменов в том же браузере
// - Не может получить доступ к базам данных из других профилей браузера или приватного просмотра
// - Некоторые расширения браузера могут создавать изолированное хранилище, недоступное через JavaScript

// Альтернативные подходы для максимального доступа:
// - Использовать GenXdev.Webbrowser с несколькими вкладками из разных источников
// - Комбинировать с доступом к файловой системе для каталогов профиля браузера (когда это возможно)
// - Использовать автоматизацию браузера для навигации между различными доменами

### PS>

```powershell
PS>
```

Поддержка результатов конвейера при передаче
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

> JavaScript-код, путь к файлу или URL-адрес для выполнения

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

> Приостановить выполнение в отладчике браузера

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

> Запретить автоматический выбор вкладок

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

> Используйте браузер Microsoft Edge

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

> Используйте браузер Google Chrome

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

> Используйте Microsoft Edge или Google Chrome, в зависимости от того, какой браузер используется по умолчанию

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

> Используйте браузер Firefox

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

> Используйте браузер WebKit, управляемый Playwright

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

> Ссылка на объект страницы браузера

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

> Объект ссылки на сеанс браузера

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Show-WebsiteInAllBrowsers.md)
