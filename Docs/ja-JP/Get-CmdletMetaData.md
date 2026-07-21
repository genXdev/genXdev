# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 指定されたGenXdevコマンドレットのメタデータを取得し、必要に応じてヘルプテキストを別の言語に翻訳します。

## Description

GenXdevコマンドレットに関する包括的なメタデータ（概要、説明、パラメーター、使用例、その他のヘルプ情報）を抽出して返します。
-Languageパラメーターで対象言語を指定すると、AIベースの翻訳サービスを使用してヘルプテキストを翻訳できます。カスタム翻訳指示を提供して、翻訳出力を微調整することも可能です。

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | メタデータを取得するためのコマンドレットの名前 |
| `-Language` | String | — | — | 1 | — | ヘルプテキストを翻訳するためのBCP 47言語タグ（例：nl-NL、de-DE）。翻訳をスキップするには省略します。 |
| `-TranslationInstructions` | String | — | — | 2 | — | AI翻訳モデル向けのカスタム指示。デフォルトのコマンドレットメタデータ対応翻訳指示を上書きします。 |
| `-Model` | String | — | — | 3 | — | AI翻訳に使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | 4 | — | AI翻訳のAPIエンドポイントURL |
| `-ApiKey` | String | — | — | 5 | — | 認証済みAI翻訳のAPIキー |
| `-NoSupportForJsonSchema` | String | — | — | 6 | — | LLMがJSONスキーマをサポートしていないことを示します |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | LLMベースの翻訳をスキップし、-Languageが指定されている場合でもヘルプテキストをソース言語のまま保持します。 |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Find-Item コマンドレットのメタデータを既定の言語で取得します。

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Find-Item コマンドレットのメタデータをオランダ語の翻訳付きで取得します。

## Parameter Details

### `-Name <String>`

> メタデータを取得するためのコマンドレットの名前

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> ヘルプテキストを翻訳するためのBCP 47言語タグ（例：nl-NL、de-DE）。翻訳をスキップするには省略します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> AI翻訳モデル向けのカスタム指示。デフォルトのコマンドレットメタデータ対応翻訳指示を上書きします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI翻訳に使用するモデル識別子またはパターン

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> AI翻訳のAPIエンドポイントURL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> 認証済みAI翻訳のAPIキー

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> LLMがJSONスキーマをサポートしていないことを示します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> LLMベースの翻訳をスキップし、-Languageが指定されている場合でもヘルプテキストをソース言語のまま保持します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/EnsureDefaultGenXdevRefactors.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Show-GenXdevCmdLetInIde.md)
