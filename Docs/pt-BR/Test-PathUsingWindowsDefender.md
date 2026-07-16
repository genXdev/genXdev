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
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O caminho para o arquivo ou diretório a ser escaneado |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | Instrui o Windows Defender a agir contra ameaças |

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
