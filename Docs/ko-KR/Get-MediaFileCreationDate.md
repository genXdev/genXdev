# Get-MediaFileCreationDate

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> 미디어 및 기타 파일의 최선의 생성 날짜를 추출합니다.

## Description

지정된 파일의 정확한 생성 또는 캡처 날짜를 확인하기 위해 여러 전략을 시도합니다. 전략에는 이미지 EXIF 메타데이터 읽기, 파일 이름에서 날짜/시간 정보 구문 분석, 다른 신뢰할 수 있는 정보가 없을 때 파일의 마지막 쓰기 시간으로 대체하는 것이 포함됩니다. 함수는 항상 [DateTime]을 반환하며, 날짜를 확인할 수 없으면 [DateTime]::MinValue를 반환합니다.

## Syntax

```powershell
Get-MediaFileCreationDate -FilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The `-FilePath` parameter. |

## Examples

### Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'

```powershell
Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'
```

## Related Links

- [Get-MediaFileCreationDate on GitHub](https://github.com/genXdev/genXdev)
