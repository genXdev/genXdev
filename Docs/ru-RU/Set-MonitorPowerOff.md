# Set-MonitorPowerOff

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `poweroff

## Synopsis

> Отключает питание всех подключенных мониторов.

## Description

Использует вызовы Windows API для отправки сигнала выключения всем подключенным мониторам. Это эквивалентно нажатию физической кнопки питания на мониторах. Мониторы перейдут в режим энергосбережения, но их можно пробудить, переместив мышь или нажав клавишу.

## Syntax

```powershell
Set-MonitorPowerOff [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOff
```

Выключает все подключенные мониторы.

### Example 2

```powershell
poweroff
```

Выключает все подключенные мониторы с помощью псевдонима.

## Related Links

- [Set-MonitorPowerOff on GitHub](https://github.com/genXdev/genXdev)
