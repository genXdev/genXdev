# Invoke-WinMerge

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 두 파일을 나란히 비교하여 WinMerge를 실행합니다.

## Description

WinMerge 애플리케이션을 실행하여 소스 파일과 대상 파일을 나란히 diff 보기로 비교합니다. 이 함수는 두 입력 파일의 존재 여부를 확인하고, WinMerge가 올바르게 설치되어 있는지 확인한 후 실행합니다. 선택적으로 WinMerge가 종료될 때까지 실행을 일시 중지하는 대기 기능을 제공합니다.

## Syntax

```powershell
Invoke-WinMerge -SourcecodeFilePath <String> -TargetcodeFilePath <String> [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SourcecodeFilePath` | String | ✅ | — | 0 | — | 비교할 소스 파일 경로 |
| `-TargetcodeFilePath` | String | ✅ | — | 1 | — | 비교할 대상 파일의 경로 |
| `-Wait` | SwitchParameter | — | — | Named | — | 계속하기 전에 WinMerge가 닫힐 때까지 기다리십시오. |

## Examples

### Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `                 -TargetcodeFilePath "C:\target\file2.txt" `                 -Wait

```powershell
Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `
                -TargetcodeFilePath "C:\target\file2.txt" `
                -Wait
```

### merge "C:\source\file1.txt" "C:\target\file2.txt"

```powershell
merge "C:\source\file1.txt" "C:\target\file2.txt"
```

## Related Links

- [Invoke-WinMerge on GitHub](https://github.com/genXdev/genXdev)
