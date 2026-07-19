# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake

## Synopsis

> コンソールで簡単なスネークゲームを開始します。

## Description

この関数は、PowerShellコンソール内で基本的なスネークゲームを初期化して実行します。プレイヤーは矢印キーまたはWASDキーを使用してスネークを操作し、餌を食べて長くなりながら、壁や自分自身との衝突を回避することを目指します。ゲームは、利用可能なスペースとスネークの長さに基づいて動的に速度を調整する機能を備えています。デフォルトでは、開始前にコンソールがクリアされます。

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | 蛇の初期の長さ（デフォルト：5） |
| `-Speed` | Int32 | — | — | 1 | `300` | 手の間のゲーム速度（ミリ秒）（デフォルト: 300） |
| `-NoClear` | SwitchParameter | — | — | Named | — | ゲームを開始する前にコンソールをクリアしないようにします |
| `-WithMaze` | SwitchParameter | — | — | Named | — | ASCII描画文字（壁や線用）を使ってプレイフィールド内に迷路を描画します。これはボーダーと同様です。 |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | 小さな緑色の中央点を使って、蛇の頭から食べ物までの最短経路を表示します

===== 重要なJSON出力要件 =====
有効なJSONのみで応答する必要があります。他のテキストは許可されません。
JSONの前後に説明、コメント、テキストを含めないでください。
応答はこのスキーマに完全に準拠したパース可能なJSONである必要があります：
{
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "変換されたテキスト出力"
        }
      },
      "type": "object"
    }
  }
}

応答例：{"response":"あなたの実際の応答"}
===== 要件終了 ===== |
| `-MazeWidth` | Int32 | — | — | Named | `2` | 迷路の最小通路幅（1〜10、デフォルト：2） |

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

コンソールをクリアせずにスネークゲームを開始します。蛇を短く、速度を速く設定します。

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

エイリアスを使用して、より長い初期の蛇でゲームを開始します。

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

迷路のあるプレイフィールドでスネークゲームを開始します。

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

迷路のあるスネークゲームを開始し、スネークから餌までの最短経路を緑色の点で表示します。

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

迷路の通路を広く（最低5マス）して、移動しやすくしたスネークゲームを開始します。

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
