# EnsurePip

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 指定されたPythonインストールに対してpipがインストールされ、機能していることを確認します。

## Description

指定されたPython実行可能ファイルに対して、pipが利用可能で機能することを確認します。
pipが利用できない場合、ensurepipを使用してインストールを試みます。バージョンの確認や基本的な操作によってpipの機能を検証します。pipが使用可能な場合は$trueを返し、失敗した場合はWrite-Errorをスローします。

## Syntax

```powershell
EnsurePip [[-PythonPath] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonPath` | String | — | — | 0 | — | Python 実行可能ファイルへのパス |
| `-Timeout` | Int32 | — | — | Named | `300` | pip インストールのタイムアウト（秒） |
| `-Force` | SwitchParameter | — | — | Named | — | pip の再インストール/アップグレードを強制します。 |

## Examples

### EnsurePip

```powershell
EnsurePip
```

デフォルトのPythonインストールでpipが利用可能であることを保証します。

### EnsurePip -PythonPath "C:\Python39\python.exe" -Force

```powershell
EnsurePip -PythonPath "C:\Python39\python.exe" -Force
```

特定のPython実行ファイルに対してpipインストールを強制します。

### $pythonPath = EnsurePython EnsurePip -PythonPath $pythonPath

```powershell
$pythonPath = EnsurePython
EnsurePip -PythonPath $pythonPath
```

EnsurePython によって返された特定の Python インストールに対する pip を保証します。

## Related Links

- [EnsurePip on GitHub](https://github.com/genXdev/genXdev)
