# Add-IdeaLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `idea

## Synopsis

> README.md ファイルにアイデア項目を追加します。

## Description

README.mdファイルの「## Ideas」セクションにタイムスタンプ付きのアイデアを追加します。
変更したセクションを表示し、Visual Studio Codeで開くことができます。

## Syntax

```powershell
Add-IdeaLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | 追加するアイデアテキスト |
| `-Code` | SwitchParameter | — | — | Named | — | Open README in Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | 修正箇所を表示 |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell プロファイル ディレクトリの README を使用します |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive ディレクトリ内の README を使用してください |
| `-Priority` | Int32 | — | — | Named | `1` | ソート優先度（高いほど先に表示、デフォルトは1） |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 行を優先度ではなく日付（yyyyMMddプレフィックス）で並べ替える |
| `-Ascending` | SwitchParameter | — | — | Named | — | 並び順を逆にする（降順ではなく昇順） |
| `-First` | Int32 | — | — | Named | `0` | 制限 - 出力を最初のN行だけ表示 |

## Examples

### Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show

```powershell
Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show
```

### idea "New feature idea" -UseOneDriveREADME

```powershell
idea "New feature idea" -UseOneDriveREADME
```

## Related Links

- [Add-IdeaLineToREADME on GitHub](https://github.com/genXdev/genXdev)
