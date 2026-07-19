# Get-Features

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `features

## Synopsis

> README.mdファイルから機能を表示します。

## Description

README.mdファイルの「## Features」セクションからすべての機能を表示します。現在の場所、PowerShellプロファイルディレクトリ、またはOneDriveディレクトリのREADMEを使用できます。

## Syntax

```powershell
Get-Features [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell プロファイル ディレクトリの README を使用します |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive ディレクトリ内の README を使用してください |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 行を優先度ではなく日付（yyyyMMddプレフィックス）で並べ替える |
| `-Ascending` | SwitchParameter | — | — | Named | — | 並び順を逆にする（降順ではなく昇順） |
| `-First` | Int32 | — | — | 0 | `0` | 出力を最初のN行に制限する |

## Examples

### Features -UseHomeREADME

```powershell
Features -UseHomeREADME
```

## Related Links

- [Get-Features on GitHub](https://github.com/genXdev/genXdev)
