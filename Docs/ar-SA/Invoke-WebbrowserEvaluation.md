# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> ينفذ كود جافا سكريبت في علامة تبويب متصفح محددة.

## Description

<details>
<summary><b>Expand description</b></summary>

ينفذ كود جافاسكريبت في علامة تبويب متصفح محددة مع دعم لـ async/await والوعود ومزامنة البيانات بين باورشيل وسياق المتصفح. يمكن تنفيذ الكود من سلاسل نصية أو ملفات أو روابط URL.

توفر هذه الوظيفة وصولاً شاملاً لواجهات برمجة التطبيقات الخاصة بالمتصفح بما في ذلك IndexedDB و localStorage و sessionStorage وميزات منصة الويب الأخرى. تتضمن معالجة أخطاء مدمجة، وإدارة المهلة الزمنية، ودعم إرجاع نتائج متعددة من دوال المولدات.

تستخدم الوظيفة Playwright لأتمتة المتصفح، مما يوفر وصولاً متميزاً يتجاوز قيود أمان جافاسكريبت القياسية في سياق الصفحة الحالية. هذا يتيح الوصول إلى واجهات برمجة التخزين، والموارد عبر النطاقات (ضمن نفس علامة التبويب)، وميزات المتصفح الأخرى التي تكون مقيدة عادةً في سياقات الويب القياسية.

القدرات الرئيسية:
- دعم async/await والوعود
- دوال المولدات مع دعم yield
- مزامنة البيانات عبر $Global:Data
- وصول متميز لواجهات تخزين المتصفح
- تجاوز قيود سياسة الأصل نفسه لتخزين الصفحة الحالية
- تعداد IndexedDB واستخراج البيانات
- معالجة DOM والوصول لواجهات برمجة الويب
- معالجة الأخطاء وإدارة المهلة الزمنية

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | كود جافا سكريبت، مسار ملف أو عنوان URL للتنفيذ |
| `-Inspect` | SwitchParameter | — | — | Named | — | توقف في مصحح المتصفح قبل التنفيذ |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | منع تحديد علامة التبويب تلقائيًا |
| `-Edge` | SwitchParameter | — | — | Named | — | استخدم متصفح مايكروسوفت إيدج |
| `-Chrome` | SwitchParameter | — | — | Named | — | استخدم متصفح Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | استخدم Microsoft Edge أو Google Chrome، حسب المتصفح الافتراضي |
| `-Firefox` | SwitchParameter | — | — | Named | — | استخدم متصفح Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | استخدم متصفح WebKit المُدار بواسطة Playwright |
| `-Page` | Object | — | — | Named | — | مرجع كائن صفحة المتصفح |
| `-ByReference` | PSObject | — | — | Named | — | كائن مرجع جلسة المتصفح |

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

// مزامنة البيانات
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    عنوان المستند : $($Global:Data.title)
    القيمة المعادة   : $Number
";

### PS>

```powershell
PS>
```

دعم الوعود
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

// دعم للوعود والمزيد

// هذه الدالة ترجع كل الصفوف من كل الجداول/مخازن البيانات لكل قواعد بيانات indexedDb في التبويب المحدد
// انتبه، ليست كل المواقع تستخدم indexedDb، قد تعيد مجموعة فارغة

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // تعداد جميع قواعد بيانات indexedDB
    for (let db of await indexedDB.databases()) {

        // طلب فتح قاعدة البيانات
        let openRequest = await indexedDB.open(db.name);

        // الانتظار حتى يتم استدعاء معالجات الأحداث
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // الحصول على المرجع
        let openedDb = openRequest.result;

        // تهيئة النتيجة
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // التكرار على أسماء مخازن الكائنات
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // المرجع
            let storeName = openedDb.objectStoreNames[i];

            // بدء معاملة للقراءة فقط
            let tr = openedDb.transaction(storeName);

            // الحصول على مقبض مخزن الكائنات
            let store = tr.objectStore(storeName);

            // طلب جميع البيانات
            let getRequest = store.getAll();

            // انتظار النتيجة
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // إضافة النتيجة
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // إرسال محتويات قاعدة البيانات هذه إلى أنابيب PowerShell، والمتابعة
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// ملاحظة أمنية: هذا المثال الأساسي يعمل لأن الوحدة النمطية تستخدم أتمتة المتصفح Playwright،
// التي تتجاوز قيود أمان JavaScript العادية في سياق الصفحة الحالية. لا يمكن لصفحات الويب القياسية الوصول إلى IndexedDB من
// مصادر أخرى، لكن Playwright لها نفس صلاحيات موقع الويب نفسه.
// انظر المثال المحسن أدناه لمزيد من التفاصيل حول الاعتبارات الأمنية.

### PS>

```powershell
PS>
```

// تعداد IndexedDB محسّن مع البيانات الوصفية ومعالجة الأخطاء

// يوفر هذا النهج المحسّن استخراجًا أكثر شمولاً لبيانات IndexedDB بما في ذلك
// أعداد قواعد البيانات ومعالجة الأخطاء والبيانات الوصفية. على عكس المثال الأساسي أعلاه،
// يتعامل هذا الإصدار مع قيود الأمان، ويوفر معلومات مفصلة عن المتاجر، ويتضمن
// أعداد السجلات دون الحاجة إلى استرداد جميع البيانات بالضرورة.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // تعداد IndexedDB محسّن مع معالجة شاملة للأخطاء
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // فتح قاعدة البيانات مع مهلة
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('انتهت مهلة فتح قاعدة البيانات')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // معالجة كل مخزن كائنات
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // الحصول على عدد السجلات (أسرع من استرداد جميع البيانات)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('انتهت مهلة العد')), 3000);
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

// الاختلافات الرئيسية عن المثال الأساسي:
// 1. يتضمن معالجة الأخطاء لمشاكل الوصول إلى قاعدة البيانات
// 2. يوفر بيانات وصفية (KeyPath، AutoIncrement، IndexNames)
// 3. يحصل على أعداد السجلات دون استرداد جميع البيانات (أكثر كفاءة)
// 4. يتعامل مع سيناريوهات المهلة
// 5. يعيد معلومات منظمة حول مخطط قاعدة البيانات
// 6. أكثر ملاءمة لقواعد البيانات الكبيرة حيث سيكون استرداد جميع البيانات بطيئًا

// اعتبارات أمان الوصول إلى IndexedDB:
// يعمل كلا المثالين لأن هذه الوحدة تستخدم أتمتة المتصفح Playwright،
// التي تتجاوز قيود أمان JavaScript القياسية في سياق الصفحة الحالية:

// قيود JavaScript القياسية:
// - سياسة نفس الأصل تقيد الوصول إلى IndexedDB من أصول أخرى
// - قد تكون بعض قواعد البيانات مخفية أو محمية بميزات أمان المتصفح
// - الوصول عبر الأصول محظور عادةً
// - قد يكون لقواعد بيانات عامل الخدمة حماية إضافية

// كيف يتجاوز هذا المثال القيود:
// - يستخدم أتمتة المتصفح Playwright للوصول المميز
// - ينفذ في سياق الصفحة الفعلية، وليس في بيئة معزولة
// - لديه نفس أذونات الموقع الإلكتروني نفسه لتخزينه الخاص
// - يمكنه الوصول إلى جميع قواعد البيانات التي أنشأها الأصل/النطاق الحالي

// القيود:
// - لا يمكنه الوصول إلى قواعد البيانات من أصول/نطاقات أخرى في نفس المتصفح
// - لا يمكنه الوصول إلى قواعد البيانات من ملفات تعريف متصفح أخرى أو التصفح الخاص
// - قد تنشئ بعض إضافات المتصفح تخزينًا معزولًا لا يمكن الوصول إليه عبر JavaScript

// طرق بديلة للوصول الأقصى:
// - استخدم GenXdev.Webbrowser مع علامات تبويب متعددة من أصول مختلفة
// - ادمج مع الوصول إلى نظام الملفات لأدلة ملفات تعريف المتصفح (عند الإمكان)
// - استخدم أتمتة المتصفح للتنقل بين النطاقات المختلفة

### PS>

```powershell
PS>
```

دعم نتائج خط الأنابيب المتحصلة
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

> كود جافا سكريبت، مسار ملف أو عنوان URL للتنفيذ

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

> توقف في مصحح المتصفح قبل التنفيذ

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

> منع تحديد علامة التبويب تلقائيًا

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

> استخدم متصفح مايكروسوفت إيدج

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

> استخدم متصفح Google Chrome

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

> استخدم Microsoft Edge أو Google Chrome، حسب المتصفح الافتراضي

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

> استخدم متصفح Firefox

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

> استخدم متصفح WebKit المُدار بواسطة Playwright

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

> مرجع كائن صفحة المتصفح

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

> كائن مرجع جلسة المتصفح

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-WebsiteInAllBrowsers.md)
