# EnsureSSMSInstalled

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> SSMS がインストールされ、コマンドラインからアクセスできることを確認します。

## Description

SSMS がインストールされ、システムの PATH で利用可能かを確認します。見つからない場合は、まず PATH 環境変数の更新が必要かどうかを確認します。それでも問題が解決しない場合は、WinGet を使用して SSMS をインストールし、PATH 環境変数を構成します。

## Syntax

```powershell
EnsureSSMSInstalled [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureSSMSInstalled Checks and ensures SSMS is installed and accessible.

```powershell
EnsureSSMSInstalled
Checks and ensures SSMS is installed and accessible.
```

## Related Links

- [EnsureSSMSInstalled on GitHub](https://github.com/genXdev/genXdev)
