# EnsureHuggingFace

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Hugging Face CLI がインストールされており、正常に機能することを確認します。

## Description

Python、pip、およびHugging Face CLIのインストールを調整します。
EnsurePythonとEnsurePipを呼び出し、その後huggingface_hubパッケージをインストールします。
CLIパスをJSONファイルに保存し、すべてのコンポーネントがシステムのPATHで利用可能であることを確認します。
成功した場合は$trueを返し、失敗した場合はWrite-Errorをスローします。

## Syntax

```powershell
EnsureHuggingFace [[-PythonVersion] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonVersion` | String | — | — | 0 | `"3.12"` | 確認するPythonバージョン |
| `-Timeout` | Int32 | — | — | Named | `600` | インストールプロセスのタイムアウト（秒） |
| `-Force` | SwitchParameter | — | — | Named | — | すべてのコンポーネントを強制的に再インストールします |

## Examples

### EnsureHuggingFace

```powershell
EnsureHuggingFace
```

Python 3.12、pip、HuggingFace CLI がインストールされていることを確認します。

### EnsureHuggingFace -PythonVersion "3.11" -Force

```powershell
EnsureHuggingFace -PythonVersion "3.11" -Force
```

Python 3.11 での再インストールを強制します。

### EnsureHuggingFace -Timeout 1200

```powershell
EnsureHuggingFace -Timeout 1200
```

20分のタイムアウトでインストールを保証します。

## Related Links

- [EnsureHuggingFace on GitHub](https://github.com/genXdev/genXdev)
