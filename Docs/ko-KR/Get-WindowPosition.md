# Get-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `gwp

## Synopsis

> 창의 위치 및 상태 정보를 가져옵니다.

## Description

지정된 프로세스 또는 창 핸들에 대한 창 위치, 크기, 모니터 배치, 도킹 상태 및 포커스 상태에 대한 자세한 정보를 검색합니다.

## Syntax

```powershell
Get-WindowPosition [[-ProcessName] <String>] [<CommonParameters>]

Get-WindowPosition [-Process <Diagnostics.Process>] [<CommonParameters>]

Get-WindowPosition [-WindowHelper <GenXdev.Helpers.WindowObj[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | 위치를 가져올 창의 프로세스 이름 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | 창의 위치를 구하는 과정 *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | 창 직접 조작을 위한 Get-Window 헬퍼 객체 *(Parameter set: )* |

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
