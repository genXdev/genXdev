# EnsurePSTools

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Stellt sicher, dass die Sysinternals-Tools (PSTools) installiert und verfügbar sind.

## Description

Überprüft, ob Sysinternals-Tools wie handle.exe auf dem System installiert und ordnungsgemäß konfiguriert sind. Wenn nicht gefunden, wird die Sysinternals Suite mit WinGet installiert und der gesamte Installationsprozess automatisch abgewickelt.

## Syntax

```powershell
EnsurePSTools [[-PSExeName] <String>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Erzwingen Sie die Neuinstallation der Sysinternals-Tools |
| `-PSExeName` | String | — | — | 0 | `'handle.exe'` | Der ausführbare Name zur Überprüfung der Installation |

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
