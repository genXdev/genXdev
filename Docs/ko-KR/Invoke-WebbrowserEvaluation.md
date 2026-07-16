# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript 코드, 파일 경로 또는 실행할 URL |
| `-Inspect` | SwitchParameter | — | — | Named | — | 브라우저 디버거에서 실행 전에 중단 |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | 자동 탭 선택 방지 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저 사용 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저를 사용하세요 |
| `-Page` | Object | — | — | Named | — | 브라우저 페이지 객체 참조 |
| `-ByReference` | PSObject | — | — | Named | — | 브라우저 세션 참조 객체 |

## Related Links

- [Invoke-WebbrowserEvaluation on GitHub](https://github.com/genXdev/genXdev)
