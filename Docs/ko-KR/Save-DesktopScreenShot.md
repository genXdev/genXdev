# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Save-DesktopScreenShot [-Monitor] <int> [-OutputPath] <string> [-Quality <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | 캡처할 모니터 인덱스 (0=주 모니터, 1+=특정 모니터, -1=모든 모니터) |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | 스크린샷이 저장될 전체 경로 |
| `-Quality` | Int32 | — | — | Named | `0` | JPEG 품질 수준(1-100), JPEG 형식에만 적용됩니다. |

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
