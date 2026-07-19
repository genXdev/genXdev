# Publish-ReleaseNotesToManifest

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `pubrelnotes

## Synopsis

> Publie les notes de version inachevées du README.md dans le manifeste du module.

## Description

Lit la section « ## Release notes » d’un fichier README.md, collecte toutes les notes de version non terminées (lignes commençant par - ☐), les écrit dans le champ ReleaseNotes de GenXdev.psd1, et les marque comme terminées (☐ → ☒) dans le README. Les deux fichiers sont mis à jour de manière atomique en une seule opération.

## Syntax

```powershell
Publish-ReleaseNotesToManifest [[-ManifestPath] <String>] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Utiliser README dans le répertoire du profil PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Utilisez le README dans le répertoire OneDrive |
| `-ManifestPath` | String | — | — | 0 | — | Chemin vers le manifeste du module .psd1 |

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
