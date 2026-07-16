# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 서식 지정할 스크립트 파일의 경로를 지정합니다. |
| `-Settings` | Object | — | — | Named | — | 서식 설정이 포함된 해시 테이블 또는 PowerShell 데이터 파일(.psd1)의 경로입니다. |
| `-Range` | Int32[] | — | — | Named | — | 서식이 적용되어야 하는 범위를 네 개의 정수 배열로 표현: 시작 줄 번호, 시작 열 번호, 끝 줄 번호, 끝 열 번호. |
| `-Recurse` | SwitchParameter | — | — | Named | — | 하위 디렉터리의 파일을 재귀적으로 처리합니다. |

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
