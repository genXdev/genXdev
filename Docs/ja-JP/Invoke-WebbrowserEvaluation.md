# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> 選択したウェブブラウザのタブでJavaScriptコードを実行します。

## Description

<details>
<summary><b>Expand description</b></summary>

選択したブラウザタブでJavaScriptコードを実行します。非同期/待機、Promise、PowerShellとブラウザコンテキスト間のデータ同期をサポートします。文字列、ファイル、またはURLからコードを実行できます。

この関数は、IndexedDB、localStorage、sessionStorage、その他のWebプラットフォーム機能を含むブラウザAPIへの包括的なアクセスを提供します。組み込みのエラーハンドリング、タイムアウト管理、およびジェネレーター関数からの複数結果の生成をサポートします。

この関数はブラウザ自動化にPlaywrightを使用しており、現在のページのコンテキスト内で標準のJavaScriptセキュリティ制限をバイパスする特権アクセスを提供します。これにより、通常のWebコンテキストでは制限されるストレージAPI、クロスオリジンリソース（同じタブ内）、その他のブラウザ機能へのアクセスが可能になります。

主な機能:
- 非同期/待機とPromiseのサポート
- yieldをサポートするジェネレーター関数
- $Global:Dataによるデータ同期
- ブラウザストレージAPIへの特権アクセス
- 現在のページストレージに対する同一オリジンポリシーの制限をバイパス
- IndexedDBの列挙とデータ抽出
- DOM操作とWeb APIアクセス
- エラーハンドリングとタイムアウト管理

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 実行するJavaScriptコード、ファイルパス、またはURL |
| `-Inspect` | SwitchParameter | — | — | Named | — | ブラウザのデバッガで実行前にブレーク |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | 自動タブ選択を防止する |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブラウザをご利用ください |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome ブラウザを使用してください |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft Edge または Google Chrome を使用してください。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox ブラウザを使用してください |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright 管理の WebKit ブラウザを使用 |
| `-Page` | Object | — | — | Named | — | ブラウザページオブジェクト参照 |
| `-ByReference` | PSObject | — | — | Named | — | ブラウザセッション参照オブジェクト |

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

// データの同期中
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    ドキュメントタイトル : $($Global:Data.title)
    戻り値   : $Number
";

### PS>

```powershell
PS>
```

Promiseのサポート
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

// Promise とその他のサポート

// この関数は、選択されたタブ内のすべてのデータベース、すべてのテーブル/データストアのすべての行を返します
// 注意: すべてのWebサイトがIndexedDBを使用しているわけではないため、空のセットが返される可能性があります

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // すべてのIndexedDBデータベースを列挙
    for (let db of await indexedDB.databases()) {

        // データベースを開くリクエスト
        let openRequest = await indexedDB.open(db.name);

        // イベントハンドラが呼び出されるのを待機
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // 参照を取得
        let openedDb = openRequest.result;

        // 結果を初期化
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // オブジェクトストア名を反復
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // 参照
            let storeName = openedDb.objectStoreNames[i];

            // 読み取り専用トランザクションを開始
            let tr = openedDb.transaction(storeName);

            // オブジェクトストアのハンドルを取得
            let store = tr.objectStore(storeName);

            // すべてのデータをリクエスト
            let getRequest = store.getAll();

            // 結果を待機
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // 結果を追加
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // このデータベースの内容をPowerShellパイプラインにストリームし、続行
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// セキュリティ注意: この基本的な例は、モジュールがPlaywrightブラウザ自動化を使用しているため機能します。
// Playwrightは現在のページコンテキストにおける通常のJavaScriptセキュリティ制限をバイパスします。
// 標準的なWebページは他のオリジンのIndexedDBにアクセスできませんが、
// PlaywrightはWebサイト自身と同じ権限を持ちます。
// セキュリティに関する考慮事項の詳細については、以下の拡張例を参照してください。

### PS>

```powershell
PS>
```

// メタデータとエラーハンドリングを強化したIndexedDB列挙

// この強化されたアプローチは、データベース数、エラーハンドリング、メタデータを含む、より包括的なIndexedDBデータ抽出を提供します。
// 上記の基本的な例とは異なり、このバージョンはセキュリティ制限を処理し、詳細なストア情報を提供し、
// 必ずしもすべてのデータを取得せずにレコード数を含めます。

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // 包括的なエラーハンドリングを備えた強化されたIndexedDB列挙
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // タイムアウト付きでデータベースを開く
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('データベースオープンタイムアウト')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // 各オブジェクトストアを処理
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // レコード数を取得（全データ取得より高速）
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('カウントタイムアウト')), 3000);
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

// 基本的な例との主な違い:
// 1. データベースアクセス問題に対するエラーハンドリングを含む
// 2. メタデータ（KeyPath、AutoIncrement、IndexNames）を提供
// 3. 全データを取得せずにレコード数を取得（より効率的）
// 4. タイムアウトシナリオを処理
// 5. データベーススキーマに関する構造化情報を返す
// 6. 全データ取得が遅くなる大規模データベースに適している

// IndexedDBアクセスに関するセキュリティ考慮事項:
// 両方の例が機能するのは、このモジュールがPlaywrightブラウザ自動化を使用しているためで、
// 現在のページのコンテキストにおける標準的なJavaScriptのセキュリティ制限をバイパスします:

// 標準JavaScriptの制限:
// - 同一オリジンポリシーにより、他のオリジンからのIndexedDBアクセスが制限される
// - 一部のデータベースはブラウザのセキュリティ機能によって隠されたり保護されたりする
// - クロスオリジンのデータベースアクセスは通常ブロックされる
// - サービスワーカーデータベースには追加の保護がある場合がある

// この例が制限をバイパスする方法:
// - 特権アクセスにPlaywrightブラウザ自動化を使用
// - サンドボックス環境ではなく実際のページのコンテキストで実行
// - ウェブサイト自体と同じ権限でそのストレージにアクセス
// - 現在のオリジン/ドメインによって作成されたすべてのデータベースにアクセス可能

// 制限:
// - 同じブラウザ内の他のオリジン/ドメインのデータベースにはアクセス不可
// - 他のブラウザプロファイルやプライベートブラウジングのデータベースにはアクセス不可
// - 一部のブラウザ拡張機能はJavaScriptからアクセスできない隔離されたストレージを作成する場合がある

// 最大アクセスを得るための代替アプローチ:
// - 異なるオリジンからの複数のタブでGenXdev.Webbrowserを使用
// - 可能な場合はブラウザプロファイルディレクトリへのファイルシステムアクセスと組み合わせる
// - ブラウザ自動化を使用して異なるドメイン間を移動

### PS>

```powershell
PS>
```

yieldされたパイプライン結果のサポート
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
