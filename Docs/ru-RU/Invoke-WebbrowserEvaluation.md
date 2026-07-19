# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> Выполняет JavaScript-код на выбранной вкладке веб-браузера.

## Description

<details>
<summary><b>Expand description</b></summary>

Выполняет код JavaScript на выбранной вкладке браузера с поддержкой async/await, промисов и синхронизации данных между PowerShell и контекстом браузера. Может выполнять код из строк, файлов или URL-адресов.

Эта функция предоставляет полный доступ к API браузера, включая IndexedDB, localStorage, sessionStorage и другие функции веб-платформы. Она включает встроенную обработку ошибок, управление временем ожидания и поддержку возврата нескольких результатов из функций-генераторов.

Функция использует Playwright для автоматизации браузера, что обеспечивает привилегированный доступ, обходящий стандартные ограничения безопасности JavaScript в контексте текущей страницы. Это позволяет получать доступ к API хранилищ, межсайтовым ресурсам (в пределах одной вкладки) и другим функциям браузера, которые обычно ограничены в стандартных веб-контекстах.

Ключевые возможности:
- Поддержка async/await и Promise
- Функции-генераторы с поддержкой yield
- Синхронизация данных через $Global:Data
- Привилегированный доступ к API хранилищ браузера
- Обход политики same-origin для хранилищ текущей страницы
- Перечисление и извлечение данных из IndexedDB
- Манипуляции с DOM и доступ к веб-API
- Обработка ошибок и управление временем ожидания

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript code, file path or URL to execute |
| `-Inspect` | SwitchParameter | — | — | Named | — | Break in browser debugger before executing |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Предотвратить автоматический выбор вкладок |
| `-Edge` | SwitchParameter | — | — | Named | — | Используйте браузер Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Используйте браузер Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Используйте Microsoft Edge или Google Chrome, в зависимости от того, какой браузер является браузером по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Используйте браузер Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Используйте браузер WebKit, управляемый Playwright |
| `-Page` | Object | — | — | Named | — | Ссылка на объект страницы браузера |
| `-ByReference` | PSObject | — | — | Named | — | Объект ссылки на сессию браузера |

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
    Заголовок документа : $($Global:Data.title)
    возвращаемое значение : $Number
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

// Поддержка promises и многое другое

// Эта функция возвращает все строки всех таблиц/хранилищ данных всех баз данных indexedDb на выбранной вкладке
// обратите внимание, не все веб-сайты используют indexedDb, результат может быть пустым

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // перечисляем все базы данных indexedDB
    for (let db of await indexedDB.databases()) {

        // запрос на открытие базы данных
        let openRequest = await indexedDB.open(db.name);

        // ожидаем вызова обработчиков событий
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // получаем ссылку
        let openedDb = openRequest.result;

        // инициализируем результат
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // перебираем имена хранилищ объектов
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // ссылка
            let storeName = openedDb.objectStoreNames[i];

            // начинаем транзакцию только для чтения
            let tr = openedDb.transaction(storeName);

            // получаем дескриптор хранилища объектов
            let store = tr.objectStore(storeName);

            // запрашиваем все данные
            let getRequest = store.getAll();

            // ожидаем результат
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // добавляем результат
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // передаем содержимое этой базы данных в конвейер PowerShell и продолжаем
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// ПРИМЕЧАНИЕ ПО БЕЗОПАСНОСТИ: Этот простой пример работает, потому что модуль использует
// автоматизацию браузера Playwright, которая обходит обычные ограничения безопасности JavaScript
// в контексте текущей страницы. Стандартные веб-страницы не могут получить доступ к IndexedDB из
// других источников, но Playwright имеет те же привилегии, что и сам веб-сайт.
// Дополнительные сведения о соображениях безопасности см. в расширенном примере ниже.

### PS>

```powershell
PS>
```

// Расширенное перечисление IndexedDB с метаданными и обработкой ошибок

// Этот расширенный подход обеспечивает более полное извлечение данных IndexedDB, включая
// количество баз данных, обработку ошибок и метаданные. В отличие от базового примера выше, эта
// версия обрабатывает ограничения безопасности, предоставляет подробную информацию о хранилищах и
// включает количество записей без обязательного извлечения всех данных.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Расширенное перечисление IndexedDB с всесторонней обработкой ошибок
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Открытие базы данных с таймаутом
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

                    // Получение количества записей (быстрее, чем извлечение всех данных)
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
// 1. Включает обработку ошибок для проблем доступа к базам данных
// 2. Предоставляет метаданные (KeyPath, AutoIncrement, IndexNames)
// 3. Получает количество записей без извлечения всех данных (более эффективно)
// 4. Обрабатывает сценарии таймаута
// 5. Возвращает структурированную информацию о схеме базы данных
// 6. Более подходит для больших баз данных, где извлечение всех данных было бы медленным

// СООБРАЖЕНИЯ БЕЗОПАСНОСТИ ДЛЯ ДОСТУПА К INDEXEDDB:
// Оба примера работают, потому что этот модуль использует автоматизацию браузера Playwright,
// которая обходит стандартные ограничения безопасности JavaScript в контексте текущей страницы:

// Стандартные ограничения JavaScript:
// - Политика одинакового происхождения ограничивает доступ к IndexedDB из других источников
// - Некоторые базы данных могут быть скрыты или защищены функциями безопасности браузера
// - Междоменный доступ к базам данных обычно заблокирован
// - Базы данных сервис-воркеров могут иметь дополнительную защиту

// Как этот пример обходит ограничения:
// - Использует автоматизацию браузера Playwright для привилегированного доступа
// - Выполняется в контексте реальной страницы, а не в изолированной среде
// - Имеет те же разрешения, что и сам веб-сайт для своего собственного хранилища
// - Может получить доступ ко всем базам данных, созданным текущим источником/доменом

// Ограничения:
// - Не может получить доступ к базам данных из других источников/доменов в том же браузере
// - Не может получить доступ к базам данных из других профилей браузера или приватного просмотра
// - Некоторые расширения браузера могут создавать изолированное хранилище, недоступное через JavaScript

// Альтернативные подходы для максимального доступа:
// - Используйте GenXdev.Webbrowser с несколькими вкладками из разных источников
// - Комбинируйте с доступом к файловой системе для каталогов профиля браузера (когда возможно)
// - Используйте автоматизацию браузера для навигации между разными доменами

### PS>

```powershell
PS>
```

Поддержка результатов конвейера с yield
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
