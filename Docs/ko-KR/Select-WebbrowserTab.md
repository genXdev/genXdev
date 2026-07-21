# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st`

## Synopsis

> Playwright에서 관리되는 실행 중인 브라우저에서 브라우저 탭을 선택합니다.

## Description

실행 중인 모든 Playwright 관리 브라우저 인스턴스에서 브라우저 탭을 나열하고 선택합니다. 선택 조건 없이 호출하면 모든 브라우저 유형에서 사용 가능한 모든 탭의 테이블을 표시합니다. 숫자 인덱스, URL 패턴 또는 직접 페이지 참조로 선택을 지원합니다.

탭이 선택되면 다른 웹브라우저 cmdlet과의 하위 호환성을 위해 $Global:chromeController 및 $Global:chromeSession을 설정합니다.

## Syntax

```powershell
Select-WebbrowserTab [[-Id] <Int32>] [<CommonParameters>]

Select-WebbrowserTab -Name <String> [<CommonParameters>]

Select-WebbrowserTab -ByReference <Object> [<CommonParameters>]

Select-WebbrowserTab [-All] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Force] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Id` | Int32 | — | — | 0 | `-1` | 표시된 목록의 탭 인덱스 *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | URL에 이 텍스트가 포함된 첫 번째 탭을 선택합니다. *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | Playwright 브라우저 상태에서 직접 페이지 참조 *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge 브라우저 인스턴스로 탭 필터링 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome 브라우저 인스턴스로 탭 필터링 |
| `-Chromium` | SwitchParameter | — | — | Named | — | Chromium 기반 브라우저 인스턴스(Edge 또는 Chrome)로 탭 필터링 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 탭을 Firefox 브라우저 인스턴스로 필터링합니다 |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Playwright에서 관리하는 모든 브라우저 유형으로 탭 필터링 |
| `-Webkit` | SwitchParameter | — | — | Named | — | WebKit 브라우저 인스턴스로 탭 필터링 |
| `-All` | SwitchParameter | — | — | Named | — | 모든 브라우저 유형의 탭 표시(필터링 없음) |
| `-Force` | SwitchParameter | — | — | Named | — | 확인을 건너뛰고 첫 번째 일치하는 탭 선택 |

## Examples

### Select-WebbrowserTab Lists all open tabs across all Playwright browser types.

```powershell
Select-WebbrowserTab
Lists all open tabs across all Playwright browser types.
```

### Select-WebbrowserTab -Id 2 Selects the tab at index 2 from the list.

```powershell
Select-WebbrowserTab -Id 2
Selects the tab at index 2 from the list.
```

### st -Name "github.com" Selects the first tab whose URL contains "github.com".

```powershell
st -Name "github.com"
Selects the first tab whose URL contains "github.com".
```

### st -Firefox -Id 0 Selects the first tab from the Firefox browser.

```powershell
st -Firefox -Id 0
Selects the first tab from the Firefox browser.
```

## Parameter Details

### `-Id <Int32>`

> 표시된 목록의 탭 인덱스

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ById |

<hr/>
### `-Name <String>`

> URL에 이 텍스트가 포함된 첫 번째 탭을 선택합니다.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | ByName |

<hr/>
### `-ByReference <Object>`

> Playwright 브라우저 상태에서 직접 페이지 참조

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ByReference |

<hr/>
### `-Edge`

> Microsoft Edge 브라우저 인스턴스로 탭 필터링

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Google Chrome 브라우저 인스턴스로 탭 필터링

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Chromium 기반 브라우저 인스턴스(Edge 또는 Chrome)로 탭 필터링

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> 탭을 Firefox 브라우저 인스턴스로 필터링합니다

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> Playwright에서 관리하는 모든 브라우저 유형으로 탭 필터링

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> WebKit 브라우저 인스턴스로 탭 필터링

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> 모든 브라우저 유형의 탭 표시(필터링 없음)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> 확인을 건너뛰고 첫 번째 일치하는 탭 선택

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-WebbrowserSideBySide.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Show-WebsiteInAllBrowsers.md)
