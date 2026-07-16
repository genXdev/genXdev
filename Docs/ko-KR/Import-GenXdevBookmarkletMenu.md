# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Import-GenXdevBookmarkletMenu [[-SnippetsPath] <String>] [[-TargetFolder] <String>] [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SnippetsPath` | String | — | — | 0 | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` | 북마클릿 스니펫 파일이 포함된 디렉터리 경로 |
| `-TargetFolder` | String | — | — | 1 | `""` | 브라우저 북마크 구조의 대상 북마크 폴더 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저에 북마클릿 가져오기 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저에 북마클릿 가져오기 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mozilla Firefox 브라우저에 북마클릿 가져오기 |

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
