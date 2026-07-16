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
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | スキャンするファイルまたはディレクトリへのパス |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | Windows Defenderに脅威への対応を指示する |

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
