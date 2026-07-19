# Set-MonitorPowerOn

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `wakemonitor, `monitoroff

## Synopsis

> モニターの電源をオンにします。

## Description

GenXdev.Helpers.WindowObjを通じてWindows APIを使用し、モニターをスリープ/電源オフ状態から復帰させます。これは、モニターの電源が入っていることを確認する必要がある自動化スクリプトに役立ちます。

## Syntax

```powershell
Set-MonitorPowerOn [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOn
```

モニターの電源をオンにします。

### Example 2

```powershell
wake-monitor
```

エイリアスを使用してモニターの電源をオンにします。

## Related Links

- [Set-MonitorPowerOn on GitHub](https://github.com/genXdev/genXdev)
