# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> 콘솔에서 간단한 뱀 게임을 시작합니다.

## Description

이 함수는 기본적인 스네이크 게임을 PowerShell 콘솔 내에서 초기화하고 실행합니다. 플레이어는 화살표 키 또는 WASD 키를 사용하여 뱀을 조종하며, 음식을 먹고 길이를 늘리면서 벽이나 자기 자신과의 충돌을 피하는 것이 목표입니다. 게임은 사용 가능한 공간과 뱀 길이에 따라 동적으로 속도를 조절합니다. 기본적으로 게임 시작 전에 콘솔이 지워집니다.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | 뱀의 초기 길이 (기본값: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | 밀리초 단위의 게임 속도 (이동 간격, 기본값: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | 게임을 시작하기 전에 콘솔을 지우지 않도록 방지 |
| `-WithMaze` | SwitchParameter | — | — | Named | — | ASCII 그리기 문자(벽과 선)를 사용하여 경계선과 유사하게 플레이 필드 내에 미로를 그립니다. |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | 뱀의 머리에서 먹이까지의 최단 경로를 작은 녹색 중앙 점을 사용하여 표시합니다 |
| `-MazeWidth` | Int32 | — | — | Named | `2` | 미로의 최소 통로 너비 (1-10, 기본값: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

기본 설정(세그먼트 5개, 속도 300ms)으로 Snake 게임을 시작합니다.

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

콘솔을 지우지 않고, 더 짧은 뱀과 더 빠른 속도로 스네이크 게임을 시작합니다.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

별명을 사용하여 더 긴 초기 뱀으로 게임을 시작합니다.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

플레이 필드에 미로가 있는 뱀 게임을 시작합니다.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

미로가 있는 뱀 게임을 시작하고, 뱀에서 음식까지의 최단 경로를 녹색 점으로 표시합니다.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

더 넓은 통로(최소 5칸)가 있는 미로로 뱀 게임을 시작하여 탐색이 더 쉽습니다.

## Parameter Details

### `-InitialLength <Int32>`

> 뱀의 초기 길이 (기본값: 5)

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

> 밀리초 단위의 게임 속도 (이동 간격, 기본값: 300)

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

> 게임을 시작하기 전에 콘솔을 지우지 않도록 방지

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

> ASCII 그리기 문자(벽과 선)를 사용하여 경계선과 유사하게 플레이 필드 내에 미로를 그립니다.

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

> 뱀의 머리에서 먹이까지의 최단 경로를 작은 녹색 중앙 점을 사용하여 표시합니다

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

> 미로의 최소 통로 너비 (1-10, 기본값: 2)

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/UtcNow.md)
