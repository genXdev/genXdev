# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration

## Synopsis

> AI が生成した説明とキーワードで画像のメタデータを更新します。

## Description

Invoke-ImageKeywordUpdate関数は、AIを使用して画像を分析し、説明、キーワード、その他のメタデータを生成します。各画像に対して、この情報を含む補助JSONファイルを作成します。この関数は、新しい画像のみを処理するか、既存のメタデータを更新することができ、再帰的なディレクトリスキャンをサポートします。

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | 処理対象の画像が含まれるディレクトリパス |
| `-Recurse` | SwitchParameter | — | — | Named | — | 指定ディレクトリとすべてのサブディレクトリ内の画像を処理する |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | 表情メタデータファイルがまだない画像のみを処理する |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 以前失敗した画像キーワードの更新を再試行します |
| `-Language` | String | — | — | Named | — | 生成された説明とキーワードの言語 |
| `-FacesDirectory` | String | — | — | Named | — | 人物フォルダごとに整理された顔画像を含むディレクトリ。指定しない場合は、設定された顔ディレクトリの設定が使用されます。 |
| `-Instructions` | String | — | — | 2 | — | モデル用のシステム指示

===== 重要なJSON出力要件 =====
有効なJSONのみで応答しなければなりません。それ以外のテキストは一切許可されません。
JSONの前後に説明、コメント、テキストを入れないでください。
応答は、このスキーマに完全に準拠した解析可能なJSONでなければなりません。
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

応答例: {"response":"実際の応答をここに"}
===== 要件終了 ===== |
| `-ResponseFormat` | String | — | — | Named | `$null` | {
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
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | 画像の詳細レベル |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-Functions` | String[] | — | — | Named | — | AI操作で使用する関数を指定します。 |
| `-ExposedCmdLets` | String[] | — | — | Named | — | AI 操作で公開されるコマンドレットを指定します。 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 確認不要なツール関数名を指定します。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 指定された場合、コンテキストの使用を無効にします。 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ツールコールの最大コールバック長。 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 構造化オブジェクトをコンソールに出力する代わりに返すためのPassThru |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | facesディレクトリの変更を検出し、必要に応じて顔を再登録します |

## Examples

### Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew

```powershell
Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew
```

### updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"

```powershell
updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"
```

## Related Links

- [Invoke-ImageKeywordUpdate on GitHub](https://github.com/genXdev/genXdev)
