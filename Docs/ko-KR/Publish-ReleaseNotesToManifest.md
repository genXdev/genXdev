# Publish-ReleaseNotesToManifest

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `pubrelnotes

## Synopsis

> README.md에서 완료되지 않은 릴리스 노트를 모듈 매니페스트에 게시합니다.

## Description

README.md 파일의 "## Release notes" 섹션을 읽고, 미완료된 릴리스 노트(☐로 시작하는 줄)를 모두 수집하여 GenXdev.psd1의 ReleaseNotes 필드에 기록한 후, README에서 해당 항목을 완료(☐ → ☒)로 표시합니다. 두 파일은 하나의 작업에서 원자적으로 업데이트됩니다.

## Syntax

```powershell
Publish-ReleaseNotesToManifest [[-ManifestPath] <String>] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell 프로필 디렉터리에서 README 사용 |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive 디렉토리에 있는 README를 사용하세요 |
| `-ManifestPath` | String | — | — | 0 | — | .psd1 모듈 매니페스트의 경로 |

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
