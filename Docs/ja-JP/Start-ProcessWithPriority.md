# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> 指定された優先度レベルでプロセスを開始します。

## Description

* カスタマイズ可能な優先度レベルで実行可能ファイルを起動し、待機とプロセス管理のオプションを提供します。
* Start-Process をラップして、プロセスの優先度と実行動作を制御する追加機能を提供します。

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

## Examples

### Example 1

```powershell
Start-ProcessWithPriority -FilePath "notepad.exe" -Priority "Low" -NoWait
```

メモ帳を低優先度で起動し、すぐに戻ります。

### Example 2

```powershell
nice notepad.exe -Priority High
```

「nice」エイリアスを使用して、プロセスを高い優先度で起動します。

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
