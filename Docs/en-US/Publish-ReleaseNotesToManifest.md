# Publish-ReleaseNotesToManifest

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `pubrelnotes

## Synopsis

> Publishes uncompleted release notes from README.md to the module manifest.

## Description

Reads the "## Release notes" section from a README.md file, collects all
uncompleted release notes (lines starting with - ☐), writes them into the
ReleaseNotes field of GenXdev.psd1, and marks them as completed (☐ → ☒)
in the README. Both files are updated atomically in one operation.

## Syntax

```powershell
Publish-ReleaseNotesToManifest [[-ManifestPath] <String>] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-ManifestPath` | String | — | — | 0 | — | Path to the .psd1 module manifest |

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
