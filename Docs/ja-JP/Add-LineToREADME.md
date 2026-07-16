# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-LineToREADME [[-Line] <String>] -Section <String> -Prefix <String> [-Code] [-Done] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | README に追加する行 |
| `-Section` | String | ✅ | — | 1 | — | 行を追加するセクション |
| `-Prefix` | String | ✅ | — | 2 | `'* '` | 行に使用するプレフィックス |
| `-Code` | SwitchParameter | — | — | Named | — | 変更後にVisual Studio Codeで開く |
| `-Show` | SwitchParameter | — | — | Named | — | 修正箇所を表示 |
| `-Done` | SwitchParameter | — | — | Named | — | アイテムを完了としてマークする |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell プロファイル ディレクトリの README を使用します |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive ディレクトリ内の README を使用してください |

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
