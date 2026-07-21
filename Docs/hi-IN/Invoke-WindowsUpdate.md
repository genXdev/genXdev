# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows`

## Synopsis

> जाँचता है कि Windows अद्यतित है या नहीं और वैकल्पिक रूप से उपलब्ध अद्यतन स्थापित करता है।

## Description

यह फ़ंक्शन विंडोज अपडेट, विंगेट पैकेज अपडेट और पावरशेल मॉड्यूल अपडेट की जांच करता है। यह उपलब्ध अपडेट प्रदर्शित कर सकता है या उन्हें स्वचालित रूप से स्थापित कर सकता है। फ़ंक्शन को विंडोज अपडेट स्थापित करने के लिए प्रशासनिक विशेषाधिकारों की आवश्यकता होती है और यदि अपडेट को रीस्टार्ट की आवश्यकता होती है तो वैकल्पिक रूप से सिस्टम को रीबूट कर सकता है।

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [-ProcessOptionalUpdates] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | उपलब्ध विंडोज अपडेट को स्वचालित रूप से स्थापित करें |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | यदि अपडेट्स को पुनरारंभ की आवश्यकता हो तो स्वचालित रूप से रीबूट करें |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0 and AutoSelectOnWebSites=1"` | कस्टम विंडोज अपडेट खोज मानदंड |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | अपडेट खोज में ड्राइवर शामिल करें |
| `-ProcessOptionalUpdates` | SwitchParameter | — | — | Named | — | वैकल्पिक अद्यतन शामिल करें और प्रत्येक को स्थापित करने का संकेत दें |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | अद्यतन श्रेणी के अनुसार आउटपुट को समूहबद्ध और रंगबद्ध करें |
| `-NoBanner` | SwitchParameter | — | — | Named | — | बैनर/स्थिति आउटपुट अक्षम करें |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | रीबूट आवश्यकता जांच/रिपोर्टिंग छोड़ें |

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

बिना इंस्टॉल किए उपलब्ध विंडोज और विंगेट अपडेट की जाँच करता है।

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

स्वचालित रूप से सभी उपलब्ध विंडोज और विंगेट अपडेट इंस्टॉल करता है।

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

उपनाम का उपयोग करके सभी अपडेट इंस्टॉल करता है और आवश्यकता पड़ने पर स्वचालित रूप से रीबूट करता है।

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

बेहतर संगठन के लिए श्रेणी के अनुसार समूहित उपलब्ध अद्यतन प्रदर्शित करता है।

### Invoke-WindowsUpdate -Install -ProcessOptionalUpdates

```powershell
Invoke-WindowsUpdate -Install -ProcessOptionalUpdates
```

सभी महत्वपूर्ण अपडेट स्वचालित रूप से स्थापित करता है और प्रत्येक वैकल्पिक अपडेट के लिए अलग-अलग प्रॉम्प्ट करता है, जिससे वैकल्पिक अपडेट का चयनात्मक स्थापन संभव होता है।

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

कस्टम खोज मानदंडों के साथ ड्राइवरों सहित अपडेट की जाँच करता है।

## Parameter Details

### `-Install`

> उपलब्ध विंडोज अपडेट को स्वचालित रूप से स्थापित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoReboot`

> यदि अपडेट्स को पुनरारंभ की आवश्यकता हो तो स्वचालित रूप से रीबूट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Criteria <String>`

> कस्टम विंडोज अपडेट खोज मानदंड

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `"IsInstalled=0 and IsHidden=0 and AutoSelectOnWebSites=1"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeDrivers`

> अपडेट खोज में ड्राइवर शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ProcessOptionalUpdates`

> वैकल्पिक अद्यतन शामिल करें और प्रत्येक को स्थापित करने का संकेत दें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GroupByCategory`

> अद्यतन श्रेणी के अनुसार आउटपुट को समूहबद्ध और रंगबद्ध करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBanner`

> बैनर/स्थिति आउटपुट अक्षम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRebootCheck`

> रीबूट आवश्यकता जांच/रिपोर्टिंग छोड़ें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-PathUsingWindowsDefender.md)
