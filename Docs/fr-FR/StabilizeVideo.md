# StabilizeVideo

> **Module:** GenXdev.Media.ytdlp | **Type:** Function | **Aliases:** —

## Synopsis

> Stabilise le fichier .mp4 le plus récent ou spécifié avec FFmpeg + vid.stab (pas de bordures noires).

## Description

Stabilisation vid.stab en deux passes avec optzoom=1 (zoom/cadrage automatique pour que les bords ne soient jamais visibles) plus un léger affûtage. Fonctionne exactement comme votre cmdlet Save-Video — super simple.

## Syntax

```powershell
StabilizeVideo [[-InputFile] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputFile` | String | — | — | 0 | — | The `-InputFile` parameter. |

## Examples

### Stabilize-Video                  # stabilizes the most recent .mp4     Stabilize-Video shaky.mp4         # specific file

```powershell
Stabilize-Video                  # stabilizes the most recent .mp4
    Stabilize-Video shaky.mp4         # specific file
```

## Related Links

- [StabilizeVideo on GitHub](https://github.com/genXdev/genXdev)
