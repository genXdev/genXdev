# Get-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `gwp

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WindowPosition [[-ProcessName] <String>] [<CommonParameters>]

Get-WindowPosition [-Process <Diagnostics.Process>] [<CommonParameters>]

Get-WindowPosition [-WindowHelper <GenXdev.Helpers.WindowObj[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | Имя процесса окна, для которого нужно получить позицию *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | Процесс окна для получения позиции для *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Вспомогательный объект Get-Window для прямого управления окнами *(Parameter set: )* |

## Related Links

- [Get-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
