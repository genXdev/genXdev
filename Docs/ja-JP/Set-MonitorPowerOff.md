# Set-MonitorPowerOff

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `poweroff

## Synopsis

> 接続されているすべてのモニターの電源を切ります。

## Description

Windows API 呼び出しを使用して、接続されているすべてのモニターに電源オフ信号を送信します。これは、モニターの物理的な電源ボタンを押すのと同じです。モニターは省電力モードに入りますが、マウスを動かすかキーを押すことで復帰できます。

## Syntax

```powershell
Set-MonitorPowerOff [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOff
```

接続されているすべてのモニターの電源を切ります。

### Example 2

```powershell
poweroff
```

エイリアスを使用して、接続されているすべてのモニターの電源をオフにします。

## Related Links

- [Set-MonitorPowerOff on GitHub](https://github.com/genXdev/genXdev)
