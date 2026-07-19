# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> PowerShell モジュール内のすべてのコマンドレットのメタデータを取得します。

## Description

指定されたモジュール内のすべてのコマンドレットについて、完全なコマンドレットメタデータ（概要、説明、パラメーター、例、出力、エイリアス）を取得し、各結果に SubModuleName および CmdletType プロパティを追加します。

サブモジュールの割り当てには、2つの独立したパスを使用します。

- スクリプトコマンドレット (.ps1): ソースファイルを .psm1 のドットソースディレクトリマッピング (Functions\<SubModuleName>\FileName.ps1) と照合します。
- コンパイル済みコマンドレット (.dll): ImplementationType.Namespace (例: GenXdev.FileSystem) の名前空間を使用します。

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

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

GenXdevモジュール内のすべてのコマンドレットのメタデータを返します。

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

Retourneert Nederlands-vertaalde metadata voor alle GenXdev-cmdlets.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
