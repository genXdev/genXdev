# EnsurePython

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Python がインストールされ、システムの PATH で使用可能であることを確認します。

## Description

Pythonがインストールされ、システムのPATHからアクセス可能であることを確認します。Pythonが見つからない場合は、winget（Windowsパッケージマネージャー）を使用してインストールを試みます。特定のバージョン要件をサポートし、インストール中に進行状況をフィードバックします。成功した場合はPython実行ファイルへのパスを返し、失敗した場合はWrite-Errorをスローします。

この関数は既存のPythonインストールを優先しますが、必要に応じて再インストールを強制できます。バージョン出力を確認することでPythonの機能を検証し、インストールが適切にアクセス可能であることを保証します。

## Syntax

```powershell
EnsurePython [[-Version] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Version` | String | — | — | 0 | `"3.12"` | インストールされていることを確認するPythonのバージョン |
| `-Timeout` | Int32 | — | — | Named | `600` | Python インストールのタイムアウト（秒） |
| `-Force` | SwitchParameter | — | — | Named | — | Python の再インストールを強制する |

## Examples

### EnsurePython

```powershell
EnsurePython
```

デフォルト設定を使用してPython 3.12がインストールされていることを確認します。

### $pythonPath = EnsurePython -Version "3.11" -Timeout 900

```powershell
$pythonPath = EnsurePython -Version "3.11" -Timeout 900
```

Python 3.11 を拡張タイムアウトでインストールし、実行可能ファイルのパスを返します。

### EnsurePython -Force -Verbose

```powershell
EnsurePython -Force -Verbose
```

Python 3.12 の再インストールを強制し、詳細な進捗情報を表示します。

### EnsurePython -Version "3.10" -Force

```powershell
EnsurePython -Version "3.10" -Force
```

別のバージョンが存在する場合でも、Python 3.10 を強制的にインストールします。

## Related Links

- [EnsurePython on GitHub](https://github.com/genXdev/genXdev)
