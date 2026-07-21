# Set-WindowPositionForSecondary

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wps`

## Synopsis

> द्वितीयक मॉनिटर पर निर्दिष्ट लेआउट विकल्पों के साथ विंडो को स्थापित करता है।

## Description

यह फ़ंक्शन Set-WindowPosition के साथ विभिन्न लेआउट विकल्पों जैसे संरेखण, आकार और बॉर्डर सेटिंग्स का उपयोग करके कॉन्फ़िगर किए गए द्वितीयक मॉनिटर पर विंडो को स्थापित करने की अनुमति देता है। यह वैश्विक कॉन्फ़िगरेशन के आधार पर मॉनिटर चयन को संभालता है और द्वितीयक मॉनिटर विंडो स्थिति निर्धारण के लिए एक सुविधाजनक रैपर प्रदान करता है।

## Syntax

```powershell
Set-WindowPositionForSecondary [[-Process] <Diagnostics.Process[]>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NoBorders] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Process` | Diagnostics.Process[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | विंडो को स्थिति में लाने की प्रक्रिया |
| `-Monitor` | Int32 | — | — | Named | `-2` | उपयोग करने के लिए मॉनिटर, 0=डिफ़ॉल्ट, -1=छोड़ें, -2=कॉन्फ़िगर किया गया |
| `-Width` | Int32 | — | — | Named | `-1` | विंडो की प्रारंभिक चौड़ाई |
| `-Height` | Int32 | — | — | Named | `-1` | विंडो की प्रारंभिक ऊंचाई |
| `-X` | Int32 | — | — | Named | `-999999` | विंडो की प्रारंभिक X स्थिति |
| `-Y` | Int32 | — | — | Named | `-999999` | विंडो की प्रारंभिक Y स्थिति |
| `-Left` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के बाईं ओर रखें |
| `-Right` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के दाईं ओर रखें |
| `-Top` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के ऊपरी किनारे पर रखें |
| `-Bottom` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के निचले हिस्से पर रखें |
| `-Centered` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के केंद्र में रखें |
| `-FullScreen` | SwitchParameter | — | — | Named | — | विंडो को F11 भेजता है |
| `-NoBorders` | SwitchParameter | — | — | Named | — | विंडो की सीमाएं हटाता है |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | पावरशेल विंडो फ़ोकस पुनर्स्थापित करें |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | स्थिति निर्धारण के बाद विंडो को फोकस करें |
| `-SetForeground` | SwitchParameter | — | — | Named | — | स्थिति निर्धारित करने के बाद विंडो को अग्रभूमि पर सेट करें |
| `-Maximize` | SwitchParameter | — | — | Named | — | स्थिति तय करने के बाद विंडो को अधिकतम करें |
| `-SetRestored` | SwitchParameter | — | — | Named | — | स्थिति निर्धारण के बाद विंडो को सामान्य स्थिति में पुनर्स्थापित करें |
| `-KeysToSend` | String[] | — | — | Named | — | विंडो को स्थान देने के बाद भेजने के लिए कीस्ट्रोक्स |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | नियंत्रण वर्णों और संशोधकों को कुंजियाँ भेजते समय एस्केप करें |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | कुंजियाँ भेजते समय लक्ष्य विंडो पर कीबोर्ड फ़ोकस बनाए रखें |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | कुंजियाँ भेजते समय Enter के बजाय Shift+Enter का उपयोग करें |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | कुंजी भेजते समय विभिन्न इनपुट स्ट्रिंग के बीच मिलीसेकंड में विलंब |
| `-PassThru` | SwitchParameter | — | — | Named | — | पोजीशनिंग के बाद प्रक्रिया ऑब्जेक्ट लौटाता है |
| `-SideBySide` | SwitchParameter | — | — | Named | — | पॉवरशेल के साथ एक ही मॉनिटर पर विंडो को साथ-साथ रखें |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |

## Examples

### Set-WindowPositionForSecondary -Process "notepad" -Width 800 -Height 600 `     -Centered -NoBorders

```powershell
Set-WindowPositionForSecondary -Process "notepad" -Width 800 -Height 600 `
    -Centered -NoBorders
```

### wps notepad -w 800 -h 600 -c -nb

```powershell
wps notepad -w 800 -h 600 -c -nb
```

## Parameter Details

### `-Process <Diagnostics.Process[]>`

> विंडो को स्थिति में लाने की प्रक्रिया

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> उपयोग करने के लिए मॉनिटर, 0=डिफ़ॉल्ट, -1=छोड़ें, -2=कॉन्फ़िगर किया गया

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> विंडो की प्रारंभिक चौड़ाई

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> विंडो की प्रारंभिक ऊंचाई

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> विंडो की प्रारंभिक X स्थिति

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> विंडो की प्रारंभिक Y स्थिति

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> विंडो को स्क्रीन के बाईं ओर रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> विंडो को स्क्रीन के दाईं ओर रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> विंडो को स्क्रीन के ऊपरी किनारे पर रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> विंडो को स्क्रीन के निचले हिस्से पर रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> विंडो को स्क्रीन के केंद्र में रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> विंडो को F11 भेजता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> विंडो की सीमाएं हटाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> पावरशेल विंडो फ़ोकस पुनर्स्थापित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> स्थिति निर्धारण के बाद विंडो को फोकस करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> स्थिति निर्धारित करने के बाद विंडो को अग्रभूमि पर सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> स्थिति तय करने के बाद विंडो को अधिकतम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> स्थिति निर्धारण के बाद विंडो को सामान्य स्थिति में पुनर्स्थापित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> विंडो को स्थान देने के बाद भेजने के लिए कीस्ट्रोक्स

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> नियंत्रण वर्णों और संशोधकों को कुंजियाँ भेजते समय एस्केप करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> कुंजियाँ भेजते समय लक्ष्य विंडो पर कीबोर्ड फ़ोकस बनाए रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> कुंजियाँ भेजते समय Enter के बजाय Shift+Enter का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> कुंजी भेजते समय विभिन्न इनपुट स्ट्रिंग के बीच मिलीसेकंड में विलंब

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> पोजीशनिंग के बाद प्रक्रिया ऑब्जेक्ट लौटाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> पॉवरशेल के साथ एक ही मॉनिटर पर विंडो को साथ-साथ रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/CurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Enable-Screensaver.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ActiveUser.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ChildProcesses.md)
- [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ClipboardFiles.md)
- [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-CurrentFocusedProcess.md)
- [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-DesktopScalingFactor.md)
- [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ForegroundWindow.md)
- [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-KnownFolderPath.md)
- [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-MpCmdRunPath.md)
- [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-OpenedFileHandleProcesses.md)
- [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PowershellMainWindow.md)
- [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PowershellMainWindowProcess.md)
- [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Window.md)
- [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WindowPosition.md)
- [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Initialize-ScheduledTaskScripts.md)
- [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-WindowsUpdate.md)
- [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Pop-Window.md)
- [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Push-Window.md)
- [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Save-DesktopScreenShot.md)
- [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Send-Key.md)
- [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Send-WakeOnLan.md)
- [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-ClipboardFiles.md)
- [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-ForegroundWindow.md)
- [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-KnownFolderPath.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-MonitorPowerOn.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-TaskbarAlignment.md)
- [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-WindowPosition.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-PathUsingWindowsDefender.md)
