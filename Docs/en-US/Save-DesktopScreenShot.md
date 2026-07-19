# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Captures a screenshot of the specified monitor and saves it to the
specified path.

## Description

* Takes a screenshot of the desktop from the specified monitor and saves
  it as an image file.
* Supports multiple monitors and automatically detects the correct screen
  bounds and scaling factors for high-DPI displays.

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

## Examples

### Example 1

```powershell
Save-DesktopScreenShot -Monitor 0 -OutputPath "C:\Screenshots\primary.png"
```

Captures a screenshot of the primary monitor and saves it as PNG.

### Example 2

```powershell
Save-DesktopScreenShot -Monitor 1 -OutputPath "C:\Screenshots\monitor2.jpg" -Quality 95
```

Captures a screenshot of the second monitor with high quality JPEG.

### Example 3

```powershell
Save-DesktopScreenShot -Monitor -1 -OutputPath "C:\Screenshots\all_monitors.png"
```

Captures all monitors combined into a single screenshot image.

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
