# Publish-ReleaseNotesToManifest

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `pubrelnotes

## Synopsis

> README.md から未完成のリリースノートをモジュールマニフェストに公開します。

## Description

README.mdファイルから「## Release notes」セクションを読み取り、未完了のリリースノート（- ☐で始まる行）をすべて収集し、それらをGenXdev.psd1のReleaseNotesフィールドに書き込み、README内で完了済みとしてマークします（☐ → ☒）。両方のファイルは1回の操作でアトミックに更新されます。

## Syntax

```powershell
Publish-ReleaseNotesToManifest [[-ManifestPath] <String>] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell プロファイル ディレクトリの README を使用します |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive ディレクトリ内の README を使用してください |
| `-ManifestPath` | String | — | — | 0 | — | .psd1 モジュールマニフェストへのパス |

## Examples

### Publish-ReleaseNotesToManifest

```powershell
Publish-ReleaseNotesToManifest
```

### Publish-ReleaseNotesToManifest -ManifestPath ".\MyModule.psd1"

```powershell
Publish-ReleaseNotesToManifest -ManifestPath ".\MyModule.psd1"
```

## Related Links

- [Publish-ReleaseNotesToManifest on GitHub](https://github.com/genXdev/genXdev)
