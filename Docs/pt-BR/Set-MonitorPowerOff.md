# Set-MonitorPowerOff

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `poweroff

## Synopsis

> Desliga a alimentação de todos os monitores conectados.

## Description

Usa chamadas da API do Windows para enviar um sinal de desligamento para todos os monitores conectados. Isso é equivalente a pressionar o botão físico de energia dos seus monitores. Os monitores entrarão no modo de economia de energia, mas podem ser ativados movendo o mouse ou pressionando uma tecla.

## Syntax

```powershell
Set-MonitorPowerOff [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOff
```

Desliga todos os monitores conectados.

### Example 2

```powershell
poweroff
```

Desliga todos os monitores conectados usando o alias.

## Related Links

- [Set-MonitorPowerOff on GitHub](https://github.com/genXdev/genXdev)
