# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 任意のPowerShellモジュールに対して、リッチなMarkdownヘルプファイルを生成します。

## Description

任意のPowerShellモジュールに対応した包括的なMarkdownヘルプサイトを生成します。各コマンドレットごとに1つの.mdファイル（すべてのメタデータセクションを含む）と、サブモジュールごとに各コマンドレットファイルにリンクするテーブルを持つREADME.mdインデックスを作成します。

サブモジュールの検出は移植可能です。スクリプトコマンドレットの場合は.psm1ドットソースディレクトリ、コンパイル済みコマンドレットの場合は.NET名前空間を使用し、サブモジュール構造を持たないモジュールには階層的なフォールバックチェーンを適用します。

## Syntax

```powershell
New-GenXdevMarkdownHelp -ModuleName <String> [-Force] [-Language <String>] [-LinkPrefix <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | ヘルプを生成するPowerShellモジュールの名前 |
| `-OutputPath` | String | — | — | Named | — | .md ファイルのカスタム出力ディレクトリ。デフォルトは <moduleRoot>\Docs\<language> です。 |
| `-Language` | String | — | — | Named | `'en-US'` | ja-JP |
| `-Force` | SwitchParameter | — | — | Named | — | 確認なしで既存の.mdファイルを上書きします |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-LinkPrefix` | String | — | — | Named | — | README インデックスリンク用の URL プレフィックス（例: https://github.com/org/repo/Docs/） |
| `-TranslationInstructions` | String | — | — | Named | — | カスタムAI翻訳指示 |

## Examples

### New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Pester コマンドレットごとに1つの .md ファイルと README.md インデックスを含む Docs\ フォルダーを生成します。

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

オランダ語翻訳済みのマークダウンヘルプを生成し、既存のファイルを上書きします。

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

README インデックス内の絶対GitHubリンクを生成するのを支援します。

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
