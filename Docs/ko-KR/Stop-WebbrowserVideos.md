# Stop-WebbrowserVideos

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbsst, `ssst, `wbvideostop

## Synopsis

> 모든 활성 브라우저 세션에서 비디오 재생을 일시 중지합니다.

## Description

모든 활성 브라우저 세션을 반복하며 JavaScript 명령을 실행하여 재생 중인 비디오를 일시 중지합니다. 함수는 원래 세션 상태를 유지하고 오류를 정상적으로 처리합니다.

## Syntax

```powershell
Stop-WebbrowserVideos [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge에서 열기 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome에서 열기 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 브라우저에 따라 Microsoft Edge 또는 Google Chrome에서 열립니다. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox에서 열기 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright가 관리하는 WebKit 브라우저를 사용합니다 |

## Examples

### Stop-WebbrowserVideos

```powershell
Stop-WebbrowserVideos
```

### wbsst ##############################################################################

```powershell
wbsst
##############################################################################
```

## Related Links

- [Stop-WebbrowserVideos on GitHub](https://github.com/genXdev/genXdev)
