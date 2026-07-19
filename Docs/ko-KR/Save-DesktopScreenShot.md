# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 지정된 모니터의 스크린샷을 캡처하여 지정된 경로에 저장합니다.

## Description

* 지정된 모니터의 데스크톱 스크린샷을 캡처하여 이미지 파일로 저장합니다.
* 여러 모니터를 지원하며, 고해상도 디스플레이의 올바른 화면 경계와 스케일링 계수를 자동으로 감지합니다.

## Syntax

```powershell
Save-DesktopScreenShot [-Monitor] <int> [-OutputPath] <string> [-Quality <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | 캡처할 모니터 인덱스 (0=주 모니터, 1+=특정 모니터, -1=모든 모니터) |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | 스크린샷이 저장될 전체 경로 |
| `-Quality` | Int32 | — | — | Named | `0` | JPEG 품질 수준(1-100), JPEG 형식에만 적용됩니다. |

## Examples

### Example 1

```powershell
Save-DesktopScreenShot -Monitor 0 -OutputPath "C:\Screenshots\primary.png"
```

주 모니터의 스크린샷을 캡처하여 PNG로 저장합니다.

### Example 2

```powershell
Save-DesktopScreenShot -Monitor 1 -OutputPath "C:\Screenshots\monitor2.jpg" -Quality 95
```

고품질 JPEG로 두 번째 모니터의 스크린샷을 캡처합니다.

### Example 3

```powershell
Save-DesktopScreenShot -Monitor -1 -OutputPath "C:\Screenshots\all_monitors.png"
```

모든 모니터를 캡처하여 단일 스크린샷 이미지로 결합합니다.

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
