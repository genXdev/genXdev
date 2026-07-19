# Get-OpenedFileHandleProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 지정된 파일에 대해 열린 파일 핸들을 가진 프로세스를 검색합니다.

## Description

* Sysinternals handle.exe 도구를 사용하여 현재 하나 이상의 지정된 파일에 대한 핸들이 열려 있는 프로세스를 식별합니다.
* 삭제 또는 수정과 같은 파일 작업을 차단하는 프로세스를 확인하는 데 유용합니다.
* handle.exe는 Sysinternals 제품군에서 설치되어 시스템 경로에 있어야 합니다.

## Syntax

```powershell
Get-OpenedFileHandleProcesses [-FilePath] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 열린 핸들을 확인할 파일의 경로 |

## Examples

### Example 1

```powershell
Get-OpenedFileHandleProcesses -FilePath "C:\temp\example.txt"
```

지정된 파일에 대한 열린 핸들을 가진 모든 프로세스를 식별합니다.

### Example 2

```powershell
"file1.txt", "file2.txt" | Get-OpenedFileHandleProcesses
```

파이프라인 입력을 통해 여러 파일을 검사하여 열린 핸들이 있는 프로세스를 찾습니다.

## Related Links

- [Get-OpenedFileHandleProcesses on GitHub](https://github.com/genXdev/genXdev)
