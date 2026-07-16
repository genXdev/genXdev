# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
