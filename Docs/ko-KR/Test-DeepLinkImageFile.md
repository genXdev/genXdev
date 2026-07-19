# Test-DeepLinkImageFile

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 지정된 파일 경로가 지원되는 형식의 유효한 이미지 파일인지 테스트합니다.

## Description

이 함수는 지정된 경로에 파일이 존재하고 지원되는 이미지 파일 확장자를 가지고 있는지 검증합니다. PNG, JPG, JPEG, GIF, BMP, WebP, TIFF, TIF 파일을 포함한 일반적인 이미지 형식을 확인합니다. 함수는 잘못된 경로나 지원되지 않는 파일 형식에 대해 예외를 발생시킵니다.

## Syntax

```powershell
Test-DeepLinkImageFile -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | 테스트할 이미지 파일의 파일 경로 |

## Examples

### Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"

```powershell
Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"
```

### Test-DeepLinkImageFile "C:\Images\logo.png"

```powershell
Test-DeepLinkImageFile "C:\Images\logo.png"
```

## Related Links

- [Test-DeepLinkImageFile on GitHub](https://github.com/genXdev/genXdev)
