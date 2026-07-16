# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Move-ItemWithTracking [-Path] <string> [-Destination] <string> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 이동할 파일/디렉터리의 소스 경로 |
| `-Destination` | String | ✅ | — | 1 | — | 이동할 대상 경로 |
| `-Force` | SwitchParameter | — | — | Named | `False` | 대상이 이미 존재할 경우 덮어씁니다 |

## Related Links

- [Move-ItemWithTracking on GitHub](https://github.com/genXdev/genXdev)
