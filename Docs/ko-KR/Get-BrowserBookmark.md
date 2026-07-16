# Get-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `gbm

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-BrowserBookmark [-Chrome] [-Edge] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]

Get-BrowserBookmark [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Chrome` | SwitchParameter | — | — | 0 | — | Google Chrome에서 북마크를 반환합니다 |
| `-Edge` | SwitchParameter | — | — | 1 | — | Microsoft Edge에서 북마크를 반환합니다. |
| `-Firefox` | SwitchParameter | — | — | 2 | — | Mozilla Firefox에서 북마크를 반환합니다 *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 타사 소프트웨어 설치에 대한 동의 강제 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 제3자 소프트웨어 설치에 대한 동의 |

## Outputs

- `Object[]`

## Related Links

- [Get-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
