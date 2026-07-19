# Invoke-HuggingFaceCli

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 指定された引数でHugging Face CLIを呼び出します。

## Description

EnsureHuggingFaceを呼び出してCLIがインストールされていることを確認し、指定された引数でHugging Face CLIを実行します。CLIのパスを$ENV:LOCALAPPDATA\GenXdev.PowerShell\hfclilocation.jsonから読み取ります。コマンドの出力を文字列として返します。失敗した場合はWrite-Errorをスローします。

## Syntax

```powershell
Invoke-HuggingFaceCli -Arguments <String[]> [[-Timeout] <Int32>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Arguments` | String[] | ✅ | — | 0 | — | Hugging Face CLI に渡す引数 |
| `-Timeout` | Int32 | — | — | 1 | `36000` | CLIの実行および依存関係のインストールのタイムアウト（秒） |
| `-Force` | SwitchParameter | — | — | Named | — | Hugging Face CLI の強制再インストール |

## Examples

### Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force

```powershell
Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force
```

「login」コマンドでCLIを呼び出し、強制的に再インストールします。

### Invoke-HuggingFaceCli @("whoami") 300

```powershell
Invoke-HuggingFaceCli @("whoami") 300
```

CLIを「whoami」コマンドと300秒のタイムアウトで起動します。

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)
