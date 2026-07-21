# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 모든 유효한 URI에 대해 문자열을 구문 분석합니다.

## Description

* 입력 텍스트에서 모든 유효한 URI를 추출하며, http:, https:, ftp:, magnet:, about: 등 표준 및 사용자 지정 URI 체계를 지원합니다.
* 발견된 각 유효한 URI에 대해 Uri 개체를 반환합니다.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | URI가 포함될 수 있는 텍스트 입력 |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

제공된 텍스트 문자열에서 URI를 구문 분석하고 Uri 개체를 반환합니다.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

텍스트 문자열을 cmdlet에 파이프하여 URI를 구문 분석합니다.

## Parameter Details

### `-Text <String[]>`

> URI가 포함될 수 있는 텍스트 입력

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-AllPossibleQueries.md)
