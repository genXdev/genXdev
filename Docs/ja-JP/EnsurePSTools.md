# EnsurePSTools

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Sysinternalsツール（PSTools）がインストールされ、利用可能であることを確認します。

## Description

handle.exe などの Sysinternals ツールがシステムにインストールされ、適切に構成されているか確認します。見つからない場合は、WinGet を使用して Sysinternals Suite をインストールし、インストールプロセス全体を自動的に処理します。

## Syntax

```powershell
EnsurePSTools [[-PSExeName] <String>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Sysinternals ツールの強制再インストール |
| `-PSExeName` | String | — | — | 0 | `'handle.exe'` | インストールを確認するための実行可能ファイル名 |

## Examples

### EnsurePSTools Ensures Sysinternals tools are installed and properly configured.

```powershell
EnsurePSTools
Ensures Sysinternals tools are installed and properly configured.
```

### EnsurePSTools -Force -PSExeName 'procexp.exe' Forces reinstallation of Sysinternals tools and uses procexp.exe to verify installation. ##############################################################################

```powershell
EnsurePSTools -Force -PSExeName 'procexp.exe'
Forces reinstallation of Sysinternals tools and uses procexp.exe to verify
installation.
##############################################################################
```

## Related Links

- [EnsurePSTools on GitHub](https://github.com/genXdev/genXdev)
