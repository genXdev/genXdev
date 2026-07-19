# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> 주어진 파일 참조를 전체 경로명으로 확장합니다.

## Description

주어진 파일 참조를 사용자의 현재 디렉토리를 기준으로 전체 경로명으로 확장합니다. 선택적으로 디렉토리나 파일이 존재하는지 확인할 수 있습니다.

## Syntax

```powershell
Expand-Path -FilePath <String> [-CreateDirectory] [-CreateFile] [-DeleteExistingFile] [-DirectoryMustExist] [-FileMustExist] [-ForceDrive <Char>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 확장할 경로 |
| `-CreateDirectory` | SwitchParameter | — | — | Named | — | 디렉토리가 존재하지 않으면 생성합니다 |
| `-CreateFile` | SwitchParameter | — | — | Named | — | 파일이 존재하지 않으면 빈 파일을 생성합니다. |
| `-DeleteExistingFile` | SwitchParameter | — | — | Named | — | 파일이 이미 존재할 경우 삭제합니다 |
| `-ForceDrive` | Char | — | — | Named | `'*'` | 특정 드라이브 사용을 강제합니다 |
| `-FileMustExist` | SwitchParameter | — | — | Named | — | 파일이 존재하지 않으면 오류가 발생합니다. |
| `-DirectoryMustExist` | SwitchParameter | — | — | Named | — | 디렉토리가 존재하지 않으면 오류가 발생합니다 |

## Examples

### Expand-Path -FilePath ".\myfile.txt" -CreateFile

```powershell
Expand-Path -FilePath ".\myfile.txt" -CreateFile
```

### ep ~\documents\test.txt -CreateFile

```powershell
ep ~\documents\test.txt -CreateFile
```

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)
