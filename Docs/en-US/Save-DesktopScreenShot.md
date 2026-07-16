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
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | Monitor index to capture (0=primary, 1+=specific monitor, -1=all monitors) |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | Full path where the screenshot will be saved |
| `-Quality` | Int32 | — | — | Named | `0` | JPEG quality level (1-100), only applies to JPEG format |

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
