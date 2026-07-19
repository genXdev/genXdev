# VSCode

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Abre uno o más archivos en Visual Studio Code.

## Description

Esta función toma rutas de archivo y las abre en Visual Studio Code. Expande las rutas y valida la existencia del archivo antes de intentar abrirlos. La función admite tanto rutas de archivo directas como entrada de tubería (pipeline), lo que la hace ideal para abrir rápidamente múltiples archivos desde búsquedas en la terminal.

## Syntax

```powershell
VSCode -FilePath <String[]> [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue) | 0 | — | La ruta al archivo que se debe abrir en VSCode |
| `-Copilot` | SwitchParameter | — | — | Named | — | Añadir sourcefile a la sesión de edición de Copilot |

## Examples

### VSCode -FilePath "C:\path\to\file.txt" -Copilot

```powershell
VSCode -FilePath "C:\path\to\file.txt" -Copilot
```

### Get-ChildItem *.js -Recurse | VSCode

```powershell
Get-ChildItem *.js -Recurse | VSCode
```

## Related Links

- [VSCode on GitHub](https://github.com/genXdev/genXdev)
