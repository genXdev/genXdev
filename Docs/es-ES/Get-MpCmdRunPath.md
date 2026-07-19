# Get-MpCmdRunPath

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtiene la ruta al ejecutable MpCmdRun.exe de Windows Defender.

## Description

* Localiza y devuelve la ruta completa a la utilidad de línea de comandos de Windows Defender (MpCmdRun.exe).
* El cmdlet verifica la ubicación de instalación estándar en Program Files y proporciona un manejo de errores adecuado si no se encuentra el archivo.

## Syntax

```powershell
Get-MpCmdRunPath [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$defenderPath = Get-MpCmdRunPath
```

Obtiene la ruta completa a la herramienta de línea de comandos de Windows Defender.

## Related Links

- [Get-MpCmdRunPath on GitHub](https://github.com/genXdev/genXdev)
