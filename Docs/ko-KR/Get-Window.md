# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
