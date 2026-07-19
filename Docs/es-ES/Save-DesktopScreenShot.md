# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Captura una captura de pantalla del monitor especificado y la guarda en la ruta especificada.

## Description

* Toma una captura de pantalla del escritorio del monitor especificado y la guarda como un archivo de imagen.
* Admite múltiples monitores y detecta automáticamente los límites de pantalla correctos y los factores de escala para pantallas de alta densidad (high-DPI).

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

## Examples

### Example 1

```powershell
Save-DesktopScreenShot -Monitor 0 -OutputPath "C:\Screenshots\primary.png"
```

Captura una captura de pantalla del monitor principal y la guarda como PNG.

### Example 2

```powershell
Save-DesktopScreenShot -Monitor 1 -OutputPath "C:\Screenshots\monitor2.jpg" -Quality 95
```

Captura una captura de pantalla del segundo monitor con JPEG de alta calidad.

### Example 3

```powershell
Save-DesktopScreenShot -Monitor -1 -OutputPath "C:\Screenshots\all_monitors.png"
```

Captura todos los monitores combinados en una sola imagen de pantalla.

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
