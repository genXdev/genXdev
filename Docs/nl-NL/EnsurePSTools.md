# EnsurePSTools

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Zorgt ervoor dat Sysinternals-hulpprogramma's (PSTools) geïnstalleerd en beschikbaar zijn.

## Description

Controleert of Sysinternals-programma's zoals handle.exe op het systeem zijn geïnstalleerd en correct zijn geconfigureerd. Als ze niet worden gevonden, installeert het de Sysinternals Suite met WinGet en verwerkt het het volledige installatieproces automatisch.

## Syntax

```powershell
EnsurePSTools [[-PSExeName] <String>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Forceer herinstallatie van Sysinternals tools |
| `-PSExeName` | String | — | — | 0 | `'handle.exe'` | De uitvoerbare naam om de installatie te verifiëren |

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
