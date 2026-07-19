# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo

## Synopsis

> README.md ファイルに TODO 項目を追加します。

## Description

README.md ファイルの「## Todoos」セクションに、タイムスタンプ付きの TODO アイテムを追加します。
TODO アイテムは完了済みとしてマークでき、修正したセクションを表示できます。
新しい TODO アイテムには、完了としてマークする場合を除き、自動的にタイムスタンプが付与されます。

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-Done] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | 追加するToDoアイテムのテキスト |
| `-Code` | SwitchParameter | — | — | Named | — | Open README in Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | 修正箇所を表示 |
| `-Done` | SwitchParameter | — | — | Named | — | TODOアイテムを完了としてマーク |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell プロファイル ディレクトリの README を使用します |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive ディレクトリ内の README を使用してください |
| `-Priority` | Int32 | — | — | Named | `1` | ソート優先度（高いほど先に表示、デフォルトは1） |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 行を優先度ではなく日付（yyyyMMddプレフィックス）で並べ替える |
| `-Ascending` | SwitchParameter | — | — | Named | — | 並び順を逆にする（降順ではなく昇順） |
| `-First` | Int32 | — | — | Named | `0` | 制限 - 出力を最初のN行だけ表示 |

## Examples

### Add-TodoLineToREADME -Line "Implement new feature" -Show -Code

```powershell
Add-TodoLineToREADME -Line "Implement new feature" -Show -Code
```

### todo "Fix bug" -Done

```powershell
todo "Fix bug" -Done
```

## Related Links

- [Add-TodoLineToREADME on GitHub](https://github.com/genXdev/genXdev)
