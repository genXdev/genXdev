# Get-BCP47LanguageDictionary

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 설치된 모든 BCP 47 언어 태그와 해당 표시 이름을 반환합니다.

## Description

* BCP 47 문화 코드(예: en-US, nl-NL, de-DE)를 코드 자체 및 영어 표시 이름에 매핑하는 사전을 빌드합니다.
* .NET CultureInfo API를 사용하여 시스템에 설치된 모든 특정 문화를 열거하며, 이는 PowerShell 도움말 언어 폴더 이름 및 번역 대상 언어에 대한 권위 있는 출처입니다.
* 사전 키에는 다음이 포함됩니다:
  - 전체 BCP 47 태그(예: "en-US", "nl-NL", "zh-Hans-CN")
  - 영어 표시 이름(예: "English (United States)", "Dutch (Netherlands)")
  - 가장 일반적인 지역에 매핑된 단순 언어 이름(예: "English" -> "en-US", "Dutch" -> "nl-NL")

## Syntax

```powershell
Get-BCP47LanguageDictionary [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-BCP47LanguageDictionary
```

전체 BCP 47 언어 사전을 가져오세요.

### Example 2

```powershell
$dict = Get-BCP47LanguageDictionary
$dict["nl-NL"]  # returns "nl-NL"
$dict["Dutch"]  # returns "nl-NL"
```

도움말 생성을 위해 언어 코드를 검증하고 확인합니다.

## Related Links

- [Get-BCP47LanguageDictionary on GitHub](https://github.com/genXdev/genXdev)
