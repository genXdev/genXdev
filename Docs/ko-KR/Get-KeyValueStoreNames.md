# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> 사용 가능한 키-값 저장소의 이름을 검색합니다.

## Description

* 키-값 저장소 디렉터리에서 JSON 파일을 검색하고 지정된 동기화 키 패턴을 기반으로 고유한 저장소 이름을 추출합니다.
* 저장소 디렉터리가 존재하는지 확인하고 필요에 따라 로컬이 아닌 저장소를 동기화합니다.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | 동기화 범위를 식별하는 키, 기본값은 all |
| `-DatabasePath` | String | — | — | Named | — | 키-값 저장소 데이터 파일의 데이터베이스 경로 |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

기본 위치에서 모든 저장소 이름을 검색합니다.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

'로컬' 동기화 범위에 대한 저장소 이름을 검색합니다.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

별칭을 사용하여 사용자 지정 데이터베이스 경로에서 모든 상점 이름을 검색합니다.

## Parameter Details

### `-SynchronizationKey <String>`

> 동기화 범위를 식별하는 키, 기본값은 all

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> 키-값 저장소 데이터 파일의 데이터베이스 경로

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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Sync-KeyValueStore.md)
