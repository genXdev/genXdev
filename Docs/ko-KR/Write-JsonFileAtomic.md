# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 파일 손상을 방지하기 위해 객체를 원자적으로 JSON 파일에 씁니다.

## Description

* 원자적 쓰기: 임시 파일 + 이름 변경 전략을 사용하여 프로세스가 중단되더라도 대상 파일이 손상된 상태로 남지 않도록 합니다.
* 재시도 로직: 최대 MaxRetries 횟수까지 RetryDelayMs 밀리초 간격으로 쓰기를 재시도합니다.
* 객체 지원: Hashtable뿐만 아니라 모든 객체를 허용합니다. System.Text.Json을 통해 직렬화하며, 기본적으로 직렬화할 수 없는 복잡한 .NET 유형의 경우 ConvertTo-Json으로 대체합니다.
* 디바운스 지원: DebounceMs > 0인 경우 동일한 파일에 대한 빠른 연속 쓰기가 병합됩니다. 파일이 DebounceMs 밀리초 동안 변경되지 않으면 마지막 페이로드만 기록됩니다.
* 디렉터리 생성: 존재하지 않는 경우 상위 디렉터리를 자동으로 생성합니다.

## Syntax

```powershell
Write-JsonFileAtomic [-FilePath] <string> [[-Data] <Object>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [-Depth <int>] [-Compress] [-AsArray] [-EnumsAsStrings] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 쓸 파일의 경로. |
| `-Data` | Object | — | — | 1 | — | JSON으로 직렬화하여 파일에 쓸 객체입니다. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | 원자적 쓰기 작업의 최대 재시도 횟수입니다. 기본값은 4입니다. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 재시도 시도 사이의 지연 시간(밀리초)입니다. 기본값은 200입니다. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 0보다 크면 디바운스하여 이 파일에 씁니다. 기본값은 0(비활성화)입니다. |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | JSON 직렬화의 최대 깊이입니다. 기본값은 30입니다. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | 도움이 되는 비서로 JSON을 출력하도록 설계되었습니다.
## 응답 형식

JSON 객체로만 응답하세요. |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | 도움이 되는 비서로 JSON을 출력하도록 설계되었습니다.
## 응답 형식

JSON 객체로만 응답하세요. |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | 모든 열거형을 문자열 표현으로 변환하는 대체 직렬화 옵션을 제공합니다. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Hashtable을 들여쓰기된 JSON 형식으로 config.json에 원자적으로 작성합니다.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

프로세스 객체를 원자적으로 압축 JSON으로 씁니다.

## Related Links

- [Write-JsonFileAtomic on GitHub](https://github.com/genXdev/genXdev)
