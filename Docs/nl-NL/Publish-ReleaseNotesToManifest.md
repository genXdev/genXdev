# Publish-ReleaseNotesToManifest

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `pubrelnotes

## Synopsis

> Publiceert onvoltooide release-opmerkingen van README.md naar de module-manifest.

## Description

Leest de sectie "## Release notes" uit een README.md-bestand, verzamelt alle
niet-voltooide release-opmerkingen (regels die beginnen met - ☐), schrijft ze naar het
ReleaseNotes-veld van GenXdev.psd1 en markeert ze als voltooid (☐ → ☒)
in de README. Beide bestanden worden atomair bijgewerkt in één bewerking.

## Syntax

```powershell
Publish-ReleaseNotesToManifest [[-ManifestPath] <String>] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Gebruik README in de PowerShell-profielmap |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Gebruik README in OneDrive-directory |
| `-ManifestPath` | String | — | — | 0 | — | Pad naar het .psd1-modulemanifest |

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
