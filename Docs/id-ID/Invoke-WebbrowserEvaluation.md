# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Menjalankan kode JavaScript di tab peramban web yang dipilih.

## Description

<details>
<summary><b>Expand description</b></summary>

Menjalankan kode JavaScript di tab browser yang dipilih dengan dukungan untuk async/await, promise, dan sinkronisasi data antara PowerShell dan konteks browser. Dapat menjalankan kode dari string, file, atau URL.

Fungsi ini menyediakan akses komprehensif ke API browser termasuk IndexedDB, localStorage, sessionStorage, dan fitur platform web lainnya. Dilengkapi dengan penanganan kesalahan bawaan, manajemen waktu tunggu, dan dukungan untuk menghasilkan banyak hasil dari fungsi generator.

Fungsi ini menggunakan Playwright untuk otomatisasi browser, yang menyediakan akses istimewa yang melewati batasan keamanan JavaScript standar dalam konteks halaman saat ini. Ini memungkinkan akses ke API penyimpanan, sumber daya lintas-asal (dalam tab yang sama), dan fitur browser lain yang biasanya dibatasi dalam konteks web standar.

Kemampuan utama:
- Dukungan Async/await dan Promise
- Dukungan fungsi generator dengan yield
- Sinkronisasi data melalui $Global:Data
- Akses istimewa ke API penyimpanan browser
- Melewati batasan kebijakan asal yang sama untuk penyimpanan halaman saat ini
- Enumerasi dan ekstraksi data IndexedDB
- Manipulasi DOM dan akses API web
- Penanganan kesalahan dan manajemen waktu tunggu

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Kode JavaScript, jalur file atau URL untuk dieksekusi |
| `-Inspect` | SwitchParameter | — | — | Named | — | Hentikan di debugger browser sebelum mengeksekusi |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Mencegah pemilihan tab otomatis |
| `-Edge` | SwitchParameter | — | — | Named | — | Gunakan browser Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Gunakan browser Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Gunakan Microsoft Edge atau Google Chrome, tergantung pada browser default yang digunakan |
| `-Firefox` | SwitchParameter | — | — | Named | — | Gunakan peramban Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Gunakan browser WebKit yang dikelola oleh Playwright |
| `-Page` | Object | — | — | Named | — | Referensi objek halaman browser |
| `-ByReference` | PSObject | — | — | Named | — | Objek referensi sesi browser |

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

// Menyinkronkan data
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Judul dokumen : $($Global:Data.title)
    nilai kembali : $Number
";

### PS>

```powershell
PS>
```

Dukungan untuk promise
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

// Dukungan untuk promise dan lainnya

// Fungsi ini mengembalikan semua baris dari semua tabel/datastore dari semua database indexedDb di tab yang dipilih
// Hati-hati, tidak semua situs web menggunakan indexedDb, bisa mengembalikan set kosong

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // enumerasi semua database indexedDB
    for (let db of await indexedDB.databases()) {

        // permintaan untuk membuka database
        let openRequest = await indexedDB.open(db.name);

        // tunggu eventhandler dipanggil
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // dapatkan referensi
        let openedDb = openRequest.result;

        // inisialisasi hasil
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // iterasi nama object store
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // referensi
            let storeName = openedDb.objectStoreNames[i];

            // mulai transaksi readonly
            let tr = openedDb.transaction(storeName);

            // dapatkan handle objectstore
            let store = tr.objectStore(storeName);

            // minta semua data
            let getRequest = store.getAll();

            // tunggu hasil
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // tambahkan hasil
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // alirkan konten database ini ke pipeline PowerShell, dan lanjutkan
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// CATATAN KEAMANAN: Contoh dasar ini berfungsi karena modul menggunakan Playwright
// otomatisasi browser, yang melewati batasan keamanan JavaScript normal
// dalam konteks halaman saat ini. Halaman web standar tidak dapat mengakses IndexedDB dari
// asal lain, tetapi Playwright memiliki hak istimewa yang sama dengan situs web itu sendiri.
// Lihat contoh yang ditingkatkan di bawah untuk detail lebih lanjut tentang pertimbangan keamanan.

### PS>

```powershell
PS>
```

// Enumerasi IndexedDB yang ditingkatkan dengan metadata dan penanganan kesalahan

// Pendekatan yang ditingkatkan ini memberikan ekstraksi data IndexedDB yang lebih komprehensif termasuk
// jumlah basis data, penanganan kesalahan, dan metadata. Tidak seperti contoh dasar di atas, versi ini
// menangani batasan keamanan, memberikan informasi toko terperinci, dan
// menyertakan jumlah catatan tanpa harus mengambil semua data.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Enumerasi IndexedDB yang ditingkatkan dengan penanganan kesalahan yang komprehensif
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Buka basis data dengan batas waktu
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

            // Proses setiap penyimpanan objek
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Dapatkan jumlah catatan (lebih cepat daripada mengambil semua data)
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

// Perbedaan utama dari contoh dasar:
// 1. Menyertakan penanganan kesalahan untuk masalah akses basis data
// 2. Menyediakan metadata (KeyPath, AutoIncrement, IndexNames)
// 3. Mendapatkan jumlah catatan tanpa mengambil semua data (lebih efisien)
// 4. Menangani skenario batas waktu
// 5. Mengembalikan informasi terstruktur tentang skema basis data
// 6. Lebih cocok untuk basis data besar di mana mengambil semua data akan lambat

// PERTIMBANGAN KEAMANAN UNTUK AKSES INDEXEDDB:
// Kedua contoh bekerja karena modul ini menggunakan otomatisasi browser Playwright,
// yang mem-bypass batasan keamanan JavaScript standar dalam konteks halaman saat ini:

// Keterbatasan JavaScript Standar:
// - Kebijakan asal yang sama (same-origin policy) membatasi akses ke IndexedDB dari asal lain
// - Beberapa basis data mungkin disembunyikan atau dilindungi oleh fitur keamanan browser
// - Akses basis data lintas asal biasanya diblokir
// - Basis data service worker mungkin memiliki perlindungan tambahan

// Bagaimana contoh ini mem-bypass batasan:
// - Menggunakan otomatisasi browser Playwright untuk akses istimewa
// - Dieksekusi dalam konteks halaman sebenarnya, bukan lingkungan sandbox
// - Memiliki izin yang sama dengan situs web itu sendiri untuk penyimpanannya
// - Dapat mengakses semua basis data yang dibuat oleh asal/domain saat ini

// Keterbatasan:
// - Tidak dapat mengakses basis data dari asal/domain lain di browser yang sama
// - Tidak dapat mengakses basis data dari profil browser lain atau penjelajahan pribadi
// - Beberapa ekstensi browser mungkin membuat penyimpanan terisolasi yang tidak dapat diakses melalui JavaScript

// Pendekatan Alternatif untuk Akses Maksimal:
// - Gunakan GenXdev.Webbrowser dengan beberapa tab dari asal yang berbeda
// - Gabungkan dengan akses sistem file ke direktori profil browser (jika memungkinkan)
// - Gunakan otomatisasi browser untuk menavigasi antar domain yang berbeda

### PS>

```powershell
PS>
```

Dukungan untuk hasil pipeline yang dihasilkan
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

> Kode JavaScript, jalur file atau URL untuk dieksekusi

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

> Hentikan di debugger browser sebelum mengeksekusi

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

> Mencegah pemilihan tab otomatis

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

> Gunakan browser Microsoft Edge

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

> Gunakan browser Google Chrome

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

> Gunakan Microsoft Edge atau Google Chrome, tergantung pada browser default yang digunakan

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

> Gunakan peramban Firefox

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

> Gunakan browser WebKit yang dikelola oleh Playwright

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

> Referensi objek halaman browser

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

> Objek referensi sesi browser

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Show-WebsiteInAllBrowsers.md)
