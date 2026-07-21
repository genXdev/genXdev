# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> コンソールでシンプルなスネークゲームを開始します。

## Description

この関数は、PowerShellコンソール内で基本的なスネークゲームを初期化して実行します。プレイヤーは矢印キーまたはWASDキーを使用してスネークを操作し、食べ物を食べて成長しながら、壁や自分自身との衝突を避けることを目指します。ゲームは利用可能なスペースとスネークの長さに基づいて動的に速度を調整します。デフォルトでは、開始前にコンソールがクリアされます。

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | スネークの初期長さ（デフォルト: 5） |
| `-Speed` | Int32 | — | — | 1 | `300` | 手の間のゲーム速度（ミリ秒単位、デフォルト：300） |
| `-NoClear` | SwitchParameter | — | — | Named | — | ゲーム開始前にコンソールのクリアを防止します |
| `-WithMaze` | SwitchParameter | — | — | Named | — | 壁や線にASCII描画文字を使って、ボーダーと同様にプレイフィールド内に迷路を描画します。 |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | 小さな緑色の中心点を使用して、ヘビの頭から餌までの最短経路を表示します |
| `-MazeWidth` | Int32 | — | — | Named | `2` | 迷路の最小通路幅（1～10、デフォルト：2） |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

デフォルト設定（5セグメント、300ms速度）でスネークゲームを開始します。

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

コンソールをクリアせずにスネークゲームを開始します。蛇は短く、速度は速くなります。

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

エイリアスを使用してゲームを開始します。初期の蛇がより長くなっています。

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

迷路のあるプレイフィールドでスネークゲームを開始します。

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

迷路付きのスネークゲームを開始し、スネークから食べ物への最短経路を緑色の点で表示します。

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

最低5スペースの広い通路を持つ迷路でスネークゲームを開始し、ナビゲーションを容易にします。

## Parameter Details

### `-InitialLength <Int32>`

> スネークの初期長さ（デフォルト: 5）

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

> 手の間のゲーム速度（ミリ秒単位、デフォルト：300）

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

> ゲーム開始前にコンソールのクリアを防止します

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

> 壁や線にASCII描画文字を使って、ボーダーと同様にプレイフィールド内に迷路を描画します。

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

> 小さな緑色の中心点を使用して、ヘビの頭から餌までの最短経路を表示します

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

> 迷路の最小通路幅（1～10、デフォルト：2）

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/UtcNow.md)
