# Publish-ReleaseNotesToManifest

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `pubrelnotes

## Synopsis

> Publica notas de la versión no completadas desde README.md en el manifiesto del módulo.

## Description

Lee la sección "## Notas de la versión" de un archivo README.md, recopila todas las notas de versión incompletas (líneas que comienzan con - ☐), las escribe en el campo ReleaseNotes de GenXdev.psd1 y las marca como completadas (☐ → ☒) en el README. Ambos archivos se actualizan de manera atómica en una sola operación.

## Syntax

```powershell
Publish-ReleaseNotesToManifest [[-ManifestPath] <String>] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-ManifestPath` | String | — | — | 0 | — | Ruta al manifiesto del módulo .psd1 |

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
