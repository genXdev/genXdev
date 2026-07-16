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
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | Te bewaken monitorindex (0=primair, 1+=specifieke monitor, -1=alle monitors) |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | Volledig pad waar de schermafbeelding wordt opgeslagen |
| `-Quality` | Int32 | — | — | Named | `0` | JPEG-kwaliteitsniveau (1-100), alleen van toepassing op JPEG-formaat |

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
