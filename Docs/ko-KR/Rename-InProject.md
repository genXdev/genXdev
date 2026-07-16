# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | 디렉터리, 파일 경로 또는 디렉터리+검색 마스크 |
| `-FindText` | String | ✅ | — | 1 | — | 찾을 텍스트 (대/소문자 구분은 CaseInsensitive 매개변수로 제어) |
| `-ReplacementText` | String | ✅ | — | 2 | — | 대체할 텍스트가 일치하는 항목 |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
