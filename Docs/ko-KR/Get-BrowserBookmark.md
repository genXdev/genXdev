# Get-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `gbm

## Synopsis

> 설치된 웹 브라우저에서 모든 북마크를 반환합니다.

## Description

시스템에 설치된 Microsoft Edge, Google Chrome 또는 Mozilla Firefox 브라우저에서 북마크를 검색합니다. 이 함수는 브라우저 유형별로 필터링할 수 있으며 이름, URL, 폴더 위치 및 타임스탬프를 포함한 상세한 북마크 정보를 반환합니다. Firefox 북마크를 읽을 때 System.Data.SQLite NuGet 패키지 설치에 대한 동의를 자동으로 처리합니다.

## Syntax

```powershell
Get-BrowserBookmark [-Chrome] [-ConsentToThirdPartySoftwareInstallation] [-Edge] [-ForceConsent] [<CommonParameters>]

Get-BrowserBookmark [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome에서 북마크를 반환합니다 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge에서 북마크를 반환합니다. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mozilla Firefox에서 북마크를 반환합니다 *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 타사 소프트웨어 설치에 대한 동의 강제 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 제3자 소프트웨어 설치에 대한 동의 |

## Examples

### Get-BrowserBookmark -Edge | Format-Table Name, URL, Folder Returns Edge bookmarks formatted as a table showing name, URL and folder.

```powershell
Get-BrowserBookmark -Edge | Format-Table Name, URL, Folder
Returns Edge bookmarks formatted as a table showing name, URL and folder.
```

### gbm -Chrome | Where-Object URL -like "*github*" Returns Chrome bookmarks filtered to only show GitHub-related URLs.

```powershell
gbm -Chrome | Where-Object URL -like "*github*"
Returns Chrome bookmarks filtered to only show GitHub-related URLs.
```

### Get-BrowserBookmark -Firefox -ConsentToThirdPartySoftwareInstallation Returns Firefox bookmarks with automatic consent to SQLite package installation.

```powershell
Get-BrowserBookmark -Firefox -ConsentToThirdPartySoftwareInstallation
Returns Firefox bookmarks with automatic consent to SQLite package installation.
```

## Outputs

- `Object[]`

## Related Links

- [Get-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
