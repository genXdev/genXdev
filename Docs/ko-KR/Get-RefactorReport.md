# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> 리팩토링 작업과 그 상태에 대한 상세 보고서를 생성합니다.

## Description

리팩토링 작업의 진행 상황을 분석하고 보고합니다. 작업의 현재 상태, 완료 상태 및 영향을 받는 함수를 검토합니다. 출력은 구조화된 해시테이블 형식 또는 사람이 읽을 수 있는 정렬된 텍스트 열로 제공됩니다. 보고서에는 리팩토링 이름, 프롬프트 키, 우선순위, 상태, 함수 개수 및 완료율이 포함됩니다.

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 리팩터 이름, 와일드카드 허용 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 선호도 데이터베이스 파일의 경로를 지정합니다. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 설정된 경우 리팩터 데이터에 세션 캐시만 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 설정된 경우, 실행 전 세션 캐시를 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 설정된 경우 세션 캐시 로드를 건너뜁니다. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Output report in text format instead of Hashtable |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

"DatabaseRefactor"와 일치하는 리팩터에 대한 텍스트 보고서를 생성합니다.

### Example 2

```powershell
refactorreport "*"
```

모든 리팩터에 대해 별칭을 사용한 해시테이블 보고서를 생성합니다.

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
