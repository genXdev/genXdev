# StabilizeVideo

> **Module:** GenXdev.Media.ytdlp | **Type:** Function | **Aliases:** —

## Synopsis

> FFmpeg + vid.stab을 사용하여 가장 최신 또는 지정된 .mp4 파일을 안정화합니다 (검은 테두리 없음).

## Description

optzoom=1(자동 확대/자르기로 테두리가 표시되지 않음)을 사용한 투패스 vid.stab 안정화
    약간의 샤프닝 추가. Save-Video cmdlet과 완전히 동일하게 작동합니다 — 매우 간단합니다.

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
