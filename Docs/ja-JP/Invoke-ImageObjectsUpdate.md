# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageObjectsUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Language <String>] [-LLMQueryType <String>] [-Model <String>] [-OnlyNew] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | 処理対象の画像が含まれるディレクトリパス |
| `-Recurse` | SwitchParameter | — | — | Named | — | 指定ディレクトリとすべてのサブディレクトリ内の画像を処理する |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | 表情メタデータファイルがまだない画像のみを処理する |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 以前失敗した画像キーワードの更新を再試行します |
| `-Language` | String | — | — | Named | — | 生成された説明とキーワードの言語 |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)
