# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 지정된 프로세스 또는 창 핸들에 대한 창 정보를 가져옵니다.

## Description

* 프로세스 이름, ID 또는 창 핸들을 사용하여 창 정보를 검색합니다.
* 일치하는 프로세스의 기본 창에 대한 세부 정보를 포함하는 WindowObj 객체를 반환합니다.
* 프로세스 이름으로 검색 시 와일드카드를 지원합니다.

## Syntax

```powershell
Get-Window [[-ProcessName] <string>] [-ProcessId <int>] [-WindowHandle <long>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | 창 정보를 가져오는 프로세스의 이름 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | 창 정보를 가져올 프로세스의 ID |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | 정보를 가져올 창 핸들 |

## Examples

### Example 1

```powershell
Get-Window -ProcessName "notepad"
```

"notepad"라는 이름의 모든 프로세스에 대한 창 정보를 검색합니다.

### Example 2

```powershell
Get-Window -ProcessId 1234
```

ID가 1234인 프로세스의 창 정보를 검색합니다.

### Example 3

```powershell
Get-Window -WindowHandle 45678
```

핸들 45678인 창에 대한 창 정보를 검색합니다.

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
