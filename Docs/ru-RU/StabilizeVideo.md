# StabilizeVideo

> **Module:** GenXdev.Media.ytdlp | **Type:** Function | **Aliases:** —

## Synopsis

> Стабилизирует самый новый или указанный .mp4 файл с помощью FFmpeg + vid.stab (без черных границ).

## Description

Двухпроходная стабилизация vid.stab с optzoom=1 (автоматическое масштабирование/кадрирование, чтобы границы не были видны) плюс легкое повышение резкости. Работает точно так же, как ваш командлет Save-Video — очень просто.

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
