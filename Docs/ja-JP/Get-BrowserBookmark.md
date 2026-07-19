# Get-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `gbm

## Synopsis

> インストールされたWebブラウザからすべてのブックマークを返します。

## Description

Microsoft Edge、Google Chrome、またはMozilla Firefoxのブラウザからブックマークを取得します。ブラウザの種類でフィルタリングでき、名前、URL、フォルダの場所、タイムスタンプを含む詳細なブックマーク情報を返します。Firefoxのブックマークを読み取る際には、System.Data.SQLite NuGetパッケージのインストールに対する同意を自動的に処理します。

## Syntax

```powershell
Get-BrowserBookmark [-Chrome] [-ConsentToThirdPartySoftwareInstallation] [-Edge] [-ForceConsent] [<CommonParameters>]

Get-BrowserBookmark [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome からブックマークを取得します |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge からブックマークを返します |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mozilla Firefox からブックマークを取得します *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | サードパーティソフトウェアのインストールを強制同意 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | サードパーティソフトウェアのインストールへの同意 |

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
