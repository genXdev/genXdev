# Copy-PDFsFromGoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Google 검색 결과에서 찾은 PDF 파일을 다운로드합니다.

## Description

이전에 선택한 웹 브라우저 탭에서 Google 검색을 수행하고 발견된 모든 PDF 파일을 현재 디렉토리로 다운로드합니다. 여러 검색어 및 언어 필터링을 지원합니다.

## Syntax

```powershell
Copy-PDFsFromGoogleQuery -Queries <String[]> [[-Max] <Int32>] [[-Language] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 구글에서 PDF 파일을 검색하기 위한 검색어 |
| `-Max` | Int32 | — | — | 1 | `200` | 검색할 최대 결과 수 (기본값: 200) |
| `-Language` | String | — | — | 2 | — | 검색 결과에 대한 선택적 언어 필터 |

## Examples

### Open-Webbrowser Select-WebbrowserTab $null = New-Item -ItemType Directory -Name pdfs Set-Location pdfs Copy-PDFsFromGoogleQuery "scientific paper co2" -Max 50 -Language "English"

```powershell
Open-Webbrowser
Select-WebbrowserTab
$null = New-Item -ItemType Directory -Name pdfs
Set-Location pdfs
Copy-PDFsFromGoogleQuery "scientific paper co2" -Max 50 -Language "English"
```

## Related Links

- [Copy-PDFsFromGoogleQuery on GitHub](https://github.com/genXdev/genXdev)
