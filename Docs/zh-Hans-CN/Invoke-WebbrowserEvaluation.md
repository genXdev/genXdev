# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> 在选定的网页浏览器标签中执行JavaScript代码。

## Description

<details>
<summary><b>Expand description</b></summary>

在选定的浏览器标签页中执行JavaScript代码，支持async/await、Promise以及PowerShell与浏览器上下文之间的数据同步。可从字符串、文件或URL执行代码。

此函数提供对浏览器API的全面访问，包括IndexedDB、localStorage、sessionStorage及其他Web平台特性。内置错误处理、超时管理，并支持从生成器函数中产出多个结果。

该函数使用Playwright进行浏览器自动化，在当前页面上下文中提供超越标准JavaScript安全限制的特权访问。这使得能够访问存储API、跨源资源（同一标签页内）以及其他通常在标准Web上下文中受限的浏览器功能。

主要能力：
- Async/await和Promise支持
- 生成器函数与yield支持
- 通过$Global:Data进行数据同步
- 浏览器存储API的特权访问
- 绕过当前页面存储的同源策略限制
- IndexedDB枚举与数据提取
- DOM操作与Web API访问
- 错误处理与超时管理

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript 代码、文件路径或要执行的 URL |
| `-Inspect` | SwitchParameter | — | — | Named | — | 在执行前在浏览器调试器中设置断点 |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | 防止自动选项卡选择 |
| `-Edge` | SwitchParameter | — | — | Named | — | 使用微软Edge浏览器 |
| `-Chrome` | SwitchParameter | — | — | Named | — | .NAME
    Get-Process
.SYNOPSIS
    获取在本地计算机上运行的进程。

.DESCRIPTION
    Get-Process cmdlet 获取本地计算机上的进程。

.PARAMETER Name
    指定要获取的进程的名称。可以输入多个名称（用逗号分隔）并使用通配符。

.PARAMETER Id
    指定要获取的进程的进程 ID (PID)。

.PARAMETER ComputerName
    获取指定计算机上的进程。默认值为本地计算机。

.INPUTS
    System.String[]
    可以通过管道将进程名称传递给 Get-Process。

.OUTPUTS
    System.Diagnostics.Process
    Get-Process 返回 System.Diagnostics.Process 对象。 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器，使用 Microsoft Edge 或 Google Chrome。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 使用Firefox浏览器 |
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

// 支持 Promise 及更多功能

// 此函数返回选定标签页中所有 IndexedDB 数据库的所有表/数据存储的所有行
// 注意：并非所有网站都使用 IndexedDB，可能返回空集

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // 枚举所有 IndexedDB 数据库
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

// 安全说明：此基本示例之所以有效，是因为模块使用了 Playwright
// 浏览器自动化，它绕过了当前页面上下文中正常的 JavaScript 安全限制。
// 标准网页无法访问来自其他源的 IndexedDB，但 Playwright 拥有与网站本身相同的权限。
// 有关安全考虑的更多详细信息，请参见下面的增强示例。

### PS>

```powershell
PS>
```

// 增强型 IndexedDB 枚举，包含元数据和错误处理

// 这种增强方法提供了更全面的 IndexedDB 数据提取，包括
// 数据库计数、错误处理和元数据。与上面的基本示例不同，此
// 版本处理安全限制，提供详细的存储信息，并
// 包含记录计数，而不必检索所有数据。

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // 增强型 IndexedDB 枚举，包含全面的错误处理
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
// 5. 返回数据库模式的结构化信息
// 6. 更适合大型数据库，避免检索所有数据导致缓慢

// INDEXEDDB 访问的安全考虑：
// 两个示例均有效，因为此模块使用 Playwright 浏览器自动化，
// 在当前页面的上下文中绕过了标准 JavaScript 安全限制：

// 标准 JavaScript 限制：
// - 同源策略限制从其他来源访问 IndexedDB
// - 某些数据库可能被浏览器安全功能隐藏或保护
// - 跨来源数据库访问通常被阻止
// - 服务工作者数据库可能具有额外保护

// 此示例如何绕过限制：
// - 使用 Playwright 浏览器自动化实现特权访问
// - 在实际页面的上下文中执行，而非沙盒环境
// - 对于其自身存储，具有与网站本身相同的权限
// - 可以访问当前来源/域创建的所有数据库

// 限制：
// - 无法访问同一浏览器中其他来源/域的数据库
// - 无法访问其他浏览器配置文件或隐私浏览中的数据库
// - 某些浏览器扩展可能创建无法通过 JavaScript 访问的隔离存储

// 实现最大访问的替代方法：
// - 使用 GenXdev.Webbrowser 打开多个不同来源的标签页
// - 结合文件系统访问浏览器配置文件目录（如果可能）
// - 使用浏览器自动化在不同域名之间导航

### PS>

```powershell
PS>
```

支持生成管道结果
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

> JavaScript 代码、文件路径或要执行的 URL

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

> 在执行前在浏览器调试器中设置断点

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

> 防止自动选项卡选择

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

> 使用微软Edge浏览器

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

> .NAME
    Get-Process
.SYNOPSIS
    获取在本地计算机上运行的进程。

.DESCRIPTION
    Get-Process cmdlet 获取本地计算机上的进程。

.PARAMETER Name
    指定要获取的进程的名称。可以输入多个名称（用逗号分隔）并使用通配符。

.PARAMETER Id
    指定要获取的进程的进程 ID (PID)。

.PARAMETER ComputerName
    获取指定计算机上的进程。默认值为本地计算机。

.INPUTS
    System.String[]
    可以通过管道将进程名称传递给 Get-Process。

.OUTPUTS
    System.Diagnostics.Process
    Get-Process 返回 System.Diagnostics.Process 对象。

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

> 根据默认浏览器，使用 Microsoft Edge 或 Google Chrome。

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

> 使用Firefox浏览器

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

> 使用 Playwright 管理的 WebKit 浏览器

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

> 浏览器页面对象引用

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

> 浏览器会话引用对象

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Show-WebsiteInAllBrowsers.md)
