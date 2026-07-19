# Get-ImageGeolocation

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 이미지 파일에서 지리 위치 데이터를 추출합니다.

## Description

* 이미지 파일의 EXIF 메타데이터를 읽어 위도와 경도 좌표를 추출합니다.
* EXIF 데이터에 GPS 메타데이터가 포함된 이미지를 지원합니다.
* System.Drawing.Image 클래스를 사용하여 이미지를 로드하고 속성 항목에서 GPS 좌표를 파싱합니다.

## Syntax

```powershell
Get-ImageGeolocation [-ImagePath] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 분석할 이미지 파일의 경로 |

## Examples

### Example 1

```powershell
Get-ImageGeolocation -ImagePath "C:\Pictures\vacation.jpg"
```

휴가 사진에서 GPS 좌표를 추출합니다.

### Example 2

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageGeolocation
```

파이프라인을 사용하여 이미지 경로를 전달합니다.

## Related Links

- [Get-ImageGeolocation on GitHub](https://github.com/genXdev/genXdev)
