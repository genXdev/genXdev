# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 원자적(atomic)으로 파일에 텍스트를 작성하여 손상을 방지합니다.

## Description

* 원자적 쓰기: 임시 파일 + 이름 변경 전략을 사용하여 프로세스가 중단되더라도 대상 파일이 절대 손상되지 않도록 합니다.
* 재시도 로직: 최대 MaxRetries회까지 시도하며, 각 시도 사이에 RetryDelayMs 밀리초의 지연이 있습니다.
* 인코딩 지원: System.Text.Encoding 매개변수를 받아 출력 인코딩을 제어합니다. 기본값은 UTF-8입니다.
* 디바운스 지원: DebounceMs > 0인 경우 동일 파일에 대한 연속적인 쓰기를 병합합니다. 파일이 DebounceMs 밀리초 동안 변경되지 않은 경우 마지막 페이로드만 기록됩니다.
* 디렉터리 생성: 부모 디렉터리가 존재하지 않으면 자동으로 생성합니다.

## Syntax

```powershell
Write-TextFileAtomic [-FilePath] <string> [[-Data] <string>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-Encoding <Encoding>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 쓸 파일의 경로. |
| `-Data` | String | — | — | 1 | — | 파일에 쓸 텍스트 내용입니다. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | 원자적 쓰기 작업의 최대 재시도 횟수입니다. 기본값은 4입니다. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 재시도 시도 사이의 지연 시간(밀리초)입니다. 기본값은 200입니다. |
| `-Encoding` | Text.Encoding | — | — | Named | — | 파일을 작성할 때 사용할 텍스트 인코딩입니다. 기본값은 UTF-8입니다. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 0보다 크면 디바운스하여 이 파일에 씁니다. 기본값은 0(비활성화)입니다. |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

Writes a string to config.txt using UTF-8 encoding atomically.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

빠르게 50줄의 파이프가 흘러갑니다. 2초간의 정적 시간 이후 최종 줄만 유지됩니다.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

ASCII 인코딩을 사용하여 data.csv에 문자열을 원자적으로 기록합니다.

### Example 4

```powershell
# Debounce with custom retry: coalesce UI state saves
$watcher = Start-ThreadJob -ScriptBlock {
    param($path)
    while ($true) {
        Write-TextFileAtomic -FilePath $path `
            -Data (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') `
            -DebounceMs 1000 -MaxRetries 3
        Start-Sleep -Milliseconds 100
    }
} -ArgumentList "timestamp.txt"
```

A background job writes timestamps every 100ms but debounce coalesces them — only one write per second actually hits disk.

## Related Links

- [Write-TextFileAtomic on GitHub](https://github.com/genXdev/genXdev)
