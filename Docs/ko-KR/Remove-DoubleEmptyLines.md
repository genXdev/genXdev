# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> 코드 문자열에서 연속된 빈 줄(두 개 이상)을 제거하고, 선택적으로 출력 형식을 재정렬합니다.

## Description

연속된 빈 줄을 하나의 빈 줄로 축소하여 소스 코드나 텍스트를 정리합니다. 이렇게 하면 가독성이 향상되고 일반적인 코드 서식 규칙을 따릅니다. -Reformat 스위치를 지정하면 코드 구조를 정규화하기 위해 추가 서식 규칙이 적용됩니다.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | Two consecutive blank lines have been removed. |
| `-Reformat` | SwitchParameter | — | — | Named | — | 이중 빈 줄 제거를 넘어 추가 서식 규칙 적용 |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

함수는 파이프를 통해 소스 코드를 전달하여 연속된 빈 줄을 제거합니다.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

빈 줄이 두 번 이상 연속으로 나타나는 것을 제거하고 추가 서식을 적용합니다.

## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines on GitHub](https://github.com/genXdev/genXdev)
