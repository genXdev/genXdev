# Close-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wbc

## Synopsis

> 선택적으로 하나 이상의 웹브라우저 인스턴스를 닫습니다.

## Description

웹 브라우저 인스턴스 종료에 대한 세밀한 제어 기능을 제공합니다. 특정 브라우저(Edge, Chrome, Firefox)를 대상으로 지정하거나 모든 브라우저를 종료할 수 있습니다. 주요 창과 백그라운드 프로세스 모두 종료를 지원합니다.

## Syntax

```powershell
Close-Webbrowser [-Chrome] [-Chromium] [-Edge] [-Firefox] [<CommonParameters>]

Close-Webbrowser [-All] [-Headless] [-IncludeBackgroundProcesses] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저 인스턴스를 닫습니다 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저 인스턴스를 종료합니다 *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 Chromium 기반 브라우저를 닫습니다 *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox 브라우저 인스턴스를 닫습니다 *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Playwright에서 관리하는 브라우저를 OS에 설치된 브라우저 대신 사용합니다 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright로 관리되는 WebKit 브라우저를 엽니다. -PlayWright를 암시합니다. |
| `-Headless` | SwitchParameter | — | — | Named | — | 보이는 창 없이 브라우저 실행 |
| `-All` | SwitchParameter | — | — | Named | — | 모든 등록된 최신 브라우저에서 열림 |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | Named | — | 모든 인스턴스와 백그라운드 작업을 종료합니다 |

## Examples

### Close-Webbrowser -Chrome -Firefox -IncludeBackgroundProcesses Closes all Chrome and Firefox instances including background processes

```powershell
Close-Webbrowser -Chrome -Firefox -IncludeBackgroundProcesses
Closes all Chrome and Firefox instances including background processes
```

### wbc -a -bg Closes all browser instances including background processes using aliases

```powershell
wbc -a -bg
Closes all browser instances including background processes using aliases
```

## Related Links

- [Close-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
