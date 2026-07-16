# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | Автоматически установить доступные обновления Windows |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | Автоматически перезагружать, если для обновления требуется перезагрузка |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0"` | Пользовательские критерии поиска обновлений Windows |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | Включить драйверы в поиск обновлений |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | Группировка и цветовой вывод по категории обновления |
| `-NoBanner` | SwitchParameter | — | — | Named | — | Отключить вывод баннера/статуса |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | Пропустить проверку/отчет о необходимости перезагрузки |

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
