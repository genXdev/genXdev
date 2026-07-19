# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> リファクタリング操作とそのステータスの詳細なレポートを生成します。

## Description

リファクタリング操作の進行状況を分析し、現在の状態、完了状況、影響を受ける関数を調査します。出力は構造化されたハッシュテーブル形式か、人間が読みやすい整列テキスト列で提供されます。レポートには、リファクタ名、プロンプトキー、優先度、ステータス、関数数、完了率が含まれます。

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | リファクタリングの名前、ワイルドカードを受け入れます 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定ファイルデータベースへのパスを指定します。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 設定されている場合、リファクタデータにはセッションキャッシュのみを使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 設定されている場合、実行前にセッションキャッシュをクリアします。 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 設定されている場合、セッションキャッシュの読み込みをスキップします。 |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Output report in text format instead of Hashtable |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

「DatabaseRefactor」に一致するリファクタリングのテキストレポートを生成します。

### Example 2

```powershell
refactorreport "*"
```

エイリアスを使用するすべてのリファクタリングのハッシュテーブルレポートを生成します。

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
