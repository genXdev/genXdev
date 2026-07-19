# StabilizeVideo

> **Module:** GenXdev.Media.ytdlp | **Type:** Function | **Aliases:** —

## Synopsis

> Stabilisiert die neueste oder angegebene .mp4-Datei mit FFmpeg + vid.stab (ohne schwarze Ränder).

## Description

Zweipassige vid.stab-Stabilisierung mit optzoom=1 (automatischer Zoom/Zuschnitt, sodass Ränder nie sichtbar sind) plus leichte Schärfung. Funktioniert genau wie Ihr Save-Video-Cmdlet – ganz einfach.

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
