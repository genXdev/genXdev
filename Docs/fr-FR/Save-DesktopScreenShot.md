# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Capture une capture d'écran du moniteur spécifié et l'enregistre au chemin spécifié.

## Description

* Prend une capture d'écran du bureau depuis le moniteur spécifié et l'enregistre sous forme de fichier image.
* Prend en charge plusieurs moniteurs et détecte automatiquement les limites d'écran correctes et les facteurs de mise à l'échelle pour les écrans haute résolution.

## Syntax

```powershell
Save-DesktopScreenShot [-Monitor] <int> [-OutputPath] <string> [-Quality <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | Indice du moniteur à capturer (0=principal, 1+=moniteur spécifique, -1=tous les moniteurs) |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | Chemin complet où la capture d'écran sera enregistrée |
| `-Quality` | Int32 | — | — | Named | `0` | Niveau de qualité JPEG (1-100), s'applique uniquement au format JPEG |

## Examples

### Example 1

```powershell
Save-DesktopScreenShot -Monitor 0 -OutputPath "C:\Screenshots\primary.png"
```

Capture une capture d'écran du moniteur principal et l'enregistre au format PNG.

### Example 2

```powershell
Save-DesktopScreenShot -Monitor 1 -OutputPath "C:\Screenshots\monitor2.jpg" -Quality 95
```

Capture une capture d'écran du deuxième moniteur avec une haute qualité JPEG.

### Example 3

```powershell
Save-DesktopScreenShot -Monitor -1 -OutputPath "C:\Screenshots\all_monitors.png"
```

Capture tous les moniteurs combinés en une seule capture d'écran.

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
