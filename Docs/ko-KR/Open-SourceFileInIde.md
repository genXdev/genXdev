# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-SourceFileInIde -Path <String> [[-LineNo] <Int32>] [[-KeysToSend] <String[]>] [-Code] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 열려는 원본 파일의 경로 |
| `-LineNo` | Int32 | — | — | 1 | `0` | 이동할 줄 번호 |
| `-KeysToSend` | String[] | — | — | 2 | `@()` | 애플리케이션으로 보낼 키보드 입력 배열 |
| `-Code` | SwitchParameter | — | — | Named | — | 파일을 열 IDE |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Open in Visual Studio |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 대상 창에 키보드 포커스 유지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Enter 대신 Shift+Enter를 사용하세요 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 다른 입력 문자열 사이의 지연 시간(밀리초) |

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
