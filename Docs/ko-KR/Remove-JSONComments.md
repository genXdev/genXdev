# Remove-JSONComments

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> JSON 콘텐츠에서 주석을 제거합니다.

## Description

* JSON 콘텐츠를 처리하고 단일 줄 및 여러 줄 주석을 제거하면서 JSON 구조를 유지합니다.
* 구문 분석 전에 문서 주석이 포함된 JSON 파일을 정리하는 데 유용합니다.
* 단일 줄 주석(//)과 여러 줄 주석(/* */)을 모두 지원합니다.

## Syntax

```powershell
Remove-JSONComments [-Json] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Json` | String | ✅ | — | 0 | — | JSON 콘텐츠를 문자열 배열로 처리 |

## Examples

### Example 1

```powershell
$jsonContent = @'
{
    // This is a comment
    "name": "test", /* inline comment */
    "value": 123
}
'@ -split "`n"
Remove-JSONComments -Json $jsonContent
```

변수에 저장된 JSON 콘텐츠에서 주석을 제거합니다.

### Example 2

```powershell
$jsonContent | Remove-JSONComments
```

파이프라인에서 JSON 콘텐츠를 처리합니다.

## Related Links

- [Remove-JSONComments on GitHub](https://github.com/genXdev/genXdev)
