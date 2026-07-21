# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Seçili bir web tarayıcı sekmesinde JavaScript kodu çalıştırır.

## Description

<details>
<summary><b>Expand description</b></summary>

Seçili bir tarayıcı sekmesinde async/await, promise'ler ve PowerShell ile tarayıcı bağlamı arasında veri senkronizasyonu desteğiyle JavaScript kodu çalıştırır. Kodları dizelerden, dosyalardan veya URL'lerden çalıştırabilir.

Bu işlev, IndexedDB, localStorage, sessionStorage ve diğer web platformu özellikleri dahil olmak üzere tarayıcı API'lerine kapsamlı erişim sağlar. Yerleşik hata işleme, zaman aşımı yönetimi ve üretici işlevlerden birden çok sonuç döndürme desteği içerir.

İşlev, tarayıcı otomasyonu için Playwright'ı kullanır; bu, geçerli sayfanın bağlamında standart JavaScript güvenlik kısıtlamalarını aşan ayrıcalıklı erişim sağlar. Bu, depolama API'lerine, aynı sekmedeki çapraz kaynak kaynaklarına ve normal web bağlamlarında genellikle kısıtlanan diğer tarayıcı özelliklerine erişim sağlar.

Temel yetenekler:
- Async/await ve Promise desteği
- yield desteği ile üretici işlevler
- $Global:Data aracılığıyla veri senkronizasyonu
- Tarayıcı depolama API'lerine ayrıcalıklı erişim
- Geçerli sayfa depolaması için aynı kaynak politikası kısıtlamalarını aşar
- IndexedDB numaralandırma ve veri çıkarma
- DOM manipülasyonu ve web API erişimi
- Hata işleme ve zaman aşımı yönetimi

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript kodu, dosya yolu veya çalıştırılacak URL |
| `-Inspect` | SwitchParameter | — | — | Named | — | Yürütmeden önce tarayıcı hata ayıklayıcısında kesme |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Sekme otomatik seçimini önle |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge tarayıcısını kullanın |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome tarayıcısını kullanın |
| `-Chromium` | SwitchParameter | — | — | Named | — | Varsayılan tarayıcıya bağlı olarak Microsoft Edge veya Google Chrome'u kullanın |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox tarayıcısını kullanın |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright tarafından yönetilen WebKit tarayıcısını kullanın |
| `-Page` | Object | — | — | Named | — | Tarayıcı sayfa nesnesi başvurusu |
| `-ByReference` | PSObject | — | — | Named | — | Tarayıcı oturum başvuru nesnesi |

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

// Verileri senkronize etme
Select-WebbrowserTab -Force;
$Global:Data = @{ dosyalar= (Get-ChildItem *.* -file | % FullName)};

[int] $sayi = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.dosyalar);
    data.title = document.title;
    return 123;
";

Write-Host "
    Belge başlığı : $($Global:Data.title)
    dönüş değeri  : $Sayi
";

### PS>

```powershell
PS>
```

Promis desteği
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

// Promise'ler ve daha fazlası için destek

// bu fonksiyon, seçili sekmedeki tüm indexedDb veritabanlarının tüm tablolarının/depolarının tüm satırlarını döndürür
// dikkat: tüm web siteleri indexedDb kullanmaz, boş bir küme döndürebilir

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // tüm indexedDB veritabanlarını numaralandır
    for (let db of await indexedDB.databases()) {

        // veritabanını açma isteği
        let openRequest = await indexedDB.open(db.name);

        // olay işleyicilerin çağrılmasını bekle
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // referansı al
        let openedDb = openRequest.result;

        // sonucu başlat
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // nesne deposu adlarını döngüye al
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // referans
            let storeName = openedDb.objectStoreNames[i];

            // salt okunur işlem başlat
            let tr = openedDb.transaction(storeName);

            // nesne deposu tanıtıcısını al
            let store = tr.objectStore(storeName);

            // tüm verileri iste
            let getRequest = store.getAll();

            // sonucu bekle
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // sonucu ekle
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // bu veritabanı içeriğini PowerShell ardışık düzenine akıt ve devam et
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// GÜVENLİK NOTU: Bu temel örnek çalışır çünkü modül Playwright
// tarayıcı otomasyonunu kullanır ve bu, geçerli sayfa bağlamındaki normal JavaScript güvenlik kısıtlamalarını atlar.
// Standart web sayfaları farklı kaynaklardan IndexedDB'ye erişemez, ancak Playwright web sitesinin kendisiyle aynı ayrıcalıklara sahiptir.
// Güvenlik hususları hakkında daha fazla ayrıntı için aşağıdaki gelişmiş örneğe bakın.

### PS>

```powershell
PS>
```

// Meta veriler ve hata yönetimi ile gelişmiş IndexedDB numaralandırması

// Bu gelişmiş yaklaşım, veritabanı sayıları, hata yönetimi ve meta veriler dahil
// daha kapsamlı IndexedDB veri çıkarma sağlar. Yukarıdaki temel örneğin aksine, bu
// sürüm güvenlik kısıtlamalarını ele alır, ayrıntılı mağaza bilgisi sağlar ve
// tüm verileri almak zorunda kalmadan kayıt sayılarını içerir.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Kapsamlı hata yönetimi ile gelişmiş IndexedDB numaralandırması
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Zaman aşımı ile veritabanını aç
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Veritabanı açma zaman aşımı')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Her nesne deposunu işle
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Kayıt sayısını al (tüm verileri almaktan daha hızlı)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Sayma zaman aşımı')), 3000);
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

// Temel örnekten temel farklar:
// 1. Veritabanı erişim sorunları için hata yönetimi içerir
// 2. Meta veriler sağlar (KeyPath, AutoIncrement, IndexNames)
// 3. Tüm verileri almadan kayıt sayılarını alır (daha verimli)
// 4. Zaman aşımı senaryolarını ele alır
// 5. Veritabanı şeması hakkında yapılandırılmış bilgi döndürür
// 6. Tüm verileri almanın yavaş olacağı büyük veritabanları için daha uygundur

// INDEXEDDB ERİŞİMİ İÇİN GÜVENLİK HUSUSLARI:
// Her iki örnek de çalışır çünkü bu modül, mevcut sayfanın bağlamında
// standart JavaScript güvenlik kısıtlamalarını atlayan Playwright tarayıcı
// otomasyonunu kullanır:

// Standart JavaScript Sınırlamaları:
// - Aynı kaynak politikası, IndexedDB'ye diğer kaynaklardan erişimi kısıtlar
// - Bazı veritabanları tarayıcı güvenlik özellikleri tarafından gizlenebilir veya korunabilir
// - Çapraz kaynak veritabanı erişimi genellikle engellenir
// - Servis çalışanı veritabanları ek korumaya sahip olabilir

// Bu örneğin kısıtlamaları nasıl aştığı:
// - Ayrıcalıklı erişim için Playwright tarayıcı otomasyonunu kullanır
// - Korumalı bir ortamda değil, gerçek sayfanın bağlamında çalışır
// - Kendi depolaması için web sitesiyle aynı izinlere sahiptir
// - Mevcut kaynak/alan adı tarafından oluşturulan tüm veritabanlarına erişebilir

// Sınırlamalar:
// - Aynı tarayıcıda diğer kaynaklardan/alan adlarından veritabanlarına erişemez
// - Diğer tarayıcı profillerinden veya gizli gezintiden veritabanlarına erişemez
// - Bazı tarayıcı uzantıları JavaScript ile erişilemeyen izole depolama oluşturabilir

// Maksimum Erişim İçin Alternatif Yaklaşımlar:
// - Farklı kaynaklardan birden fazla sekme ile GenXdev.Webbrowser'ı kullanın
// - Mümkün olduğunda tarayıcı profili dizinlerine dosya sistemi erişimi ile birleştirin
// - Farklı alanlar arasında gezinmek için tarayıcı otomasyonunu kullanın

### PS>

```powershell
PS>
```

Ardışık boru hattı sonuçları için destek
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

> JavaScript kodu, dosya yolu veya çalıştırılacak URL

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

> Yürütmeden önce tarayıcı hata ayıklayıcısında kesme

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

> Sekme otomatik seçimini önle

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

> Microsoft Edge tarayıcısını kullanın

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

> Google Chrome tarayıcısını kullanın

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

> Varsayılan tarayıcıya bağlı olarak Microsoft Edge veya Google Chrome'u kullanın

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

> Firefox tarayıcısını kullanın

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

> Playwright tarafından yönetilen WebKit tarayıcısını kullanın

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

> Tarayıcı sayfa nesnesi başvurusu

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

> Tarayıcı oturum başvuru nesnesi

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-WebsiteInAllBrowsers.md)
