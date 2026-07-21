# Set-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> विंडोज के ज्ञात फ़ोल्डर का भौतिक पथ संशोधित करता है।

## Description

Windows Shell32 API का उपयोग करके सिस्टम फ़ोल्डरों जैसे दस्तावेज़, डाउनलोड, डेस्कटॉप या अन्य ज्ञात विंडोज फ़ोल्डरों को किसी नए स्थान पर स्थानांतरित करता है। यह फ़ंक्शन लक्ष्य पथ के अस्तित्व को सत्यापित करता है, विस्तृत ज्ञात फ़ोल्डर रजिस्ट्री से फ़ोल्डर का अद्वितीय GUID खोजता है, और स्थानांतरण करने के लिए SHSetKnownFolderPath API का उपयोग करता है। सामान्य उपयोग के मामलों में स्थान प्रबंधन या संगठन के लिए उपयोगकर्ता फ़ोल्डरों को किसी भिन्न ड्राइव पर ले जाना शामिल है। सिस्टम-महत्वपूर्ण फ़ोल्डरों को स्थानांतरित करते समय सावधानी बरतें क्योंकि इससे सिस्टम स्थिरता प्रभावित हो सकती है।

## Syntax

```powershell
Set-KnownFolderPath -KnownFolder <String> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | संशोधित करने के लिए ज्ञात फ़ोल्डर |
| `-Path` | String | ✅ | — | 1 | — | ज्ञात फ़ोल्डर के लिए नया पथ |

## Examples

### Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'

```powershell
Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'
```

### Set-KnownFolderPath Downloads 'E:\Downloads'

```powershell
Set-KnownFolderPath Downloads 'E:\Downloads'
```

## Parameter Details

### `-KnownFolder <String>`

> संशोधित करने के लिए ज्ञात फ़ोल्डर

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> ज्ञात फ़ोल्डर के लिए नया पथ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FullName` |
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
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-MonitorPowerOn.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-TaskbarAlignment.md)
- [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-WindowPosition.md)
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-PathUsingWindowsDefender.md)
