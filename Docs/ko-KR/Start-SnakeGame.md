# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> 콘솔에서 간단한 Snake 게임을 시작합니다.

## Description

이 함수는 PowerShell 콘솔 내에서 기본적인 뱀 게임을 초기화하고 실행합니다. 플레이어는 화살표 키 또는 WASD 키를 사용하여 뱀을 조종하며, 음식을 먹고 길어지면서 벽이나 자신과의 충돌을 피하는 것을 목표로 합니다. 게임은 사용 가능한 공간과 뱀의 길이에 따라 속도가 동적으로 조정됩니다. 기본적으로 게임 시작 전 콘솔이 지워집니다.

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

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

기본 설정(5개 세그먼트, 300ms 속도)으로 스네이크 게임을 시작합니다.

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

콘솔을 지우지 않고, 더 짧은 뱀과 더 빠른 속도로 Snake 게임을 시작합니다.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

더 긴 초기 뱀을 가진 별칭을 사용하여 게임을 시작합니다.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

게임 필드에 미로가 있는 스네이크 게임을 시작합니다.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

뱀 게임을 미로와 함께 시작하고, 뱀에서 음식까지의 최단 경로를 녹색 점으로 표시합니다.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

더 넓은 통로(최소 5칸)가 있는 미로에서 스네이크 게임을 시작하여 탐색을 더 쉽게 합니다.

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
