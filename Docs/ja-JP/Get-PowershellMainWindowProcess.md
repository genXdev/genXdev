# Get-PowershellMainWindowProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> PowerShell ターミナルをホストするウィンドウのプロセス オブジェクトを返します。

## Description

* 現在のPowerShellプロセスからプロセスのツリーを遡り、ターミナルをホストしている親ウィンドウを特定します。
* 直接の親プロセスにメインウィンドウハンドルがない場合、メインウィンドウを持つ類似のプロセスを検索します。
* PowerShellセッションを含む実際のターミナルウィンドウプロセス（Windows Terminal、ConHostなど）を特定するのに役立ちます。

## Syntax

```powershell
Get-PowershellMainWindowProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hostProcess = Get-PowershellMainWindowProcess
Write-Host "PowerShell is hosted in: $($hostProcess.ProcessName)"
```

現在のPowerShellセッションをホストしているプロセスを返し、その名前を表示します。

## Related Links

- [Get-PowershellMainWindowProcess on GitHub](https://github.com/genXdev/genXdev)
