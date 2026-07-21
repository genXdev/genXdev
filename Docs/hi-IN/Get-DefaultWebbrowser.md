# Get-DefaultWebbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> वर्तमान उपयोगकर्ता के लिए कॉन्फ़िगर किए गए डिफ़ॉल्ट वेब ब्राउज़र को लौटाता है।

## Description

* विंडोज रजिस्ट्री से पूछकर सिस्टम के डिफ़ॉल्ट वेब ब्राउज़र के बारे में जानकारी प्राप्त करता है।
* ब्राउज़र का नाम, विवरण, आइकन पथ, और निष्पादन योग्य पथ युक्त एक हैशटेबल लौटाता है।
* यह फ़ंक्शन डिफ़ॉल्ट ब्राउज़र निर्धारित करने के लिए उपयोगकर्ता प्राथमिकताओं और सिस्टम-व्यापी ब्राउज़र पंजीकरण दोनों की जाँच करता है।

## Syntax

```powershell
Get-DefaultWebbrowser [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-DefaultWebbrowser | Format-List
```

डिफ़ॉल्ट ब्राउज़र के बारे में विस्तृत जानकारी प्राप्त करें।

### Example 2

```powershell
$browser = Get-DefaultWebbrowser
& $browser.Path https://www.github.com/
```

किसी विशिष्ट URL के साथ डिफ़ॉल्ट ब्राउज़र लॉन्च करें।

## Related Links

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-BrowserBookmark.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-WebsiteInAllBrowsers.md)
