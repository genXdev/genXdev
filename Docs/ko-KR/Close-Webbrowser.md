# Close-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wbc

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Close-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [<CommonParameters>]

Close-Webbrowser [-All] [-IncludeBackgroundProcesses] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | 0 | — | Microsoft Edge 브라우저 인스턴스를 닫습니다 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | 1 | — | Google Chrome 브라우저 인스턴스를 종료합니다 *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | 2 | — | 기본 Chromium 기반 브라우저를 닫습니다 *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | 3 | — | Firefox 브라우저 인스턴스를 닫습니다 *(Parameter set: )* |
| `-All` | SwitchParameter | — | — | 0 | — | 등록된 모든 현대 브라우저를 종료합니다 |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | 4 | — | 모든 인스턴스와 백그라운드 작업을 종료합니다 |

## Related Links

- [Close-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
