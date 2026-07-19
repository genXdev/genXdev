# EnsureVSCodeInstallation

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Installeert en configureert Visual Studio Code met aanbevolen extensies.

## Description

Controleert of Visual Studio Code is geïnstalleerd en installeert het zo niet met WinGet. Configureert gebruikersinstellingen, toetsenbordcombinaties en installeert aanbevolen extensies uit de werkruimteconfiguratie. Stelt ook PSGallery in als een vertrouwde opslagplaats en configureert specifieke extensie-instellingen.

## Syntax

```powershell
EnsureVSCodeInstallation [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureVSCodeInstallation

```powershell
EnsureVSCodeInstallation
```

## Related Links

- [EnsureVSCodeInstallation on GitHub](https://github.com/genXdev/genXdev)
