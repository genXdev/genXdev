# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> 在选定的网络浏览器标签页中执行 JavaScript 代码。

## Description

<details>
<summary><b>Expand description</b></summary>

在选定的浏览器标签页中执行JavaScript代码，支持async/await、Promise以及PowerShell与浏览器上下文之间的数据同步。可从字符串、文件或URL执行代码。

此函数提供对浏览器API的全面访问，包括IndexedDB、localStorage、sessionStorage及其他Web平台功能。内置错误处理、超时管理，并支持从生成器函数中产出多个结果。

该函数使用Playwright进行浏览器自动化，提供绕过当前页面标准JavaScript安全限制的特权访问。这使其能够访问存储API、同标签页内的跨源资源以及其他通常受限于标准Web上下文的浏览器功能。

关键能力：
- Async/await和Promise支持
- 支持yield的生成器函数
- 通过$Global:Data进行数据同步
- 对浏览器存储API的特权访问
- 绕过当前页面存储的同源策略限制
- IndexedDB枚举与数据提取
- DOM操作和Web API访问
- 错误处理与超时管理

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript code, file path or URL to execute |
| `-Inspect` | SwitchParameter | — | — | Named | — | 在执行前在浏览器调试器中设置断点 |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevent automatic tab selection |
| `-Edge` | SwitchParameter | — | — | Named | — | 请使用 Microsoft Edge 浏览器 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 请使用谷歌浏览器 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器是什么，使用 Microsoft Edge 或 Google Chrome。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 使用 Firefox 浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的 WebKit 浏览器 |
| `-Page` | Object | — | — | Named | — | 浏览器页面对象引用 |
| `-ByReference` | PSObject | — | — | Named | — | 浏览器会话引用对象 |

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

// 同步数据
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    文档标题 : $($Global:Data.title)
    返回值   : $Number
";

### PS>

```powershell
PS>
```

支持 Promise
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

// 支持 Promise 和更多功能

// 此函数返回所选标签页中 indexedDb 的所有库、所有表/数据存储的所有行
// 注意，并非所有网站都使用 indexedDb，可能返回空集

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // 枚举所有 indexedDB 数据库
    for (let db of await indexedDB.databases()) {

        // 请求打开数据库
        let openRequest = await indexedDB.open(db.name);

        // 等待事件处理程序被调用
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // 获取引用
        let openedDb = openRequest.result;

        // 初始化结果
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // 遍历对象存储名称
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // 引用
            let storeName = openedDb.objectStoreNames[i];

            // 开始只读事务
            let tr = openedDb.transaction(storeName);

            // 获取对象存储句柄
            let store = tr.objectStore(storeName);

            // 请求所有数据
            let getRequest = store.getAll();

            // 等待结果
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // 添加结果
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // 将此数据库内容流式传输到 PowerShell 管道，并继续
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// 安全说明：此基本示例之所以有效，是因为模块使用 Playwright 浏览器自动化，
// 绕过了当前页面上下文中正常的 JavaScript 安全限制。
// 标准网页无法访问来自其他来源的 IndexedDB，但 Playwright 具有与网站本身相同的权限。
// 有关安全考虑的更多详细信息，请参见下面的增强示例。

### PS>

```powershell
PS>
```

// 增强的IndexedDB枚举，包含元数据和错误处理

// 这种增强方法提供了更全面的IndexedDB数据提取，包括
// 数据库计数、错误处理和元数据。与上面的基本示例不同，此
// 版本处理安全限制，提供详细的存储信息，并
// 包含记录计数，而不必检索所有数据。

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // 增强的IndexedDB枚举，包含全面的错误处理
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // 打开数据库并设置超时
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('数据库打开超时')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // 处理每个对象存储
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // 获取记录计数（比检索所有数据更快）
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('计数超时')), 3000);
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

// 与基本示例的主要区别：
// 1. 包含数据库访问问题的错误处理
// 2. 提供元数据（KeyPath、AutoIncrement、IndexNames）
// 3. 获取记录计数而不检索所有数据（更高效）
// 4. 处理超时场景
// 5. 返回关于数据库模式的结构化信息
// 6. 更适合大型数据库，避免检索所有数据导致速度缓慢

// INDEXEDDB访问的安全考虑：
// 两个示例都能工作，因为此模块使用Playwright浏览器自动化，
// 在当前页面的上下文中绕过了标准的JavaScript安全限制：

// 标准JavaScript限制：
// - 同源策略限制了从其他源访问IndexedDB
// - 某些数据库可能被浏览器安全功能隐藏或保护
// - 跨源数据库访问通常被阻止
// - 服务工作进程数据库可能有额外保护

// 此示例如何绕过限制：
// - 使用Playwright浏览器自动化获得特权访问
// - 在实际页面的上下文中执行，而非沙盒环境
// - 具有与网站自身相同的存储权限
// - 可以访问当前源/域名创建的所有数据库

// 限制：
// - 无法访问同一浏览器中其他源/域名的数据库
// - 无法访问其他浏览器配置文件或隐私浏览模式的数据库
// - 某些浏览器扩展可能创建无法通过JavaScript访问的隔离存储

// 最大化访问的替代方法：
// - 使用GenXdev.Webbrowser打开多个不同源标签页
// - 结合文件系统访问浏览器配置文件目录（如果可能）
// - 使用浏览器自动化在不同域名之间导航

// 改进建议：
// 1. 安全：建议在访问前检查数据库名称或来源
// 2. 性能：对于大型存储，考虑限制检索的记录数
// 3. 并发：使用事务时避免长时间运行
// 4. 内存：处理可能大数据量的流式传输
// 5. 隐私：遵守存储访问策略

### PS>

```powershell
PS>
```

支持管道结果的生成
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
