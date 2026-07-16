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
| `-Arguments` | String[] | ✅ | — | 0 | — | Hugging Face CLI에 전달할 인수 |
| `-Timeout` | Int32 | — | — | 1 | `36000` | CLI 실행 및 종속성 설치를 위한 타임아웃(초) |
| `-Force` | SwitchParameter | — | — | Named | — | Hugging Face CLI를 강제로 재설치합니다 |

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)
