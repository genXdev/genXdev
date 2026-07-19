# Invoke-WebbrowserTabPollingScript

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> 이전에 선택한 웹브라우저 탭에서 백그라운드 폴링 스크립트를 실행합니다.

## Description

브라우저 탭에서 JavaScript를 지속적으로 실행하고 선택적 콜백을 통해 결과를 처리합니다. 스크립트는 차단을 방지하기 위해 별도의 스레드에서 실행됩니다.

## Syntax

```powershell
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 실행할 JavaScript 코드, URL 또는 파일 경로 |
| `-InitialUrl` | String | — | — | 1 | — | 폴링이 시작되기 전에 이동할 URL |
| `-Callback` | ScriptBlock | — | — | 2 | — | 투표 결과를 처리하는 콜백 스크립트 블록 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저 사용 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저를 사용하세요 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 브라우저에 따라 Microsoft Edge 또는 Google Chrome을 사용하세요. |
| `-Firefox` | SwitchParameter | — | — | Named | — | 파이어폭스 브라우저를 사용하세요 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-managed WebKit 브라우저 사용 |

## Examples

### Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `     -InitialUrl "https://example.com" `     -Callback { Write-Host "Polled" }

```powershell
Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `
    -InitialUrl "https://example.com" `
    -Callback { Write-Host "Polled" }
```

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
