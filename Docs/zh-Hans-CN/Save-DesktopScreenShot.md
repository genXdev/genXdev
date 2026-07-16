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
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | 要捕获的显示器索引（0=主显示器，1+=特定显示器，-1=所有显示器） |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | 截屏将保存的完整路径 |
| `-Quality` | Int32 | — | — | Named | `0` | JPEG 质量级别（1-100），仅适用于 JPEG 格式 |

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
