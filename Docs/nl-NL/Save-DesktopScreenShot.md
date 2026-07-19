# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Maakt een screenshot van de opgegeven monitor en slaat deze op naar het opgegeven pad.

## Description

* Maakt een screenshot van het bureaublad van de opgegeven monitor en slaat dit op als een afbeeldingsbestand.
* Ondersteunt meerdere monitors en detecteert automatisch de juiste schermgrenzen en schaalfactoren voor hoge-DPI-schermen.

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

## Examples

### Example 1

```powershell
Save-DesktopScreenShot -Monitor 0 -OutputPath "C:\Screenshots\primary.png"
```

Maakt een screenshot van het primaire scherm en slaat het op als PNG.

### Example 2

```powershell
Save-DesktopScreenShot -Monitor 1 -OutputPath "C:\Screenshots\monitor2.jpg" -Quality 95
```

Maakt een schermafbeelding van het tweede beeldscherm met hoge kwaliteit JPEG.

### Example 3

```powershell
Save-DesktopScreenShot -Monitor -1 -OutputPath "C:\Screenshots\all_monitors.png"
```

Vangt alle monitors gecombineerd in één screenshot-afbeelding.

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
