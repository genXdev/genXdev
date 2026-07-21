# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st`

## Synopsis

> प्लेराइट-प्रबंधित ब्राउज़रों में चल रहे ब्राउज़र टैब का चयन करता है।

## Description

सभी चल रहे Playwright-प्रबंधित ब्राउज़र इंस्टेंस से ब्राउज़र टैब की सूची बनाता है और उनका चयन करता है। जब चयन मानदंड के बिना कॉल किया जाता है, तो सभी ब्राउज़र प्रकारों में सभी उपलब्ध टैब की एक तालिका प्रदर्शित करता है। संख्यात्मक अनुक्रमणिका, URL पैटर्न, या सीधे पेज संदर्भ द्वारा चयन का समर्थन करता है।

जब कोई टैब चुना जाता है, तो अन्य वेबब्राउज़र cmdlets के साथ पश्चगामी संगतता के लिए $Global:chromeController और $Global:chromeSession सेट करता है।

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
| `-Id` | Int32 | — | — | 0 | `-1` | दिखाई गई सूची से टैब इंडेक्स *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | इस URL में यह टेक्स्ट रखने वाला पहला टैब चुनें *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | प्लेराइट ब्राउज़र स्थिति से प्रत्यक्ष पेज संदर्भ *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | माइक्रोसॉफ्ट एज ब्राउज़र इंस्टेंस में टैब फ़िल्टर करें |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome ब्राउज़र इंस्टेंसेस में टैब फ़िल्टर करें |
| `-Chromium` | SwitchParameter | — | — | Named | — | क्रोमियम-आधारित ब्राउज़र इंस्टेंस (एज या क्रोम) में टैब फ़िल्टर करें |
| `-Firefox` | SwitchParameter | — | — | Named | — | फ़ायरफ़ॉक्स ब्राउज़र उदाहरणों के लिए टैब फ़िल्टर करें |
| `-PlayWright` | SwitchParameter | — | — | Named | — | सभी Playwright-प्रबंधित ब्राउज़र प्रकारों में टैब को फ़िल्टर करें |
| `-Webkit` | SwitchParameter | — | — | Named | — | WebKit ब्राउज़र इंस्टेंस में टैब फ़िल्टर करें |
| `-All` | SwitchParameter | — | — | Named | — | सभी ब्राउज़र प्रकारों के टैब दिखाएं (कोई फ़िल्टरिंग नहीं) |
| `-Force` | SwitchParameter | — | — | Named | — | पुष्टि छोड़ें और पहला मिलता टैब चुनें |

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

> दिखाई गई सूची से टैब इंडेक्स

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

> इस URL में यह टेक्स्ट रखने वाला पहला टैब चुनें

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

> प्लेराइट ब्राउज़र स्थिति से प्रत्यक्ष पेज संदर्भ

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

> माइक्रोसॉफ्ट एज ब्राउज़र इंस्टेंस में टैब फ़िल्टर करें

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

> Google Chrome ब्राउज़र इंस्टेंसेस में टैब फ़िल्टर करें

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

> क्रोमियम-आधारित ब्राउज़र इंस्टेंस (एज या क्रोम) में टैब फ़िल्टर करें

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

> फ़ायरफ़ॉक्स ब्राउज़र उदाहरणों के लिए टैब फ़िल्टर करें

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

> सभी Playwright-प्रबंधित ब्राउज़र प्रकारों में टैब को फ़िल्टर करें

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

> WebKit ब्राउज़र इंस्टेंस में टैब फ़िल्टर करें

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

> सभी ब्राउज़र प्रकारों के टैब दिखाएं (कोई फ़िल्टरिंग नहीं)

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

> पुष्टि छोड़ें और पहला मिलता टैब चुनें

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-WebbrowserSideBySide.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-WebsiteInAllBrowsers.md)
