# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> 선택된 웹 브라우저 탭에서 JavaScript 코드를 실행합니다.

## Description

<details>
<summary><b>Expand description</b></summary>

선택된 브라우저 탭에서 async/await, 프로미스, PowerShell과 브라우저 컨텍스트 간의 데이터 동기화를 지원하는 JavaScript 코드를 실행합니다. 문자열, 파일 또는 URL에서 코드를 실행할 수 있습니다.

이 함수는 IndexedDB, localStorage, sessionStorage 및 기타 웹 플랫폼 기능을 포함한 브라우저 API에 대한 포괄적인 액세스를 제공합니다. 내장된 오류 처리, 시간 제한 관리, 생성기 함수에서 여러 결과를 반환하는 기능이 포함되어 있습니다.

이 함수는 Playwright를 사용한 브라우저 자동화를 사용하며, 이는 현재 페이지의 컨텍스트에서 표준 JavaScript 보안 제한을 우회하는 권한 있는 액세스를 제공합니다. 이를 통해 일반적으로 표준 웹 컨텍스트에서 제한되는 스토리지 API, 동일 탭 내의 교차 출처 리소스 및 기타 브라우저 기능에 액세스할 수 있습니다.

주요 기능:
- Async/await 및 Promise 지원
- yield를 지원하는 생성기 함수
- $Global:Data를 통한 데이터 동기화
- 브라우저 스토리지 API에 대한 권한 있는 액세스
- 현재 페이지 스토리지에 대한 동일 출처 정책 제한 우회
- IndexedDB 열거 및 데이터 추출
- DOM 조작 및 웹 API 액세스
- 오류 처리 및 시간 제한 관리

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript 코드, 파일 경로 또는 실행할 URL |
| `-Inspect` | SwitchParameter | — | — | Named | — | 브라우저 디버거에서 실행 전에 중단 |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | 자동 탭 선택 방지 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저 사용 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저를 사용하세요 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 브라우저에 따라 Microsoft Edge 또는 Google Chrome을 사용하세요. |
| `-Firefox` | SwitchParameter | — | — | Named | — | 파이어폭스 브라우저를 사용하세요 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-managed WebKit 브라우저 사용 |
| `-Page` | Object | — | — | Named | — | 브라우저 페이지 객체 참조 |
| `-ByReference` | PSObject | — | — | Named | — | 브라우저 세션 참조 객체 |

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

// 데이터 동기화
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    문서 제목 : $($Global:Data.title)
    반환 값   : $Number
";

### PS>

```powershell
PS>
```

프로미스 지원
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

// 프로미스 및 추가 기능 지원

// 이 함수는 선택된 탭의 모든 IndexedDB 데이터베이스에 있는 모든 테이블/데이터스토어의 모든 행을 반환합니다.
// 참고: 모든 웹사이트가 IndexedDB를 사용하는 것은 아니며, 빈 집합이 반환될 수 있습니다.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // 모든 IndexedDB 데이터베이스 열거
    for (let db of await indexedDB.databases()) {

        // 데이터베이스 열기 요청
        let openRequest = await indexedDB.open(db.name);

        // 이벤트 핸들러 호출 대기
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // 참조 얻기
        let openedDb = openRequest.result;

        // 결과 초기화
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // 객체 저장소 이름 반복
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // 참조
            let storeName = openedDb.objectStoreNames[i];

            // 읽기 전용 트랜잭션 시작
            let tr = openedDb.transaction(storeName);

            // 객체 저장소 핸들 얻기
            let store = tr.objectStore(storeName);

            // 모든 데이터 요청
            let getRequest = store.getAll();

            // 결과 대기
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // 결과 추가
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // 이 데이터베이스 내용을 PowerShell 파이프라인으로 스트리밍하고 계속 진행
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// 보안 참고: 이 기본 예제는 모듈이 Playwright 브라우저 자동화를 사용하기 때문에 작동합니다.
// Playwright는 현재 페이지 컨텍스트에서 일반 JavaScript 보안 제한을 우회합니다.
// 일반 웹 페이지는 다른 출처의 IndexedDB에 접근할 수 없지만,
// Playwright는 웹사이트 자체와 동일한 권한을 가집니다.
// 보안 고려 사항에 대한 자세한 내용은 아래의 향상된 예제를 참조하세요.

### PS>

```powershell
PS>
```

// 향상된 IndexedDB 열거 - 메타데이터 및 오류 처리 포함

// 이 향상된 접근 방식은 데이터베이스 개수, 오류 처리 및 메타데이터를 포함하여
// 더 포괄적인 IndexedDB 데이터 추출을 제공합니다. 위의 기본 예제와 달리
// 이 버전은 보안 제한을 처리하고, 상세한 스토어 정보를 제공하며,
// 모든 데이터를 검색하지 않고 레코드 수를 포함합니다.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // 포괄적인 오류 처리를 갖춘 향상된 IndexedDB 열거
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // 타임아웃으로 데이터베이스 열기
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('데이터베이스 열기 타임아웃')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // 각 객체 스토어 처리
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // 레코드 수 가져오기 (모든 데이터 검색보다 빠름)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('카운트 타임아웃')), 3000);
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

// 기본 예제와의 주요 차이점:
// 1. 데이터베이스 접근 오류 처리를 포함합니다.
// 2. 메타데이터(KeyPath, AutoIncrement, IndexNames)를 제공합니다.
// 3. 모든 데이터를 검색하지 않고 레코드 수를 가져옵니다(더 효율적).
// 4. 타임아웃 시나리오를 처리합니다.
// 5. 데이터베이스 스키마에 대한 구조화된 정보를 반환합니다.
// 6. 모든 데이터 검색이 느려지는 대규모 데이터베이스에 더 적합합니다.

// INDEXEDDB 접근에 대한 보안 고려 사항:
// 두 예제 모두 이 모듈이 Playwright 브라우저 자동화를 사용하여
// 현재 페이지의 컨텍스트에서 표준 JavaScript 보안 제한을 우회하기 때문에 작동합니다.

// 표준 JavaScript 제한 사항:
// - 동일 출처 정책은 다른 출처의 IndexedDB에 대한 접근을 제한합니다.
// - 일부 데이터베이스는 브라우저 보안 기능에 의해 숨겨지거나 보호될 수 있습니다.
// - 교차 출처 데이터베이스 접근은 일반적으로 차단됩니다.
// - 서비스 워커 데이터베이스는 추가 보호 기능을 가질 수 있습니다.

// 이 예제가 제한을 우회하는 방법:
// - 권한 있는 접근을 위해 Playwright 브라우저 자동화를 사용합니다.
// - 샌드박스 환경이 아닌 실제 페이지의 컨텍스트에서 실행됩니다.
// - 자체 저장소에 대해 웹사이트 자체와 동일한 권한을 갖습니다.
// - 현재 출처/도메인에서 생성된 모든 데이터베이스에 접근할 수 있습니다.

// 제한 사항:
// - 동일한 브라우저의 다른 출처/도메인의 데이터베이스에 접근할 수 없습니다.
// - 다른 브라우저 프로필이나 개인 브라우징의 데이터베이스에 접근할 수 없습니다.
// - 일부 브라우저 확장 프로그램은 JavaScript로 접근할 수 없는 격리된 저장소를 생성할 수 있습니다.

// 최대 접근을 위한 대체 접근 방식:
// - 다양한 출처의 여러 탭으로 GenXdev.Webbrowser를 사용합니다.
// - 가능한 경우 브라우저 프로필 디렉터리에 대한 파일 시스템 접근과 결합합니다.
// - 브라우저 자동화를 사용하여 다른 도메인 간에 탐색합니다.

### PS>

```powershell
PS>
```

파이프라인 결과 전달 지원
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
