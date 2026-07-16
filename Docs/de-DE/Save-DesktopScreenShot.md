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
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | Monitorindex zum Erfassen (0=primär, 1+=bestimmter Monitor, -1=alle Monitore) |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | Vollständiger Pfad, unter dem der Screenshot gespeichert wird |
| `-Quality` | Int32 | — | — | Named | `0` | JPEG-Qualitätsstufe (1-100), gilt nur für JPEG-Format |

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
