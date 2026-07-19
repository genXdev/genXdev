# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> 사용자 경험 향상을 위해 하이퍼링크된 표시 이름으로 파일 정보를 출력합니다.

## Description

이 함수는 파일 입력 객체들을 처리하여 사용자 친화적인 형식으로 출력하며, 콘솔에 표시될 때 파일 이름에 하이퍼링크가 포함됩니다. 문자열, FileInfo 객체 및 기타 객체 유형을 포함한 다양한 입력 유형을 처리합니다. 이 함수는 출력이 리디렉션되거나 파이프라인에서 캡처되는지 자동으로 감지하고 그에 따라 동작을 조정합니다.

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | 호출 함수로부터의 호출 정보 |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | 처리할 입력 객체로, 파일 경로 또는 객체가 될 수 있습니다 |
| `-Prefix` | String | — | — | Named | — | 출력 디스플레이 앞에 추가할 선택적 문자열 접두사로, 추가 컨텍스트를 제공합니다. |
| `-RelativeBasePath` | String | — | — | Named | — | 출력에서 상대 파일 경로를 생성하기 위한 기본 경로 |
| `-FullPaths` | SwitchParameter | — | — | Named | — | 출력이 상대 경로 대신 절대 경로를 사용하도록 강제합니다. |

## Examples

### WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"

```powershell
WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"
```

### Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_

```powershell
Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_
```

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
