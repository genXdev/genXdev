# StabilizeVideo

> **Module:** GenXdev.Media.ytdlp | **Type:** Function | **Aliases:** —

## Synopsis

> Estabiliza el archivo .mp4 más nuevo o especificado usando FFmpeg + vid.stab (sin bordes negros).

## Description

Estabilización vid.stab de dos pasadas con optzoom=1 (zoom/corte automático para que nunca se vean los bordes) más un ligero enfoque. Funciona exactamente como tu cmdlet Save-Video — súper simple.

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
