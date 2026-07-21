# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Виконує код JavaScript у вибраній вкладці веб-браузера.

## Description

<details>
<summary><b>Expand description</b></summary>

Виконує код JavaScript у вибраній вкладці браузера з підтримкою async/await, промісів та синхронізації даних між PowerShell і контекстом браузера. Може виконувати код з рядків, файлів або URL-адрес.

Ця функція забезпечує повний доступ до API браузера, включаючи IndexedDB, localStorage, sessionStorage та інші функції веб-платформи. Вона включає вбудовану обробку помилок, керування часом очікування та підтримку повернення кількох результатів з функцій-генераторів.

Функція використовує Playwright для автоматизації браузера, що забезпечує привілейований доступ, який обходить стандартні обмеження безпеки JavaScript у контексті поточної сторінки. Це дозволяє отримувати доступ до API сховищ, ресурсів з інших джерел (у межах тієї самої вкладки) та інших функцій браузера, які зазвичай обмежені в стандартних веб-контекстах.

Ключові можливості:
- Підтримка async/await та промісів
- Функції-генератори з підтримкою yield
- Синхронізація даних через $Global:Data
- Привілейований доступ до API сховищ браузера
- Обхід обмежень політики того самого джерела для сховищ поточної сторінки
- Перелік та вилучення даних з IndexedDB
- Маніпуляція DOM та доступ до веб-API
- Обробка помилок та керування часом очікування

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Шлях до файлу або URL-адреса для виконання коду JavaScript |
| `-Inspect` | SwitchParameter | — | — | Named | — | Зупинитися в браузерному відладчику перед виконанням |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Запобігти автоматичному вибору вкладки |
| `-Edge` | SwitchParameter | — | — | Named | — | Використовуйте веб-браузер Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Використовуйте браузер Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Використовуйте Microsoft Edge або Google Chrome, залежно від того, який браузер є типовим |
| `-Firefox` | SwitchParameter | — | — | Named | — | Використовуйте браузер Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Використовуйте браузер WebKit, керований Playwright |
| `-Page` | Object | — | — | Named | — | Посилання на об'єкт сторінки браузера |
| `-ByReference` | PSObject | — | — | Named | — | Об'єкт посилання на сеанс браузера |

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

// Синхронізація даних
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Заголовок документа : $($Global:Data.title)
    значення повернення : $Number
";

### PS>

```powershell
PS>
```

Підтримка промісів
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

// Підтримка промісів та іншого

// ця функція повертає всі рядки всіх таблиць/сховищ даних усіх баз даних indexedDb у вибраній вкладці
// зауважте, не всі веб-сайти використовують indexedDb, може повернути порожній набір

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // перелічити всі бази даних indexedDB
    for (let db of await indexedDB.databases()) {

        // запит на відкриття бази даних
        let openRequest = await indexedDB.open(db.name);

        // очікування виклику обробників подій
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // отримати посилання
        let openedDb = openRequest.result;

        // ініціалізувати результат
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // ітерувати назви сховищ об'єктів
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // посилання
            let storeName = openedDb.objectStoreNames[i];

            // почати транзакцію лише для читання
            let tr = openedDb.transaction(storeName);

            // отримати дескриптор сховища об'єктів
            let store = tr.objectStore(storeName);

            // запит на всі дані
            let getRequest = store.getAll();

            // очікування результату
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // додати результат
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // передати вміст цієї бази даних до конвеєра PowerShell і продовжити
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// ПРИМІТКА З БЕЗПЕКИ: цей базовий приклад працює, оскільки модуль використовує автоматизацію браузера Playwright,
// яка обходить звичайні обмеження безпеки JavaScript у контексті поточної сторінки.
// Звичайні веб-сторінки не можуть отримати доступ до IndexedDB з інших джерел,
// але Playwright має ті ж привілеї, що й сам веб-сайт.
// Дивіться розширений приклад нижче для отримання додаткових відомостей щодо міркувань безпеки.

### PS>

```powershell
PS>
```

// Покращена нумерація IndexedDB з метаданими та обробкою помилок

// Цей покращений підхід забезпечує більш повне вилучення даних IndexedDB, включаючи
// кількість баз даних, обробку помилок і метадані. На відміну від базового прикладу вище, ця
// версія обробляє обмеження безпеки, надає детальну інформацію про сховища та
// включає кількість записів без обов'язкового вилучення всіх даних.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Покращена нумерація IndexedDB з комплексною обробкою помилок
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Відкриття бази даних з тайм-аутом
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Тайм-аут відкриття бази даних')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Обробка кожного об'єктного сховища
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Отримання кількості записів (швидше, ніж вилучення всіх даних)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Тайм-аут підрахунку')), 3000);
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

// Ключові відмінності від базового прикладу:
// 1. Включає обробку помилок для проблем доступу до бази даних
// 2. Надає метадані (KeyPath, AutoIncrement, IndexNames)
// 3. Отримує кількість записів без вилучення всіх даних (ефективніше)
// 4. Обробляє сценарії тайм-ауту
// 5. Повертає структуровану інформацію про схему бази даних
// 6. Більш підходить для великих баз даних, де вилучення всіх даних було б повільним

// МІРКУВАННЯ ЩОДО БЕЗПЕКИ ДОСТУПУ ДО INDEXEDDB:
// Обидва приклади працюють, тому що цей модуль використовує автоматизацію браузера Playwright,
// яка обходить стандартні обмеження безпеки JavaScript в контексті
// поточної сторінки:

// Стандартні обмеження JavaScript:
// - Політика того самого походження обмежує доступ до IndexedDB з інших джерел
// - Деякі бази даних можуть бути приховані або захищені функціями безпеки браузера
// - Доступ до міждоменних баз даних зазвичай заблоковано
// - Бази даних сервіс-воркерів можуть мати додатковий захист

// Як цей приклад обходить обмеження:
// - Використовує автоматизацію браузера Playwright для привілейованого доступу
// - Виконується в контексті фактичної сторінки, а не в ізольованому середовищі
// - Має ті самі дозволи, що й веб-сайт, для власного сховища
// - Може отримати доступ до всіх баз даних, створених поточним джерелом/доменом

// Обмеження:
// - Не може отримати доступ до баз даних з інших джерел/доменів у тому самому браузері
// - Не може отримати доступ до баз даних з інших профілів браузера або приватного перегляду
// - Деякі розширення браузера можуть створювати ізольовані сховища, недоступні через JavaScript

// Альтернативні підходи для максимального доступу:
// - Використовуйте GenXdev.Webbrowser з декількома вкладками з різних джерел
// - Комбінуйте з доступом до файлової системи для каталогів профілю браузера (коли можливо)
// - Використовуйте автоматизацію браузера для навігації між різними доменами

### PS>

```powershell
PS>
```

Підтримка результатів конвеєра, що повертаються за допомогою yield
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

> Шлях до файлу або URL-адреса для виконання коду JavaScript

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

> Зупинитися в браузерному відладчику перед виконанням

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

> Запобігти автоматичному вибору вкладки

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

> Використовуйте веб-браузер Microsoft Edge

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

> Використовуйте браузер Google Chrome

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

> Використовуйте Microsoft Edge або Google Chrome, залежно від того, який браузер є типовим

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

> Використовуйте браузер Firefox

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

> Використовуйте браузер WebKit, керований Playwright

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

> Посилання на об'єкт сторінки браузера

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

> Об'єкт посилання на сеанс браузера

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-WebsiteInAllBrowsers.md)
