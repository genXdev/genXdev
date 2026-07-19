# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 브라우저 북마크를 JSON 파일로 내보냅니다.

## Description

Export-BrowserBookmarks cmdlet은 지정된 웹 브라우저(Microsoft Edge, Google Chrome 또는 Mozilla Firefox)의 책갈피를 JSON 파일로 내보냅니다. 한 번에 하나의 브라우저 유형만 지정할 수 있습니다. 책갈피는 구조와 메타데이터를 완전히 보존한 상태로 내보내집니다.

## Syntax

```powershell
Export-BrowserBookmarks -OutputFile <String> [-Chrome] [-Edge] [<CommonParameters>]

Export-BrowserBookmarks [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OutputFile` | String | ✅ | — | 0 | — | 북마크가 저장될 JSON 파일의 경로 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome에서 북마크 내보내기 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge에서 책갈피 내보내기 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mozilla Firefox에서 북마크 내보내기 *(Parameter set: )* |

## Examples

### Export-BrowserBookmarks -OutputFile "C:\MyBookmarks.json" -Edge

```powershell
Export-BrowserBookmarks -OutputFile "C:\MyBookmarks.json" -Edge
```

### Export-BrowserBookmarks "C:\MyBookmarks.json" -Chrome

```powershell
Export-BrowserBookmarks "C:\MyBookmarks.json" -Chrome
```

## Related Links

- [Export-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
