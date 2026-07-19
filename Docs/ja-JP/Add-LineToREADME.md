# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> 指定されたセクションのREADME.mdマークダウンファイルに行を追加します。

## Description

README.mdファイルを検索し、指定されたセクションに新しい行を追加して変更します。
セクションがない場合は作成できます。行をコードブロックとしてフォーマットし、変更されたセクションを表示することをサポートします。

最初にカレントディレクトリを検索し、次に上位のディレクトリを検索してREADMEの場所を見つけます。見つからない場合は、PowerShellプロファイルディレクトリ内のREADMEを使用します。

## Syntax

```powershell
Add-LineToREADME -Section <String> [-Ascending] [-Code] [-Done] [-First <Int32>] [-Line <String>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | Named | `''` | README に追加する行 |
| `-Section` | String | ✅ | — | 0 | — | 行を追加するセクション |
| `-Code` | SwitchParameter | — | — | Named | — | 変更後にVisual Studio Codeで開く |
| `-Show` | SwitchParameter | — | — | Named | — | 修正箇所を表示 |
| `-Done` | SwitchParameter | — | — | Named | — | アイテムを完了としてマークする |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell プロファイル ディレクトリの README を使用します |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive ディレクトリ内の README を使用してください |
| `-Priority` | Int32 | — | — | Named | `1` | ソート優先度（高いほど先に表示、デフォルトは1） |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 行を優先度ではなく日付（yyyyMMddプレフィックス）で並べ替える |
| `-Ascending` | SwitchParameter | — | — | Named | — | 並び順を逆にする（降順ではなく昇順） |
| `-First` | Int32 | — | — | Named | `0` | 制限 - 出力を最初のN行だけ表示 |

## Examples

### Add-LineToREADME -Line "New feature" -Section "## Features"

```powershell
Add-LineToREADME -Line "New feature" -Section "## Features"
```

### Add-LineToREADME "High prio item" "## Issues" -Priority 5

```powershell
Add-LineToREADME "High prio item" "## Issues" -Priority 5
```

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
