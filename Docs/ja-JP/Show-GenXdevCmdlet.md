# Show-GenXdevCmdlet

> **Module:** GenXdev | **Type:** Function | **Aliases:** `cmds`

## Synopsis

> GenXdev PowerShell モジュールとそのコマンドレットおよびエイリアスを表示します。

## Description

インストールされているすべてのGenXdev PowerShellモジュールと、それに関連するコマンドレットおよびエイリアスを一覧表示します。Get-GenXDevCmdletを使用してコマンドレット情報を取得し、必要に応じてスクリプトの位置情報も取得します。フィルタリングやさまざまな表示オプションを提供します。

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | コマンドレットをフィルターする検索パターン 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | コマンドレット定義に一致する正規表現 |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | GenXdev モジュール名の検索 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | ローカルモジュールパスでの検索をスキップする |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 公開済みモジュールのパスのみを検索する |
| `-FromScripts` | SwitchParameter | — | — | Named | — | スクリプトファイル内をモジュールではなく検索する |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | 通常のモジュールに加えて、スクリプトディレクトリも含まれます。 *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | 一意のモジュール名のみを返す |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | ワイルドカード一致の代わりに完全一致を実行します |
| `-Online` | SwitchParameter | — | — | Named | — | コンソール出力ではなく、GitHubのドキュメントを開く |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | 指定した場合、コマンドレットのエイリアスのみを表示します |
| `-ShowTable` | SwitchParameter | — | — | Named | — | 結果をテーブル形式で表示します |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Examples

### Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable Lists all cmdlets starting with "Get" in the Console module as a table

```powershell
Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable
Lists all cmdlets starting with "Get" in the Console module as a table
```

### cmds get -m console Lists all cmdlets starting with "Get" in the Console module

```powershell
cmds get -m console
Lists all cmdlets starting with "Get" in the Console module
```

### Show-GenXdevCmdlet -OnlyReturnModuleNames Returns only unique module names

```powershell
Show-GenXdevCmdlet -OnlyReturnModuleNames
Returns only unique module names
```

## Parameter Details

### `-CmdletName <String>`

> コマンドレットをフィルターする検索パターン

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DefinitionMatches <String>`

> コマンドレット定義に一致する正規表現

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModuleName <String[]>`

> GenXdev モジュール名の検索

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> ローカルモジュールパスでの検索をスキップする

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPublished`

> 公開済みモジュールのパスのみを検索する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FromScripts`

> スクリプトファイル内をモジュールではなく検索する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeScripts`

> 通常のモジュールに加えて、スクリプトディレクトリも含まれます。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ModuleName |

<hr/>
### `-OnlyReturnModuleNames`

> 一意のモジュール名のみを返す

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> ワイルドカード一致の代わりに完全一致を実行します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Online`

> コンソール出力ではなく、GitHubのドキュメントを開く

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAliases`

> 指定した場合、コマンドレットのエイリアスのみを表示します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `aliases`, `nonboring`, `notlame`, `handyonces` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowTable`

> 結果をテーブル形式で表示します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `table`, `grid` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> The `-PassThru` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.ArrayList`
- `Void`

## Related Links

- [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXDevCmdlet.md)
