# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> 코드 문자열에서 연속된 빈 줄을 제거하고, 선택적으로 출력 형식을 다시 지정합니다.

## Description

연속된 빈 줄을 하나의 빈 줄로 축소하여 소스 코드나 텍스트를 정리합니다. 이렇게 하면 가독성이 향상되고 일반적인 코드 서식 규칙을 따릅니다. -Reformat 스위치를 지정하면 추가 서식 규칙이 적용되어 코드 구조를 표준화합니다.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | 이중 빈 줄 제거를 위해 처리할 소스 코드 또는 텍스트 문자열 |
| `-Reformat` | SwitchParameter | — | — | Named | — | 추가 서식 규칙을 적용하여 이중 빈 줄 제거 이상의 작업을 수행합니다. |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

함수를 통해 소스 코드를 파이프하여 연속된 빈 줄을 제거합니다.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

빈 줄이 두 번 이상 연속으로 나타나는 것을 제거하고 추가 서식을 적용합니다.

## Parameter Details

### `-code <String>`

> 이중 빈 줄 제거를 위해 처리할 소스 코드 또는 텍스트 문자열

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> 추가 서식 규칙을 적용하여 이중 빈 줄 제거 이상의 작업을 수행합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-ArrayTemplate.md)
