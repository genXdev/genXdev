# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Erstellt einen Screenshot des angegebenen Monitors und speichert ihn unter dem angegebenen Pfad.

## Description

* Macht einen Screenshot des Desktops vom angegebenen Monitor und speichert ihn als Bilddatei.
* Unterstützt mehrere Monitore und erkennt automatisch die korrekten Bildschirmgrenzen und Skalierungsfaktoren für hochauflösende Displays.

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

## Examples

### Example 1

```powershell
Save-DesktopScreenShot -Monitor 0 -OutputPath "C:\Screenshots\primary.png"
```

Erstellt einen Screenshot des primären Monitors und speichert ihn als PNG.

### Example 2

```powershell
Save-DesktopScreenShot -Monitor 1 -OutputPath "C:\Screenshots\monitor2.jpg" -Quality 95
```

Erstellt einen Screenshot des zweiten Monitors in hoher JPEG-Qualität.

### Example 3

```powershell
Save-DesktopScreenShot -Monitor -1 -OutputPath "C:\Screenshots\all_monitors.png"
```

Erfasst alle Monitore, die zu einem einzigen Screenshotbild zusammengefasst sind.

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
