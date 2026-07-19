# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode

## Synopsis

> 선호하는 IDE(Visual Studio Code 또는 Visual Studio)에서 소스 파일을 엽니다.

## Description

이 함수는 지정된 소스 파일을 Visual Studio Code 또는 Visual Studio에서 엽니다. 특정 줄 번호로 직접 이동할 수 있으며, 파일을 연 후 선택적으로 IDE에 키보드 입력을 보낼 수 있습니다. 이 함수는 현재 호스트 프로세스, 실행 중인 애플리케이션 또는 사용자 선택을 기반으로 사용할 IDE를 결정하려고 시도합니다.

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

## Examples

### Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code

```powershell
Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code
```

### editcode "C:\Projects\MyScript.ps1" 25

```powershell
editcode "C:\Projects\MyScript.ps1" 25
```

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
