# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> चयनित वेब ब्राउज़र टैब में JavaScript कोड निष्पादित करता है।

## Description

<details>
<summary><b>Expand description</b></summary>

एक चयनित ब्राउज़र टैब में async/await, प्रॉमिसेस और PowerShell तथा ब्राउज़र संदर्भ के बीच डेटा सिंक्रनाइज़ेशन के समर्थन के साथ JavaScript कोड निष्पादित करता है। स्ट्रिंग्स, फ़ाइलों या URL से कोड निष्पादित कर सकता है।

यह फ़ंक्शन IndexedDB, localStorage, sessionStorage और अन्य वेब प्लेटफ़ॉर्म सुविधाओं सहित ब्राउज़र API तक व्यापक पहुँच प्रदान करता है। इसमें अंतर्निहित त्रुटि प्रबंधन, टाइमआउट प्रबंधन और जनरेटर फ़ंक्शन से कई परिणाम उत्पन्न करने का समर्थन शामिल है।

यह फ़ंक्शन ब्राउज़र ऑटोमेशन के लिए प्लेराइट का उपयोग करता है, जो वर्तमान पृष्ठ के संदर्भ में मानक JavaScript सुरक्षा प्रतिबंधों को दरकिनार करते हुए विशेषाधिकार प्राप्त पहुँच प्रदान करता है। यह स्टोरेज API, क्रॉस-ओरिजिन संसाधनों (उसी टैब के भीतर) और अन्य ब्राउज़र सुविधाओं तक पहुँच को सक्षम करता है जो सामान्यतः मानक वेब संदर्भों में प्रतिबंधित होती हैं।

मुख्य क्षमताएँ:
- Async/await और Promise समर्थन
- yield समर्थन के साथ जनरेटर फ़ंक्शन
- $Global:Data के माध्यम से डेटा सिंक्रनाइज़ेशन
- ब्राउज़र स्टोरेज API तक विशेषाधिकार प्राप्त पहुँच
- वर्तमान पृष्ठ स्टोरेज के लिए समान-मूल नीति प्रतिबंधों को दरकिनार करता है
- IndexedDB गणना और डेटा निष्कर्षण
- DOM मैनिपुलेशन और वेब API पहुँच
- त्रुटि प्रबंधन और टाइमआउट प्रबंधन

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | जावास्क्रिप्ट कोड, फ़ाइल पथ या निष्पादित करने के लिए URL |
| `-Inspect` | SwitchParameter | — | — | Named | — | ब्राउज़र डीबगर में निष्पादित करने से पहले रोकें |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | स्वचालित टैब चयन रोकें |
| `-Edge` | SwitchParameter | — | — | Named | — | माइक्रोसॉफ्ट एज ब्राउज़र का उपयोग करें |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome ब्राउज़र का उपयोग करें |
| `-Chromium` | SwitchParameter | — | — | Named | — | माइक्रोसॉफ्ट एज या गूगल क्रोम का उपयोग करें, यह इस पर निर्भर करता है कि डिफ़ॉल्ट ब्राउज़र कौन सा है |
| `-Firefox` | SwitchParameter | — | — | Named | — | फ़ायरफ़ॉक्स ब्राउज़र का उपयोग करें |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-प्रबंधित WebKit ब्राउज़र का उपयोग करें |
| `-Page` | Object | — | — | Named | — | ब्राउज़र पृष्ठ वस्तु संदर्भ |
| `-ByReference` | PSObject | — | — | Named | — | ब्राउज़र सत्र संदर्भ वस्तु |

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

// डेटा सिंक्रोनाइज़ कर रहा है
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    दस्तावेज़ शीर्षक : $($Global:Data.title)
    रिटर्न मान   : $Number
";

### PS>

```powershell
PS>
```

प्रॉमिसेज़ के लिए समर्थन
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

// प्रॉमिसेस और अधिक के लिए समर्थन

// यह फ़ंक्शन चयनित टैब में indexedDb के सभी डेटाबेस के सभी टेबल/डेटास्टोर्स की सभी पंक्तियाँ लौटाता है
// सावधान रहें, सभी वेबसाइटें indexedDb का उपयोग नहीं करतीं, यह एक खाली सेट लौटा सकता है

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // सभी indexedDB डेटाबेसों की गणना करें
    for (let db of await indexedDB.databases()) {

        // डेटाबेस खोलने का अनुरोध
        let openRequest = await indexedDB.open(db.name);

        // ईवेंट हैंडलर के कॉल होने की प्रतीक्षा करें
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // संदर्भ प्राप्त करें
        let openedDb = openRequest.result;

        // परिणाम आरंभ करें
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // ऑब्जेक्ट स्टोर नामों पर पुनरावृत्ति करें
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // संदर्भ
            let storeName = openedDb.objectStoreNames[i];

            // केवल-पढ़ने योग्य लेन-देन शुरू करें
            let tr = openedDb.transaction(storeName);

            // ऑब्जेक्टस्टोर हैंडल प्राप्त करें
            let store = tr.objectStore(storeName);

            // सभी डेटा का अनुरोध करें
            let getRequest = store.getAll();

            // परिणाम की प्रतीक्षा करें
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // परिणाम जोड़ें
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // इस डेटाबेस की सामग्री को PowerShell पाइपलाइन में स्ट्रीम करें, और जारी रखें
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// सुरक्षा नोट: यह मूल उदाहरण इसलिए काम करता है क्योंकि मॉड्यूल Playwright
// ब्राउज़र स्वचालन का उपयोग करता है, जो वर्तमान पृष्ठ संदर्भ में सामान्य JavaScript सुरक्षा प्रतिबंधों को दरकिनार करता है।
// मानक वेब पेज अन्य मूल से IndexedDB तक नहीं पहुँच सकते, लेकिन Playwright के पास वेबसाइट के समान ही विशेषाधिकार हैं।
// सुरक्षा विचारों के बारे में अधिक विवरण के लिए नीचे उन्नत उदाहरण देखें।

### PS>

```powershell
PS>
```

// मेटाडेटा और त्रुटि प्रबंधन के साथ उन्नत IndexedDB गणना

// यह उन्नत दृष्टिकोण डेटाबेस गणना, त्रुटि प्रबंधन और मेटाडेटा सहित अधिक व्यापक IndexedDB डेटा निष्कर्षण प्रदान करता है।
// उपरोक्त मूल उदाहरण के विपरीत, यह संस्करण सुरक्षा प्रतिबंधों को संभालता है, विस्तृत स्टोर जानकारी प्रदान करता है, और
// सभी डेटा को पुनर्प्राप्त किए बिना रिकॉर्ड गणना शामिल करता है।

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // व्यापक त्रुटि प्रबंधन के साथ उन्नत IndexedDB गणना
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // टाइमआउट के साथ डेटाबेस खोलें
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('डेटाबेस खोलने का टाइमआउट')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // प्रत्येक ऑब्जेक्ट स्टोर को संसाधित करें
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // रिकॉर्ड गणना प्राप्त करें (सभी डेटा पुनर्प्राप्त करने से तेज)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('गणना टाइमआउट')), 3000);
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

// मूल उदाहरण से मुख्य अंतर:
// 1. डेटाबेस एक्सेस समस्याओं के लिए त्रुटि प्रबंधन शामिल है
// 2. मेटाडेटा प्रदान करता है (KeyPath, AutoIncrement, IndexNames)
// 3. सभी डेटा पुनर्प्राप्त किए बिना रिकॉर्ड गणना प्राप्त करता है (अधिक कुशल)
// 4. टाइमआउट परिदृश्यों को संभालता है
// 5. डेटाबेस स्कीमा के बारे में संरचित जानकारी लौटाता है
// 6. बड़े डेटाबेस के लिए अधिक उपयुक्त जहां सभी डेटा पुनर्प्राप्त करना धीमा होगा

// INDEXEDDB एक्सेस के लिए सुरक्षा संबंधी विचार:
// दोनों उदाहरण काम करते हैं क्योंकि यह मॉड्यूल Playwright ब्राउज़र ऑटोमेशन का उपयोग करता है,
// जो वर्तमान पृष्ठ के संदर्भ में मानक जावास्क्रिप्ट सुरक्षा प्रतिबंधों को दरकिनार करता है:

// मानक जावास्क्रिप्ट सीमाएं:
// - समान-मूल नीति अन्य मूल से IndexedDB तक पहुंच को प्रतिबंधित करती है
// - कुछ डेटाबेस ब्राउज़र सुरक्षा सुविधाओं द्वारा छिपे या संरक्षित हो सकते हैं
// - क्रॉस-ओरिजिन डेटाबेस एक्सेस आमतौर पर अवरुद्ध होता है
// - सर्विस वर्कर डेटाबेस में अतिरिक्त सुरक्षा हो सकती है

// यह उदाहरण प्रतिबंधों को कैसे दरकिनार करता है:
// - विशेषाधिकार प्राप्त पहुंच के लिए Playwright ब्राउज़र ऑटोमेशन का उपयोग करता है
// - सैंडबॉक्स वातावरण के बजाय वास्तविक पृष्ठ के संदर्भ में निष्पादित होता है
// - अपने स्वयं के भंडारण के लिए वेबसाइट के समान अनुमतियां हैं
// - वर्तमान मूल/डोमेन द्वारा बनाए गए सभी डेटाबेस तक पहुंच सकता है

// सीमाएं:
// - उसी ब्राउज़र में अन्य मूल/डोमेन से डेटाबेस तक नहीं पहुंच सकता
// - अन्य ब्राउज़र प्रोफाइल या निजी ब्राउज़िंग से डेटाबेस तक नहीं पहुंच सकता
// - कुछ ब्राउज़र एक्सटेंशन जावास्क्रिप्ट के माध्यम से सुलभ नहीं होने वाला पृथक भंडारण बना सकते हैं

// अधिकतम पहुंच के लिए वैकल्पिक दृष्टिकोण:
// - विभिन्न मूल से कई टैब के साथ GenXdev.Webbrowser का उपयोग करें
// - जब संभव हो तो ब्राउज़र प्रोफाइल निर्देशिकाओं तक फ़ाइल सिस्टम एक्सेस के साथ जोड़ें
// - विभिन्न डोमेन के बीच नेविगेट करने के लिए ब्राउज़र ऑटोमेशन का उपयोग करें

### PS>

```powershell
PS>
```

पाइपलाइन परिणामों के लिए समर्थन
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

> जावास्क्रिप्ट कोड, फ़ाइल पथ या निष्पादित करने के लिए URL

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

> ब्राउज़र डीबगर में निष्पादित करने से पहले रोकें

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

> स्वचालित टैब चयन रोकें

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

> माइक्रोसॉफ्ट एज ब्राउज़र का उपयोग करें

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

> Google Chrome ब्राउज़र का उपयोग करें

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

> माइक्रोसॉफ्ट एज या गूगल क्रोम का उपयोग करें, यह इस पर निर्भर करता है कि डिफ़ॉल्ट ब्राउज़र कौन सा है

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

> फ़ायरफ़ॉक्स ब्राउज़र का उपयोग करें

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

> Playwright-प्रबंधित WebKit ब्राउज़र का उपयोग करें

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

> ब्राउज़र पृष्ठ वस्तु संदर्भ

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

> ब्राउज़र सत्र संदर्भ वस्तु

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-WebsiteInAllBrowsers.md)
