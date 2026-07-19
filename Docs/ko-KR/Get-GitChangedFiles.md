# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged

## Synopsis

> Git 저장소에서 변경된 파일 목록을 가져옵니다.

## Description

이 함수는 현재 Git 저장소에서 변경된 파일 목록을 검색합니다. 수정, 추가 또는 삭제된 파일을 식별하는 데 사용할 수 있습니다. 기본적으로 .\ 접두사가 있는 상대 경로를 반환합니다. FileInfo 개체를 가져오려면 -PassThru를 사용하세요.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | 경로 문자열 대신 FileInfo 개체(Get-ChildItem과 같은)를 반환합니다. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

"\\.\\Modules\\GenXdev.AI\\3.26.2026\\README.md"와 같은 상대 경로를 반환합니다.

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

변경된 각 파일에 대한 FileInfo 개체를 반환합니다.

## Outputs


## Related Links

- [Get-GitChangedFiles on GitHub](https://github.com/genXdev/genXdev)
