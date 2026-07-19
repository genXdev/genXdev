# EnsurePSTools

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Assure que les outils Sysinternals (PSTools) sont installés et disponibles.

## Description

Vérifie si les outils Sysinternals, comme handle.exe, sont installés et correctement configurés sur le système. Si ce n'est pas le cas, installe la suite Sysinternals via WinGet et gère automatiquement l'ensemble du processus d'installation.

## Syntax

```powershell
EnsurePSTools [[-PSExeName] <String>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Réinstallation forcée des outils Sysinternals |
| `-PSExeName` | String | — | — | 0 | `'handle.exe'` | Le nom de l'exécutable pour vérifier l'installation |

## Examples

### EnsurePSTools Ensures Sysinternals tools are installed and properly configured.

```powershell
EnsurePSTools
Ensures Sysinternals tools are installed and properly configured.
```

### EnsurePSTools -Force -PSExeName 'procexp.exe' Forces reinstallation of Sysinternals tools and uses procexp.exe to verify installation. ##############################################################################

```powershell
EnsurePSTools -Force -PSExeName 'procexp.exe'
Forces reinstallation of Sysinternals tools and uses procexp.exe to verify
installation.
##############################################################################
```

## Related Links

- [EnsurePSTools on GitHub](https://github.com/genXdev/genXdev)
