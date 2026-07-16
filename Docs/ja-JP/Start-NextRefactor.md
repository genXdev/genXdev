# Start-NextRefactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `nextrefactor

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-NextRefactor [[-Name] <String[]>] [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-CleanUpDeletedFiles] [-MarkAllCompleted] [-RedoLast] [-Reset] [-ResetLMSelections] [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | リファクタリングの名前、ワイルドカードを受け入れます 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | 追加するファイル名 |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | 削除するファイル名 |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | 3 | — | 削除されたファイルをクリーンアップ |
| `-Reset` | SwitchParameter | — | — | Named | — | リファクタリングセットの最初から始めてください |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | すべてのLLM選択を再起動 |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | すべてのファイルをリファクタリング済みとしてマーク |
| `-RedoLast` | SwitchParameter | — | — | Named | — | 前回のリファクタリングをやり直してください |
| `-Speak` | SwitchParameter | — | — | Named | — | 次のリファクタリングの詳細を説明してください。 |

## Related Links

- [Start-NextRefactor on GitHub](https://github.com/genXdev/genXdev)
