# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 리팩터 이름, 와일드카드 허용 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 선호도 데이터베이스 파일의 경로를 지정합니다. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 설정된 경우 리팩터 데이터에 세션 캐시만 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 설정된 경우, 실행 전 세션 캐시를 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 설정된 경우 세션 캐시 로드를 건너뜁니다. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Output report in text format instead of Hashtable |

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
