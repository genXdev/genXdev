# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> 속성 자리 표시자가 포함된 템플릿 문자열을 사용하여 개체 컬렉션의 형식을 지정하고 단일 형식 문자열을 생성합니다.

## Description

개체 컬렉션을 반복하며 각 항목에 {PropertyName} 또는 {PropertyName:format} 자리 표시자가 포함된 템플릿 문자열을 적용합니다. 형식이 지정된 결과는 구성 가능한 구분 기호로 결합됩니다. 들여쓰기, 후행 줄 바꿈 및 후행 구분 기호를 지원하여 유연한 출력 서식을 제공합니다.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | 서식을 지정할 개체 컬렉션 |
| `-Template` | String | ✅ | — | 1 | — | {PropertyName} 또는 {PropertyName:format} 자리 표시자가 있는 템플릿 문자열 |
| `-Delimiter` | String | — | — | 2 | `"`n"` | 서식화된 항목 사이에 삽입할 구분 기호 문자열 |
| `-Indentation` | Int32 | — | — | 3 | `0` | 들여쓰기 수준의 개수 (수준당 공백 4개) |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | 마지막 항목 뒤에 후행 구분 기호를 추가합니다. |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | 배열이 비어 있지 않을 때 끝에 구분 기호 추가 |

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

속성 자리 표시자가 있는 해시 테이블 배열의 형식을 지정합니다.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

들여쓰기와 사용자 지정 구분 기호를 사용하여 FormatArray 별칭을 사용합니다.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> 서식을 지정할 개체 컬렉션

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Template <String>`

> {PropertyName} 또는 {PropertyName:format} 자리 표시자가 있는 템플릿 문자열

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Delimiter <String>`

> 서식화된 항목 사이에 삽입할 구분 기호 문자열

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `"`n"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Indentation <Int32>`

> 들여쓰기 수준의 개수 (수준당 공백 4개)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewLine`

> 마지막 항목 뒤에 후행 구분 기호를 추가합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EndDelimiter`

> 배열이 비어 있지 않을 때 끝에 구분 기호 추가

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-DoubleEmptyLines.md)
