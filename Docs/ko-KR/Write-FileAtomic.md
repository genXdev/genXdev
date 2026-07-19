# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 데이터 손상을 방지하기 위해 원자적으로 파일에 바이트를 씁니다.

## Description

* 원자적 쓰기: 임시 파일 + 이름 변경 전략을 사용하여 프로세스가 중단되더라도 대상 파일이 손상된 상태로 남지 않도록 보장합니다.
* 재시도 로직: 쓰기를 MaxRetries 횟수까지 재시도하며, 시도 사이에 RetryDelayMs 밀리초의 지연이 있습니다.
* 디바운스 지원: DebounceMs > 0인 경우, 동일한 파일에 대한 빠른 연속 쓰기가 병합되어 파일이 DebounceMs 밀리초 동안 접근되지 않으면 마지막 페이로드만 기록됩니다.
* 디렉터리 생성: 상위 디렉터리가 존재하지 않으면 자동으로 생성합니다.

## Syntax

```powershell
Write-FileAtomic [-FilePath] <string> [[-Data] <byte[]>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 쓸 파일의 경로. |
| `-Data` | Byte[] | — | — | 1 | — | 파일에 쓸 바이트 배열입니다. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | 원자적 쓰기 작업의 최대 재시도 횟수입니다. 기본값은 4입니다. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 재시도 시도 사이의 지연 시간(밀리초)입니다. 기본값은 200입니다. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 0보다 크면 디바운스하여 이 파일에 씁니다. 기본값은 0(비활성화)입니다. |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

기본 재시도 설정으로 data.bin에 바이트 배열을 원자적으로 씁니다.

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

빠르게 100번 쓰지만 마지막 페이로드(100)만 5초간의 정적 기간 후에 디스크에 저장됩니다.

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

사용자 정의 재시도: 각각 500ms 간격으로 최대 10회 시도.

## Related Links

- [Write-FileAtomic on GitHub](https://github.com/genXdev/genXdev)
