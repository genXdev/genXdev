# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> ดำเนินการโค้ด JavaScript ในแท็บเว็บเบราว์เซอร์ที่เลือก

## Description

<details>
<summary><b>Expand description</b></summary>

ดำเนินการโค้ด JavaScript ในแท็บเบราว์เซอร์ที่เลือก โดยรองรับ async/await,
promises และการซิงโครไนซ์ข้อมูลระหว่าง PowerShell และบริบทของเบราว์เซอร์
สามารถดำเนินการโค้ดจากสตริง ไฟล์ หรือ URL

ฟังก์ชันนี้ให้การเข้าถึง API ของเบราว์เซอร์อย่างครอบคลุม รวมถึง IndexedDB,
localStorage, sessionStorage และคุณสมบัติอื่นๆ ของเว็บแพลตฟอร์ม รวมถึง
การจัดการข้อผิดพลาดในตัว การจัดการหมดเวลา และรองรับการส่งผลลัพธ์หลายค่าจาก
ฟังก์ชันเจนเนอเรเตอร์

ฟังก์ชันนี้ใช้ Playwright สำหรับการทำงานอัตโนมัติของเบราว์เซอร์ ซึ่งให้สิทธิ์
การเข้าถึงพิเศษที่หลีกเลี่ยงข้อจำกัดด้านความปลอดภัยของ JavaScript มาตรฐาน
ในบริบทของหน้าเว็บปัจจุบัน ซึ่งเปิดใช้งานการเข้าถึง API พื้นที่จัดเก็บ
ทรัพยากรข้ามต้นทาง (ภายในแท็บเดียวกัน) และคุณสมบัติเบราว์เซอร์อื่นๆ
ที่ปกติจะถูกจำกัดในบริบทเว็บมาตรฐาน

ความสามารถหลัก:
- การรองรับ Async/await และ Promise
- ฟังก์ชันเจนเนอเรเตอร์พร้อมการรองรับ yield
- การซิงโครไนซ์ข้อมูลผ่าน $Global:Data
- การเข้าถึง API พื้นที่จัดเก็บเบราว์เซอร์ที่มีสิทธิ์พิเศษ
- การหลีกเลี่ยงข้อจำกัดนโยบายต้นทางเดียวกันสำหรับพื้นที่จัดเก็บหน้าเว็บปัจจุบัน
- การแจกแจงและดึงข้อมูลจาก IndexedDB
- การจัดการ DOM และการเข้าถึงเว็บ API
- การจัดการข้อผิดพลาดและการจัดการหมดเวลา

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | โค้ด JavaScript, เส้นทางไฟล์ หรือ URL ที่จะดำเนินการ |
| `-Inspect` | SwitchParameter | — | — | Named | — | หยุดในดีบักเกอร์ของเบราว์เซอร์ก่อนดำเนินการ |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | ป้องกันการเลือกแท็บโดยอัตโนมัติ |
| `-Edge` | SwitchParameter | — | — | Named | — | ใช้เบราว์เซอร์ Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | ใช้เว็บเบราว์เซอร์ Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | ใช้ Microsoft Edge หรือ Google Chrome ขึ้นอยู่กับว่าเบราว์เซอร์เริ่มต้นคืออะไร |
| `-Firefox` | SwitchParameter | — | — | Named | — | ใช้เบราว์เซอร์ Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | ใช้เบราว์เซอร์ WebKit ที่จัดการโดย Playwright |
| `-Page` | Object | — | — | Named | — | การอ้างอิงวัตถุหน้าเบราว์เซอร์ |
| `-ByReference` | PSObject | — | — | Named | — | ออบเจกต์อ้างอิงเซสชันของเบราว์เซอร์ |

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

// ซิงค์ข้อมูล
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    ชื่อเอกสาร : $($Global:Data.title)
    ค่าที่ส่งกลับ   : $Number
";

### PS>

```powershell
PS>
```

การสนับสนุนสัญญา
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

// รองรับ promises และอื่นๆ

// ฟังก์ชันนี้จะคืนค่าแถวทั้งหมดของทุกตาราง/ที่เก็บข้อมูลของทุกฐานข้อมูลของ IndexedDB ในแท็บที่เลือก
// ข้อควรระวัง ไม่ใช่ทุกเว็บไซต์ที่ใช้ IndexedDB อาจคืนค่าชุดว่าง

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // แจกแจงฐานข้อมูล indexedDB ทั้งหมด
    for (let db of await indexedDB.databases()) {

        // ขอเปิดฐานข้อมูล
        let openRequest = await indexedDB.open(db.name);

        // รอให้ eventhandlers ถูกเรียก
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // ได้รับ reference
        let openedDb = openRequest.result;

        // เริ่มต้นผลลัพธ์
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // วนซ้ำชื่อ object store
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // reference
            let storeName = openedDb.objectStoreNames[i];

            // เริ่ม transaction แบบอ่านอย่างเดียว
            let tr = openedDb.transaction(storeName);

            // จัดการ objectstore
            let store = tr.objectStore(storeName);

            // ขอข้อมูลทั้งหมด
            let getRequest = store.getAll();

            // รอผลลัพธ์
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // เพิ่มผลลัพธ์
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // ส่งเนื้อหาฐานข้อมูลนี้ไปยังไปป์ไลน์ PowerShell และดำเนินการต่อ
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// ข้อควรระวังด้านความปลอดภัย: ตัวอย่างพื้นฐานนี้ทำงานเนื่องจากโมดูลใช้ Playwright
// การทำงานอัตโนมัติของเบราว์เซอร์ ซึ่งหลีกเลี่ยงข้อจำกัดด้านความปลอดภัยของ JavaScript ปกติ
// ในบริบทของหน้าเว็บปัจจุบัน โดยทั่วไปเว็บเพจมาตรฐานไม่สามารถเข้าถึง IndexedDB จาก
// ต้นทางอื่นได้ แต่ Playwright มีสิทธิ์เช่นเดียวกับเว็บไซต์เอง
// ดูตัวอย่างที่ปรับปรุงแล้วด้านล่างสำหรับรายละเอียดเพิ่มเติมเกี่ยวกับข้อควรพิจารณาด้านความปลอดภัย

### PS>

```powershell
PS>
```

// การแจงนับ IndexedDB ที่ปรับปรุงแล้วพร้อมข้อมูลเมตาและการจัดการข้อผิดพลาด

// แนวทางที่ปรับปรุงนี้ให้การดึงข้อมูล IndexedDB ที่ครอบคลุมมากขึ้น รวมถึง
// จำนวนฐานข้อมูล การจัดการข้อผิดพลาด และข้อมูลเมตา แตกต่างจากตัวอย่างพื้นฐานด้านบน
// เวอร์ชันนี้จัดการข้อจำกัดด้านความปลอดภัย ให้ข้อมูลร้านค้าโดยละเอียด และ
// รวมจำนวนระเบียนโดยไม่จำเป็นต้องดึงข้อมูลทั้งหมด

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // การแจงนับ IndexedDB ที่ปรับปรุงแล้วพร้อมการจัดการข้อผิดพลาดที่ครอบคลุม
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // เปิดฐานข้อมูลพร้อมกำหนดเวลา
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Database open timeout')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // ประมวลผลแต่ละ object store
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // รับจำนวนระเบียน (เร็วกว่าการดึงข้อมูลทั้งหมด)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Count timeout')), 3000);
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

// ความแตกต่างที่สำคัญจากตัวอย่างพื้นฐาน:
// 1. รวมการจัดการข้อผิดพลาดสำหรับปัญหาการเข้าถึงฐานข้อมูล
// 2. ให้ข้อมูลเมตา (KeyPath, AutoIncrement, IndexNames)
// 3. รับจำนวนระเบียนโดยไม่ต้องดึงข้อมูลทั้งหมด (มีประสิทธิภาพมากกว่า)
// 4. จัดการสถานการณ์หมดเวลา
// 5. ส่งคืนข้อมูลที่มีโครงสร้างเกี่ยวกับสคีมาฐานข้อมูล
// 6. เหมาะกับฐานข้อมูลขนาดใหญ่ที่การดึงข้อมูลทั้งหมดจะช้ามาก

// ข้อควรพิจารณาด้านความปลอดภัยในการเข้าถึง IndexedDB:
// ทั้งสองตัวอย่างทำงานได้เนื่องจากโมดูลนี้ใช้ Playwright browser automation
// ซึ่งข้ามข้อจำกัดด้านความปลอดภัยมาตรฐานของ JavaScript ในบริบทของหน้าเว็บปัจจุบัน:

// ข้อจำกัดมาตรฐานของ JavaScript:
// - นโยบายต้นทางเดียวกัน (Same-origin policy) จำกัดการเข้าถึง IndexedDB จากต้นทางอื่น
// - ฐานข้อมูลบางส่วนอาจถูกซ่อนหรือป้องกันโดยคุณลักษณะด้านความปลอดภัยของเบราว์เซอร์
// - การเข้าถึงฐานข้อมูลข้ามต้นทางมักถูกบล็อก
// - ฐานข้อมูลของ Service Worker อาจมีการป้องกันเพิ่มเติม

// วิธีที่ตัวอย่างนี้หลีกเลี่ยงข้อจำกัด:
// - ใช้ Playwright browser automation เพื่อการเข้าถึงที่มีสิทธิพิเศษ
// - ดำเนินการในบริบทของหน้าเว็บจริง ไม่ใช่สภาพแวดล้อมแบบแซนด์บ็อกซ์
// - มีสิทธิ์เดียวกันกับเว็บไซต์สำหรับพื้นที่จัดเก็บของตัวเอง
// - สามารถเข้าถึงฐานข้อมูลทั้งหมดที่สร้างโดยต้นทาง/โดเมนปัจจุบัน

// ข้อจำกัด:
// - ไม่สามารถเข้าถึงฐานข้อมูลจากต้นทาง/โดเมนอื่นในเบราว์เซอร์เดียวกันได้
// - ไม่สามารถเข้าถึงฐานข้อมูลจากโปรไฟล์เบราว์เซอร์อื่นหรือการเรียกดูแบบส่วนตัว
// - ส่วนขยายเบราว์เซอร์บางตัวอาจสร้างพื้นที่จัดเก็บที่แยกออกมา ซึ่ง JavaScript ไม่สามารถเข้าถึงได้

// แนวทางอื่นสำหรับการเข้าถึงสูงสุด:
// - ใช้ GenXdev.Webbrowser กับหลายแท็บจากต้นทางต่างกัน
// - รวมกับการเข้าถึงระบบไฟล์ไปยังไดเรกทอรีโปรไฟล์เบราว์เซอร์ (เมื่อเป็นไปได้)
// - ใช้เบราว์เซอร์อัตโนมัติเพื่อนำทางไปยังโดเมนต่างๆ

### PS>

```powershell
PS>
```

การสนับสนุนผลลัพธ์ไปป์ไลน์ที่ถูกส่งผ่าน
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

> โค้ด JavaScript, เส้นทางไฟล์ หรือ URL ที่จะดำเนินการ

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

> หยุดในดีบักเกอร์ของเบราว์เซอร์ก่อนดำเนินการ

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

> ป้องกันการเลือกแท็บโดยอัตโนมัติ

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

> ใช้เบราว์เซอร์ Microsoft Edge

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

> ใช้เว็บเบราว์เซอร์ Google Chrome

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

> ใช้ Microsoft Edge หรือ Google Chrome ขึ้นอยู่กับว่าเบราว์เซอร์เริ่มต้นคืออะไร

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

> ใช้เบราว์เซอร์ Firefox

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

> ใช้เบราว์เซอร์ WebKit ที่จัดการโดย Playwright

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

> การอ้างอิงวัตถุหน้าเบราว์เซอร์

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

> ออบเจกต์อ้างอิงเซสชันของเบราว์เซอร์

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-WebsiteInAllBrowsers.md)
