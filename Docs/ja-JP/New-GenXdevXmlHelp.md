# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | ヘルプを生成するPowerShellモジュールの名前 |
| `-Language` | String | — | — | Named | `'en-US'` | ja-JP |
| `-Force` | SwitchParameter | — | — | Named | — | 既存のヘルプXMLファイルを確認なしで上書きする |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | LLM 翻訳用のカスタム指示 (Get-TextTranslation に渡されます) |

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
