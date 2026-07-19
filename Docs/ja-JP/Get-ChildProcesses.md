# Get-ChildProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 現在のPowerShellプロセスのすべての子孫プロセスを取得します。

## Description

* 実行中のすべてのプロセスを調査し、その親プロセスチェーン内に現在のPowerShellプロセスが祖先として存在するものを特定します。
* これには、直接の子プロセスだけでなく、その子孫（孫プロセスなど）も含まれます。

## Syntax

```powershell
Get-ChildProcesses [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ChildProcesses
```

現在のPowerShellセッションのすべての子プロセスを取得します。

### Example 2

```powershell
Get-ChildProcesses -Verbose
```

詳細なプロセス検出情報を含む冗長出力で子プロセスを取得します。

## Related Links

- [Get-ChildProcesses on GitHub](https://github.com/genXdev/genXdev)
