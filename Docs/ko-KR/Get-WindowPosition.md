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
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | 위치를 가져올 창의 프로세스 이름 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | 창의 위치를 구하는 과정 *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | 창 직접 조작을 위한 Get-Window 헬퍼 객체 *(Parameter set: )* |

## Related Links

- [Get-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
