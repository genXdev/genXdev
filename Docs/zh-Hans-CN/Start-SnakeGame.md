# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> 在控制台中启动一个简单的贪吃蛇游戏。

## Description

此函数在 PowerShell 控制台中初始化并运行一个基础的贪吃蛇游戏。玩家使用方向键或 WASD 键控制蛇，目标是吃掉食物并让蛇变长，同时避免撞到墙壁或自身。游戏会根据可用空间和蛇的长度动态调整速度。默认情况下，游戏开始前会清空控制台。

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | 蛇的初始长度（默认值：5） |
| `-Speed` | Int32 | — | — | 1 | `300` | 移动之间游戏速度（毫秒，默认值：300） |
| `-NoClear` | SwitchParameter | — | — | Named | — | 防止在启动游戏前清除控制台 |
| `-WithMaze` | SwitchParameter | — | — | Named | — | 使用 ASCII 绘图字符（与边框类似）在游戏区域内绘制迷宫，用字符表示墙壁和线条 |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | 使用绿色居中圆点显示蛇头到食物的最短路径 |
| `-MazeWidth` | Int32 | — | — | Named | `2` | 迷宫的最小路径宽度（1-10，默认值：2） |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

以默认设置（5段，300毫秒速度）启动贪吃蛇游戏。

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

启动贪吃蛇游戏，不清空控制台，蛇更短且速度更快。

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

使用别名开始游戏，初始蛇更长。

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

在游戏区域使用迷宫开始贪吃蛇游戏。

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

启动带有迷宫的贪吃蛇游戏，并用绿色圆点显示蛇到食物的最短路径。

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

启动带有更宽路径（至少5个空格）的迷宫贪吃蛇游戏，以便于导航。

## Parameter Details

### `-InitialLength <Int32>`

> 蛇的初始长度（默认值：5）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speed <Int32>`

> 移动之间游戏速度（毫秒，默认值：300）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `300` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoClear`

> 防止在启动游戏前清除控制台

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithMaze`

> 使用 ASCII 绘图字符（与边框类似）在游戏区域内绘制迷宫，用字符表示墙壁和线条

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowRoute`

> 使用绿色居中圆点显示蛇头到食物的最短路径

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MazeWidth <Int32>`

> 迷宫的最小路径宽度（1-10，默认值：2）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `2` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/UtcNow.md)
