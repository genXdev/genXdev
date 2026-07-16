# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-ProcessWithPriority [-FilePath] <string> [[-ArgumentList] <string[]>] [[-Priority] <string>] [-NoWait] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 実行する実行ファイルへのパス |
| `-ArgumentList` | String[] | — | — | 1 | — | 実行可能ファイルに渡す引数 |
| `-Priority` | String | — | — | 2 | — | プロセス優先度レベル |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | プロセスの完了を待たないでください |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | プロセスオブジェクトを返す |

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
