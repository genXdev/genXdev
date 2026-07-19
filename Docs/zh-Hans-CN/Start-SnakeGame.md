# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> 在控制台中启动一个简单的贪吃蛇游戏。

## Description

该函数在 PowerShell 控制台中初始化并运行一个基本的贪吃蛇游戏。玩家可以使用方向键或 WASD 键控制蛇移动，目标是吃到食物并不断变长，同时避免撞到墙壁或自己的身体。游戏会根据可用空间和蛇的长度动态调整速度。默认情况下，启动游戏前会清空控制台。

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

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

使用默认设置（5个蛇身，300毫秒速度）开始贪吃蛇游戏。

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

启动Snake游戏，不清除控制台，蛇更短，速度更快。

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

使用更长的初始蛇通过别名开始游戏。

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

在游戏区域中启动带有迷宫的贪吃蛇游戏。

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

启动有迷宫的贪吃蛇游戏，并用绿点显示蛇到食物的最短路径。

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

启动贪吃蛇游戏，包含路径更宽（至少5格）的迷宫，以方便导航。

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
