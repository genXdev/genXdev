# Invoke-WinMerge

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 2つのファイルを並べて比較するためにWinMergeを起動します。

## Description

WinMergeアプリケーションを起動し、ソースファイルとターゲットファイルを横並びの差分ビューで比較します。この関数は、両方の入力ファイルの存在を検証し、起動前にWinMergeが適切にインストールされていることを確認します。WinMergeが閉じるまで実行を一時停止するオプションの待機機能を提供します。

## Syntax

```powershell
Invoke-WinMerge -SourcecodeFilePath <String> -TargetcodeFilePath <String> [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SourcecodeFilePath` | String | ✅ | — | 0 | — | 比較するソースファイルへのパス |
| `-TargetcodeFilePath` | String | ✅ | — | 1 | — | 比較対象のターゲットファイルへのパス |
| `-Wait` | SwitchParameter | — | — | Named | — | 続行する前にWinMergeが閉じるのを待ってください |

## Examples

### Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `                 -TargetcodeFilePath "C:\target\file2.txt" `                 -Wait

```powershell
Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `
                -TargetcodeFilePath "C:\target\file2.txt" `
                -Wait
```

### merge "C:\source\file1.txt" "C:\target\file2.txt"

```powershell
merge "C:\source\file1.txt" "C:\target\file2.txt"
```

## Related Links

- [Invoke-WinMerge on GitHub](https://github.com/genXdev/genXdev)
