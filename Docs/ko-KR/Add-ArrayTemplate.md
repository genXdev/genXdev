# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray

## Synopsis

> 속성 자리 표시자가 포함된 템플릿 문자열을 사용하여 객체 컬렉션의 형식을 지정하고 단일 형식 문자열을 생성합니다.

## Description

개체 컬렉션을 반복하고 각 항목에 {PropertyName} 또는 {PropertyName:format} 자리 표시자가 포함된 템플릿 문자열을 적용합니다. 서식이 지정된 결과는 구성 가능한 구분 기호로 연결됩니다. 들여쓰기, 후행 줄바꿈 및 후행 구분 기호를 지원하여 유연한 출력 형식을 제공합니다.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | 포맷할 객체의 모음 |
| `-Template` | String | ✅ | — | 1 | — | {PropertyName} 또는 {PropertyName:format} 자리 표시자가 있는 템플릿 문자열 |
| `-Delimiter` | String | — | — | 2 | `"`n"` | 서식이 지정된 항목 사이에 삽입할 구분자 문자열 |
| `-Indentation` | Int32 | — | — | 3 | `0` | 적용할 들여쓰기 수준(수준당 공백 4칸) |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | 마지막 항목 뒤에 후행 구분 기호를 추가합니다. |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | 배열이 비어 있지 않을 때 끝에 구분자를 추가하세요 |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

이름: 앨리스
나이: 30

이름: 밥
나이: 25

속성 자리 표시자가 있는 해시테이블 배열을 형식화합니다.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

들여쓰기와 사용자 정의 구분 기호를 사용하여 FormatArray 별칭을 사용합니다.

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
