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
| `-Chrome` | SwitchParameter | — | — | 0 | — | 从谷歌浏览器返回书签 |
| `-Edge` | SwitchParameter | — | — | 1 | — | 从 Microsoft Edge 返回书签 |
| `-Firefox` | SwitchParameter | — | — | 2 | — | 从Mozilla Firefox中返回书签 *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 强制同意第三方软件安装 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 同意安装第三方软件 |

## Outputs

- `Object[]`

## Related Links

- [Get-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
