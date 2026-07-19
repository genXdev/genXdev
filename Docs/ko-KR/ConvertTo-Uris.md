# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 유효한 URI를 찾기 위해 문자열을 구문 분석합니다.

## Description

* 입력 텍스트에서 모든 유효한 URI를 추출하며, http:, https:, ftp:, magnet:, about: 등의 표준 및 사용자 정의 URI 스킴을 지원합니다.
* 발견된 각 유효한 URI에 대해 Uri 객체를 반환합니다.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <string[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | 텍스트 입력에는 URI가 포함될 수 있습니다. |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

제공된 텍스트 문자열에서 URI를 파싱하여 Uri 객체를 반환합니다.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

텍스트 문자열을 cmdlet으로 파이핑하여 URI를 구문 분석합니다.

## Related Links

- [ConvertTo-Uris on GitHub](https://github.com/genXdev/genXdev)
