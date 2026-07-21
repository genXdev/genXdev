# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st`

## Synopsis

> Playwright tarafından yönetilen çalışan tarayıcılardan bir sekme seçer.

## Description

Tüm çalışan Playwright tarafından yönetilen tarayıcı örneklerinden tarayıcı sekmelerini listeler ve seçer. Seçim kriteri olmadan çağrıldığında, tüm tarayıcı türlerindeki mevcut sekmelerin bir tablosunu görüntüler. Sayısal indeks, URL deseni veya doğrudan sayfa referansı ile seçimi destekler.

Bir sekme seçildiğinde, diğer Webbrowser cmdlet'leri ile geriye dönük uyumluluk için $Global:chromeController ve $Global:chromeSession değişkenlerini ayarlar.

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
| `-Id` | Int32 | — | — | 0 | `-1` | Gösterilen listeden sekme dizini *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | URL'sinde bu metni içeren ilk sekmeyi seçer *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | Bir Playwright tarayıcı durumundan doğrudan sayfa referansı *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Sekmeleri Microsoft Edge tarayıcı örneklerine filtrele |
| `-Chrome` | SwitchParameter | — | — | Named | — | Sekmeleri Google Chrome tarayıcı örneklerine göre filtrele |
| `-Chromium` | SwitchParameter | — | — | Named | — | Sekmeleri Chromium tabanlı tarayıcı örneklerine (Edge veya Chrome) filtrele |
| `-Firefox` | SwitchParameter | — | — | Named | — | Sekmeleri Firefox tarayıcı örneklerine göre filtrele |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Sekmeleri, Playwright tarafından yönetilen tüm tarayıcı türlerine göre filtreleyin |
| `-Webkit` | SwitchParameter | — | — | Named | — | Sekmeleri WebKit tarayıcı örneklerine filtrele |
| `-All` | SwitchParameter | — | — | Named | — | Tüm tarayıcı türlerinden sekmeleri göster (filtreleme yok) |
| `-Force` | SwitchParameter | — | — | Named | — | Onaylamayı atla ve ilk eşleşen sekmeyi seç |

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

> Gösterilen listeden sekme dizini

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

> URL'sinde bu metni içeren ilk sekmeyi seçer

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

> Bir Playwright tarayıcı durumundan doğrudan sayfa referansı

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

> Sekmeleri Microsoft Edge tarayıcı örneklerine filtrele

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

> Sekmeleri Google Chrome tarayıcı örneklerine göre filtrele

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

> Sekmeleri Chromium tabanlı tarayıcı örneklerine (Edge veya Chrome) filtrele

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

> Sekmeleri Firefox tarayıcı örneklerine göre filtrele

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

> Sekmeleri, Playwright tarafından yönetilen tüm tarayıcı türlerine göre filtreleyin

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

> Sekmeleri WebKit tarayıcı örneklerine filtrele

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

> Tüm tarayıcı türlerinden sekmeleri göster (filtreleme yok)

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

> Onaylamayı atla ve ilk eşleşen sekmeyi seç

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WebbrowserSideBySide.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-WebsiteInAllBrowsers.md)
