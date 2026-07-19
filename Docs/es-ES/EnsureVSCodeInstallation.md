# EnsureVSCodeInstallation

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Instala y configura Visual Studio Code con las extensiones recomendadas.

## Description

Comprueba si Visual Studio Code está instalado y, si no lo está, lo instala usando WinGet.
Configura los ajustes de usuario, las combinaciones de teclas e instala las extensiones recomendadas desde
la configuración del área de trabajo. También configura PSGallery como un repositorio de confianza y
configura ajustes específicos de extensiones.

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
