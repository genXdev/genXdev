# Get-AudioDeviceNames

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 마이크 또는 데스크탑 오디오 캡처에 사용 가능한 오디오 장치의 이름을 검색합니다.

## Description

오디오 장치를 열거합니다. 이 장치들은 AudioDevice 매개변수를 허용하는 다른 cmdlet에서 사용할 수 있습니다. 마이크 장치와 데스크탑 오디오 캡처 장치를 모두 지원합니다.

## Syntax

```powershell
Get-AudioDeviceNames [-UseDesktopAudioCapture] [-Passthru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | 데스크톱 오디오 캡처 장치를 마이크 장치 대신 나열할지 여부 |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | 세부 장치 객체를 반환하며, 이름뿐만 아니라 전체 정보를 제공합니다. |

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

사용 가능한 데스크탑 오디오 캡처 장치 이름 목록을 검색합니다.

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

마이크로폰 장치에 대한 상세 정보를 포함하는 객체를 검색합니다.

## Related Links

- [Get-AudioDeviceNames on GitHub](https://github.com/genXdev/genXdev)
