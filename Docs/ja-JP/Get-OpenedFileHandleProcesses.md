# Get-OpenedFileHandleProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 指定されたファイルに開いているファイルハンドルを持つプロセスを取得します。

## Description

* Sysinternals の handle.exe ツールを使用して、1 つ以上の指定されたファイルに対して開いているハンドルを持つプロセスを特定します。
* 削除や変更などのファイル操作を妨げているプロセスを特定するのに役立ちます。
* Sysinternals スイートの handle.exe がインストールされ、システムパスから使用可能である必要があります。

## Syntax

```powershell
Get-OpenedFileHandleProcesses [-FilePath] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 開いているハンドルをチェックするファイルへのパス |

## Examples

### Example 1

```powershell
Get-OpenedFileHandleProcesses -FilePath "C:\temp\example.txt"
```

指定されたファイルへのオープンハンドルを持つすべてのプロセスを識別します。

### Example 2

```powershell
"file1.txt", "file2.txt" | Get-OpenedFileHandleProcesses
```

パイプライン入力を使って複数のファイルをチェックし、開いているハンドルを持つプロセスを調べます。

## Related Links

- [Get-OpenedFileHandleProcesses on GitHub](https://github.com/genXdev/genXdev)
