# Get-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `gwp

## Synopsis

> Получает информацию о положении и состоянии окон.

## Description

Извлекает подробную информацию о позиционировании окна, его размере, размещении на мониторе, состоянии стыковки и статусе фокуса для указанных процессов или дескрипторов окон.

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

## Examples

### Get-WindowPosition -ProcessName notepad Gets position information for all notepad windows

```powershell
Get-WindowPosition -ProcessName notepad
Gets position information for all notepad windows
```

### Get-Process notepad | Get-WindowPosition Gets position information for notepad processes via pipeline

```powershell
Get-Process notepad | Get-WindowPosition
Gets position information for notepad processes via pipeline
```

### Get-Window -ProcessName notepad | Get-WindowPosition Gets position information using window helper objects

```powershell
Get-Window -ProcessName notepad | Get-WindowPosition
Gets position information using window helper objects
```

## Related Links

- [Get-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
