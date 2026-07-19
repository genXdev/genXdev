# Invoke-ImageMetadataUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepropdetection

## Synopsis

> 디렉토리 내 이미지의 EXIF 메타데이터를 업데이트합니다.

## Description

이 함수는 지정된 디렉토리에 있는 이미지의 EXIF 메타데이터를 추출하고 업데이트합니다. 각 이미지를 처리하여 카메라 세부 정보, GPS 좌표, 노출 설정 및 기타 기술 정보를 포함한 상세한 EXIF 메타데이터를 추출합니다. 메타데이터는 :EXIF.json이라는 대체 NTFS 스트림에 저장되어 인덱싱 및 검색 기능에서 나중에 사용됩니다.

## Syntax

```powershell
Invoke-ImageMetadataUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Force] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | 이미지 메타데이터 업데이트를 처리할 디렉터리 경로 배열 |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 이전에 실패한 이미지 메타데이터 업데이트를 재시도합니다 |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | 아직 메타데이터 파일이 없는 이미지만 처리하세요 |
| `-Recurse` | SwitchParameter | — | — | Named | — | 지정된 경우 하위 디렉토리의 이미지를 재귀적으로 처리합니다. |
| `-Force` | SwitchParameter | — | — | Named | — | 메타데이터가 이미 존재하더라도 강제로 다시 빌드합니다 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 구조화된 객체를 반환하도록 설정, 콘솔로 출력하지 않음 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정(예: 언어, 이미지 컬렉션 등)을 세션에 저장된 대체 설정으로 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AI 환경 설정(언어, 이미지 컬렉션 등)에 세션에 저장된 대체 설정을 사용하지 마십시오. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |

## Examples

### Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force

```powershell
Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force
```

### Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv

```powershell
Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv
```

## Related Links

- [Invoke-ImageMetadataUpdate on GitHub](https://github.com/genXdev/genXdev)
