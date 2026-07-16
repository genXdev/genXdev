# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 指定要格式化的脚本文件的路径。 |
| `-Settings` | Object | — | — | Named | — | 一个设置哈希表或指向包含格式化设置的 PowerShell 数据文件 (.psd1) 的路径。 |
| `-Range` | Int32[] | — | — | Named | — | 格式化应发生的范围，以四个整数的数组表示：起始行号、起始列号、结束行号、结束列号。 |
| `-Recurse` | SwitchParameter | — | — | Named | — | 递归处理子目录中的文件。 |

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
