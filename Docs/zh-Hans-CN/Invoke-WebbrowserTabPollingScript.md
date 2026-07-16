# Invoke-WebbrowserTabPollingScript

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript代码、URL或要执行的文件路径 |
| `-InitialUrl` | String | — | — | 1 | — | 轮询开始前导航到的 URL |
| `-Callback` | ScriptBlock | — | — | 2 | — | 用于处理投票结果的回调脚本块 |

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
