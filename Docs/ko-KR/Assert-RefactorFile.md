# Assert-RefactorFile

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-RefactorFile -Path <String> [[-RefactorSettings] <GenXdev.Helpers.RefactorSettings>] [-AllowLongRunningTests] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | 개선할 소스 파일의 경로 |
| `-RefactorSettings` | GenXdev.Helpers.RefactorSettings | — | — | 1 | `[GenXdev.Helpers.RefactorSettings]::new()` | 리팩터 정의에는 설정과 프롬프트 템플릿이 포함되어 있습니다. |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | The `-AllowLongRunningTests` parameter. |

## Related Links

- [Assert-RefactorFile on GitHub](https://github.com/genXdev/genXdev)
