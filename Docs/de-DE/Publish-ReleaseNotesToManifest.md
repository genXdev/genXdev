# Publish-ReleaseNotesToManifest

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `pubrelnotes

## Synopsis

> Veröffentlicht unvollständige Versionshinweise aus README.md im Modulmanifest.

## Description

Liest den Abschnitt „## Release Notes“ aus einer README.md-Datei, sammelt alle nicht abgeschlossenen Versionshinweise (Zeilen, die mit - ☐ beginnen), schreibt sie in das ReleaseNotes-Feld von GenXdev.psd1 und markiert sie im README als abgeschlossen (☐ → ☒). Beide Dateien werden in einem atomaren Vorgang aktualisiert.

## Syntax

```powershell
Publish-ReleaseNotesToManifest [[-ManifestPath] <String>] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-ManifestPath` | String | — | — | 0 | — | Pfad zum .psd1-Modulmanifest |

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
