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
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | Indice du moniteur à capturer (0=principal, 1+=moniteur spécifique, -1=tous les moniteurs) |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | Chemin complet où la capture d'écran sera enregistrée |
| `-Quality` | Int32 | — | — | Named | `0` | Niveau de qualité JPEG (1-100), s'applique uniquement au format JPEG |

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
