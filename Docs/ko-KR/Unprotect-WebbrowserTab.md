# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl

## Synopsis

> 선택된 웹 브라우저 탭을 제어하여 대화형 조작을 수행합니다.

## Description

이 함수는 Select-WebbrowserTab을 사용하여 이전에 선택한 브라우저 탭을 대화형으로 제어할 수 있게 해줍니다. Microsoft Playwright Page 개체의 속성과 메서드에 직접 액세스하여 브라우저 자동화 상호 작용을 가능하게 합니다.

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | 새 탭을 선택하는 대신 현재 탭 사용 *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | 디버깅 서버가 감지되지 않으면 브라우저를 다시 시작하세요 *(Parameter set: )* |

## Examples

### Unprotect-WebbrowserTab -UseCurrent

```powershell
Unprotect-WebbrowserTab -UseCurrent
```

### wbctrl -Force

```powershell
wbctrl -Force
```

## Related Links

- [Unprotect-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
