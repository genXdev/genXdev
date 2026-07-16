# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]]> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]] | ✅ | ✅ (ByValue) | 0 | — | Array of image objects with path, keywords and description |
| `-FilePath` | String | — | — | 1 | `$null` | Chemin de sortie pour le fichier HTML généré |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Title for the gallery |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | Description for the gallery |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | L'édition est-elle activée ? |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | La suppression est activée |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | Embed images as base64 data URLs instead of file:// URLs for better portability |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Affichez uniquement les images dans un rectangle arrondi, sans texte en dessous. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Faire défiler automatiquement la page de ce nombre de pixels par seconde (null pour désactiver) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animer les rectangles (objets/faces) dans la plage visible, en cyclant toutes les 300 ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forcer la mise en page à une seule colonne (centrée, 1/3 de la largeur de l'écran) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Préfixe à ajouter avant chaque chemin d’image (ex. pour les URLs distantes) |
| `-PageSize` | Int32 | — | — | Named | `20` | Nombre d'images à charger par page (pour le chargement dynamique) |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | Nombre maximal d'images à charger pour le mode d'impression |
| `-RootMargin` | String | — | — | Named | `'1200px'` | IntersectionObserver rootMargin pour le déclencheur de défilement infini (par exemple "1200px") |
| `-Threshold` | Double | — | — | Named | `0.1` | Seuil de l'IntersectionObserver pour le déclenchement du défilement infini |

## Outputs

- `String`

## Related Links

- [GenerateMasonryLayoutHtml on GitHub](https://github.com/genXdev/genXdev)
