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

## Related Links

- [Start-SnakeGame on GitHub](https://github.com/genXdev/genXdev)
