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
| `-InitialLength` | Int32 | — | — | 0 | `5` | 蛇的初始长度（默认值：5） |
| `-Speed` | Int32 | — | — | 1 | `300` | 每一步之间的游戏速度（毫秒），默认值：300 |
| `-NoClear` | SwitchParameter | — | — | Named | — | 防止在开始游戏前清除控制台 |
| `-WithMaze` | SwitchParameter | — | — | Named | — | 在游戏区域内使用 ASCII 绘图字符绘制迷宫，包括墙壁和线条，类似于边框绘制方式。 |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | 使用绿色小圆点居中显示从蛇头到食物的最短路径 |
| `-MazeWidth` | Int32 | — | — | Named | `2` | 迷宫的最小路径宽度（1-10，默认：2） |

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
