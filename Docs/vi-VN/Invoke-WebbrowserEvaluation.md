# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Thực thi mã JavaScript trong một tab trình duyệt đã chọn.

## Description

<details>
<summary><b>Expand description</b></summary>

Thực thi mã JavaScript trong một tab trình duyệt đã chọn với hỗ trợ async/await, promises và đồng bộ hóa dữ liệu giữa PowerShell và ngữ cảnh trình duyệt. Có thể thực thi mã từ chuỗi, tệp hoặc URL.

Hàm này cung cấp quyền truy cập toàn diện vào các API trình duyệt bao gồm IndexedDB, localStorage, sessionStorage và các tính năng nền tảng web khác. Nó bao gồm xử lý lỗi tích hợp, quản lý thời gian chờ và hỗ trợ trả về nhiều kết quả từ các hàm tạo (generator functions).

Hàm sử dụng Playwright để tự động hóa trình duyệt, cung cấp quyền truy cập đặc quyền vượt qua các hạn chế bảo mật JavaScript tiêu chuẩn trong ngữ cảnh của trang hiện tại. Điều này cho phép truy cập vào các API lưu trữ, tài nguyên cross-origin (trong cùng một tab) và các tính năng trình duyệt khác thường bị hạn chế trong các ngữ cảnh web tiêu chuẩn.

Các khả năng chính:
- Hỗ trợ Async/await và Promise
- Hàm tạo với hỗ trợ yield
- Đồng bộ hóa dữ liệu qua $Global:Data
- Truy cập đặc quyền vào API lưu trữ trình duyệt
- Vượt qua các hạn chế chính sách cùng nguồn gốc đối với lưu trữ trang hiện tại
- Liệt kê và trích xuất dữ liệu IndexedDB
- Thao tác DOM và truy cập API web
- Xử lý lỗi và quản lý thời gian chờ

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Mã JavaScript, đường dẫn tệp hoặc URL để thực thi |
| `-Inspect` | SwitchParameter | — | — | Named | — | Dừng trong trình gỡ lỗi của trình duyệt trước khi thực thi |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Ngăn chọn tab tự động |
| `-Edge` | SwitchParameter | — | — | Named | — | Sử dụng trình duyệt Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Sử dụng trình duyệt Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Sử dụng Microsoft Edge hoặc Google Chrome, tùy thuộc vào trình duyệt mặc định |
| `-Firefox` | SwitchParameter | — | — | Named | — | Sử dụng trình duyệt Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Sử dụng trình duyệt WebKit do Playwright quản lý |
| `-Page` | Object | — | — | Named | — | Tham chiếu đối tượng trang trình duyệt |
| `-ByReference` | PSObject | — | — | Named | — | Đối tượng tham chiếu phiên trình duyệt |

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

// Đồng bộ dữ liệu
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Tiêu đề tài liệu : $($Global:Data.title)
    Giá trị trả về   : $Number
";

### PS>

```powershell
PS>
```

Hỗ trợ cho promises
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

// Hỗ trợ cho promises và hơn thế nữa

// Hàm này trả về tất cả các hàng của tất cả các bảng/datastore của tất cả các cơ sở dữ liệu của indexedDb trong tab đã chọn
// Cẩn thận, không phải tất cả các trang web đều sử dụng indexedDb, nó có thể trả về một tập hợp rỗng

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // liệt kê tất cả các cơ sở dữ liệu indexedDB
    for (let db of await indexedDB.databases()) {

        // yêu cầu mở cơ sở dữ liệu
        let openRequest = await indexedDB.open(db.name);

        // chờ các trình xử lý sự kiện được gọi
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // lấy tham chiếu
        let openedDb = openRequest.result;

        // khởi tạo kết quả
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // duyệt qua tên các object store
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // tham chiếu
            let storeName = openedDb.objectStoreNames[i];

            // bắt đầu giao dịch chỉ đọc
            let tr = openedDb.transaction(storeName);

            // lấy handle của objectstore
            let store = tr.objectStore(storeName);

            // yêu cầu tất cả dữ liệu
            let getRequest = store.getAll();

            // chờ kết quả
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // thêm kết quả
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // truyền nội dung cơ sở dữ liệu này vào pipeline PowerShell và tiếp tục
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// LƯU Ý BẢO MẬT: Ví dụ cơ bản này hoạt động vì module sử dụng tự động hóa trình duyệt Playwright,
// bỏ qua các hạn chế bảo mật JavaScript thông thường trong ngữ cảnh trang hiện tại.
// Các trang web tiêu chuẩn không thể truy cập IndexedDB từ các nguồn gốc khác,
// nhưng Playwright có cùng đặc quyền như chính trang web đó.
// Xem ví dụ nâng cao bên dưới để biết thêm chi tiết về các cân nhắc bảo mật.

### PS>

```powershell
PS>
```

// Liệt kê IndexedDB nâng cao với siêu dữ liệu và xử lý lỗi

// Cách tiếp cận nâng cao này cung cấp việc trích xuất dữ liệu IndexedDB toàn diện hơn bao gồm
// số lượng cơ sở dữ liệu, xử lý lỗi và siêu dữ liệu. Không giống như ví dụ cơ bản ở trên, phiên bản này
// xử lý các hạn chế bảo mật, cung cấp thông tin chi tiết về kho lưu trữ và
// bao gồm số lượng bản ghi mà không nhất thiết phải truy xuất tất cả dữ liệu.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Liệt kê IndexedDB nâng cao với xử lý lỗi toàn diện
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Mở cơ sở dữ liệu với thời gian chờ
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Hết thời gian mở cơ sở dữ liệu')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Xử lý từng object store
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Lấy số lượng bản ghi (nhanh hơn truy xuất tất cả dữ liệu)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Hết thời gian đếm')), 3000);
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

// Khác biệt chính so với ví dụ cơ bản:
// 1. Bao gồm xử lý lỗi cho các vấn đề truy cập cơ sở dữ liệu
// 2. Cung cấp siêu dữ liệu (KeyPath, AutoIncrement, IndexNames)
// 3. Lấy số lượng bản ghi mà không truy xuất tất cả dữ liệu (hiệu quả hơn)
// 4. Xử lý các tình huống hết thời gian chờ
// 5. Trả về thông tin có cấu trúc về lược đồ cơ sở dữ liệu
// 6. Phù hợp hơn với các cơ sở dữ liệu lớn nơi việc truy xuất tất cả dữ liệu sẽ chậm

// CÂN NHẮC BẢO MẬT CHO TRUY CẬP INDEXEDDB:
// Cả hai ví dụ đều hoạt động vì module này sử dụng tự động hóa trình duyệt Playwright,
// bypass các hạn chế bảo mật JavaScript tiêu chuẩn trong ngữ cảnh
// của trang hiện tại:

// Hạn chế JavaScript tiêu chuẩn:
// - Chính sách cùng nguồn gốc hạn chế truy cập IndexedDB từ các nguồn gốc khác
// - Một số cơ sở dữ liệu có thể bị ẩn hoặc được bảo vệ bởi các tính năng bảo mật trình duyệt
// - Truy cập cơ sở dữ liệu chéo nguồn gốc thường bị chặn
// - Cơ sở dữ liệu của service worker có thể có thêm sự bảo vệ

// Cách ví dụ này vượt qua các hạn chế:
// - Sử dụng tự động hóa trình duyệt Playwright để truy cập đặc quyền
// - Thực thi trong ngữ cảnh của trang thực tế, không phải môi trường sandbox
// - Có cùng quyền như chính trang web đối với bộ nhớ của nó
// - Có thể truy cập tất cả các cơ sở dữ liệu được tạo bởi nguồn gốc/miền hiện tại

// Hạn chế:
// - Không thể truy cập cơ sở dữ liệu từ các nguồn gốc/miền khác trong cùng trình duyệt
// - Không thể truy cập cơ sở dữ liệu từ các hồ sơ trình duyệt khác hoặc duyệt web riêng tư
// - Một số tiện ích mở rộng trình duyệt có thể tạo bộ nhớ cách ly không thể truy cập qua JavaScript

// Các cách tiếp cận khác để truy cập tối đa:
// - Sử dụng GenXdev.Webbrowser với nhiều tab từ các nguồn gốc khác nhau
// - Kết hợp với truy cập hệ thống tệp vào các thư mục hồ sơ trình duyệt (khi có thể)
// - Sử dụng tự động hóa trình duyệt để điều hướng giữa các miền khác nhau

### PS>

```powershell
PS>
```

Hỗ trợ kết quả pipeline được tạo ra

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

> Mã JavaScript, đường dẫn tệp hoặc URL để thực thi

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

> Dừng trong trình gỡ lỗi của trình duyệt trước khi thực thi

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

> Ngăn chọn tab tự động

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

> Sử dụng trình duyệt Microsoft Edge

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

> Sử dụng trình duyệt Google Chrome

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

> Sử dụng Microsoft Edge hoặc Google Chrome, tùy thuộc vào trình duyệt mặc định

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

> Sử dụng trình duyệt Firefox

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

> Sử dụng trình duyệt WebKit do Playwright quản lý

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

> Tham chiếu đối tượng trang trình duyệt

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

> Đối tượng tham chiếu phiên trình duyệt

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Show-WebsiteInAllBrowsers.md)
