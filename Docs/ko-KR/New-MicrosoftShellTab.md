# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x

## Synopsis

> PowerShell을 실행하는 새 Windows Terminal 탭을 만듭니다.

## Description

Ctrl+Shift+T 키보드 단축키를 시뮬레이션하여 새 Windows Terminal 탭을 엽니다.
이 함수는 PowerShell 창을 전면으로 가져오고, 키 입력 조합을 전송하며, 지연 후 현재 탭을 선택적으로 닫습니다.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | 새 탭을 만든 후 현재 탭 유지 |

## Examples

### New-MicrosoftShellTab -DontCloseThisTab Creates a new terminal tab while keeping the current tab open.

```powershell
New-MicrosoftShellTab -DontCloseThisTab
Creates a new terminal tab while keeping the current tab open.
```

### x Creates a new terminal tab and closes the current one after 3 seconds.

```powershell
x
Creates a new terminal tab and closes the current one after 3 seconds.
```

## Related Links

- [New-MicrosoftShellTab on GitHub](https://github.com/genXdev/genXdev)
