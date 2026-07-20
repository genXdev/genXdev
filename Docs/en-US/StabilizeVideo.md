# StabilizeVideo

> **Module:** GenXdev.Media.ytdlp | **Type:** Function | **Aliases:** —

## Synopsis

> Stabilizes the newest or specified .mp4 file using FFmpeg + vid.stab (no black borders).

## Description

Two-pass vid.stab stabilization with optzoom=1 (auto zoom/crop so borders never show)
    plus light sharpening. Works exactly like your Save-Video cmdlet — super simple.

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

## Parameter Details

### `-InputFile <String>`

> The `-InputFile` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links
