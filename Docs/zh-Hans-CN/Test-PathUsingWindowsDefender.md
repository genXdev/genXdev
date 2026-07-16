# Test-PathUsingWindowsDefender

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `virusscan, `HasNoVirus

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Test-PathUsingWindowsDefender [-FilePath] <string> [-EnableRemediation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要扫描的文件或目录的路径 |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | 指示 Windows Defender 对威胁采取行动 |

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
