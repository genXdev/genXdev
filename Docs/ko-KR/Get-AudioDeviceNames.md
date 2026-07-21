# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 마이크 또는 데스크탑 오디오 캡처에 사용 가능한 오디오 장치의 이름을 검색합니다.

## Description

AudioDevice 매개변수를 허용하는 다른 cmdlet과 함께 사용할 수 있는 오디오 장치를 열거합니다. 마이크 장치와 데스크톱 오디오 캡처 장치를 모두 지원합니다.

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | 데스크톱 오디오 캡처 장치를 나열할지, 마이크 장치를 나열할지 선택합니다. |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | 이름 대신 상세한 디바이스 개체를 반환합니다. |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

사용 가능한 마이크 장치 이름 목록을 검색합니다.

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

사용 가능한 데스크톱 오디오 캡처 장치 이름 목록을 검색합니다.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

마이크 장치에 대한 정보를 포함하는 상세 개체를 검색합니다.

## Parameter Details

### `-UseDesktopAudioCapture`

> 데스크톱 오디오 캡처 장치를 나열할지, 마이크 장치를 나열할지 선택합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Passthru`

> 이름 대신 상세한 디바이스 개체를 반환합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-CpuAvx.md)
