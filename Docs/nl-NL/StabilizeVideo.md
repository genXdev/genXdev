# StabilizeVideo

> **Module:** GenXdev.Media.ytdlp | **Type:** Function | **Aliases:** —

## Synopsis

> Stabiliseert het nieuwste of opgegeven .mp4-bestand met FFmpeg + vid.stab (zonder zwarte randen).

## Description

Twee-passige vid.stab-stabilisatie met optzoom=1 (automatisch zoomen/bijsnijden zodat randen nooit zichtbaar zijn) plus lichte verscherping. Werkt precies zoals uw Save-Video cmdlet — supereenvoudig.

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
