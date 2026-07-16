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
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The path to the file or directory to be scanned |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | Instructs Windows Defender to take action on threats |

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
