# Set-MonitorPowerOff

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `poweroff

## Synopsis

> Apaga la alimentación de todos los monitores conectados.

## Description

Utiliza llamadas a la API de Windows para enviar una señal de apagado a todos los monitores conectados. Esto es equivalente a presionar el botón físico de encendido en sus monitores. Los monitores entrarán en modo de ahorro de energía, pero se pueden activar moviendo el ratón o presionando una tecla.

## Syntax

```powershell
Set-MonitorPowerOff [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOff
```

Apaga todos los monitores conectados.

### Example 2

```powershell
poweroff
```

Apaga todos los monitores conectados usando el alias.

## Related Links

- [Set-MonitorPowerOff on GitHub](https://github.com/genXdev/genXdev)
