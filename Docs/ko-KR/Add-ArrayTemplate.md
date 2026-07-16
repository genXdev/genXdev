# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-NewLine] [-EndDelimiter] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | 포맷할 객체의 모음 |
| `-Template` | String | ✅ | — | 1 | — | {PropertyName} 또는 {PropertyName:format} 자리 표시자가 있는 템플릿 문자열 |
| `-Delimiter` | String | — | — | 2 | `"`n"` | 서식이 지정된 항목 사이에 삽입할 구분자 문자열 |
| `-Indentation` | Int32 | — | — | 3 | `0` | 적용할 들여쓰기 수준(수준당 공백 4칸) |
| `-NewLine` | SwitchParameter | — | — | 4 | `$false` | 마지막 항목 뒤에 후행 구분 기호를 추가합니다. |
| `-EndDelimiter` | SwitchParameter | — | — | 5 | `$false` | 배열이 비어 있지 않을 때 끝에 구분자를 추가하세요 |

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
