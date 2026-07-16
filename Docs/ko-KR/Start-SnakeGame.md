# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | 뱀의 초기 길이 (기본값: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | 각 움직임 사이의 게임 속도 (밀리초, 기본값: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | 게임을 시작하기 전에 콘솔을 지우지 않도록 방지합니다. |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Draws a maze within the playfield using ASCII drawing characters for walls and lines, similar to the border |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | 작은 녹색 가운데 점을 사용하여 뱀의 머리에서 음식까지의 최단 경로를 표시합니다 |
| `-MazeWidth` | Int32 | — | — | Named | `2` | 미로의 최소 통로 너비 (1-10, 기본값: 2) |

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
