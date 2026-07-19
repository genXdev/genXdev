# Get-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `gwp

## Synopsis

> Ruft die Position und den Zustand von Fenstern ab.

## Description

Ruft detaillierte Informationen über Fensterpositionierung, -größe, Monitorplatzierung, Andockzustand und Fokusstatus für angegebene Prozesse oder Fensterhandle ab.

## Syntax

```powershell
Get-WindowPosition [[-ProcessName] <String>] [<CommonParameters>]

Get-WindowPosition [-Process <Diagnostics.Process>] [<CommonParameters>]

Get-WindowPosition [-WindowHelper <GenXdev.Helpers.WindowObj[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | Der Prozessname des Fensters, für das die Position ermittelt werden soll *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | Der Vorgang, bei dem das Fenster die Position für *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Get-Window-Hilfsobjekt für direkte Fenstermanipulation *(Parameter set: )* |

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
