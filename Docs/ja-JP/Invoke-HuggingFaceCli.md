# Invoke-HuggingFaceCli

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)
