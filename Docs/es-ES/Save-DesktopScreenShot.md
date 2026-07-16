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
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | Índice del monitor a capturar (0=principal, 1+=monitor específico, -1=todos los monitores) |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | Ruta completa donde se guardará la captura de pantalla |
| `-Quality` | Int32 | — | — | Named | `0` | Nivel de calidad JPEG (1-100), solo aplica al formato JPEG |

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
