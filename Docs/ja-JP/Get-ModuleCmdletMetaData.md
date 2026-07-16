# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | コマンドレットメタデータを取得するPowerShellモジュールの名前 |
| `-Language` | String | — | — | Named | — | ja-JP |
| `-TranslationInstructions` | String | — | — | Named | — | カスタムAI翻訳指示 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation |

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
