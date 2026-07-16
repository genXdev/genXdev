# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Code] [-Done] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | ✅ (ByValue) | 0 | `''` | 追加するToDoアイテムのテキスト |
| `-Code` | SwitchParameter | — | — | Named | — | Open README in Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | 修正箇所を表示 |
| `-Done` | SwitchParameter | — | — | Named | — | TODOアイテムを完了としてマーク |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell プロファイル ディレクトリの README を使用します |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive ディレクトリ内の README を使用してください |

## Related Links

- [Add-TodoLineToREADME on GitHub](https://github.com/genXdev/genXdev)
