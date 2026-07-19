# Get-MonitorCount

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> システムに接続されている表示モニターの総数を取得します。

## Description

* Windows Presentation Foundation (WPF) のScreenヘルパークラスを使用して、システムに現在接続されている物理ディスプレイモニターの数を正確に取得します。
* これには、アクティブなモニターと、検出されているが無効化されているモニターの両方が含まれます。

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

接続されているモニターの総数を返します（例：2）。

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

検出プロセスを示す詳細出力とともにモニター数を返します。

## Related Links

- [Get-MonitorCount on GitHub](https://github.com/genXdev/genXdev)
