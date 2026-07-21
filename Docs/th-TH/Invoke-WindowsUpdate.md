# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows`

## Synopsis

> ตรวจสอบว่า Windows เป็นเวอร์ชันล่าสุดหรือไม่ และสามารถติดตั้งการอัปเดตที่มีอยู่ได้ตามต้องการ

## Description

ฟังก์ชันนี้จะตรวจสอบการอัปเดตของ Windows, การอัปเดตแพ็กเกจ winget และการอัปเดตโมดูล PowerShell
สามารถแสดงการอัปเดตที่มีอยู่ หรือติดตั้งโดยอัตโนมัติ
ฟังก์ชันต้องใช้สิทธิ์ผู้ดูแลระบบเพื่อติดตั้งการอัปเดต Windows และ
สามารถรีบูตระบบได้หากการอัปเดตต้องรีสตาร์ท

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [-ProcessOptionalUpdates] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | ติดตั้งการอัปเดต Windows ที่มีอยู่โดยอัตโนมัติ |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | รีบูตโดยอัตโนมัติหากการอัปเดตต้องรีสตาร์ท |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0 and AutoSelectOnWebSites=1"` | เกณฑ์การค้นหาการอัปเดต Windows แบบกำหนดเอง |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | รวมไดรเวอร์ในการค้นหาการอัปเดต |
| `-ProcessOptionalUpdates` | SwitchParameter | — | — | Named | — | รวมถึงการอัปเดตที่ไม่บังคับและพร้อมท์ให้ติดตั้งแต่ละรายการ |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | จัดกลุ่มและระบายสีผลลัพธ์ตามประเภทการอัปเดต |
| `-NoBanner` | SwitchParameter | — | — | Named | — | ปิดใช้งานเอาต์พุตแบนเนอร์/สถานะ |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | ข้ามการตรวจสอบ/รายงานความจำเป็นในการรีบูต |

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

ตรวจสอบการอัปเดต Windows และ winget ที่มีให้ใช้งานโดยไม่ต้องติดตั้ง

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

ติดตั้งการอัปเดต Windows และ winget ที่มีอยู่ทั้งหมดโดยอัตโนมัติ

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

ติดตั้งการอัปเดตทั้งหมดและรีบูตโดยอัตโนมัติหากจำเป็น โดยใช้นามแฝง

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

แสดงการอัปเดตที่มีอยู่โดยจัดกลุ่มตามหมวดหมู่เพื่อการจัดระเบียบที่ดีขึ้น

### Invoke-WindowsUpdate -Install -ProcessOptionalUpdates

```powershell
Invoke-WindowsUpdate -Install -ProcessOptionalUpdates
```

ติดตั้งการอัปเดตที่สำคัญทั้งหมดโดยอัตโนมัติ และแจ้งเตือนสำหรับการอัปเดตเสริมแต่ละรายการแยกกัน ช่วยให้สามารถเลือกติดตั้งการอัปเดตเสริมได้

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

ตรวจสอบการอัปเดต รวมถึงไดรเวอร์ด้วยเกณฑ์การค้นหาแบบกำหนดเอง

## Parameter Details

### `-Install`

> ติดตั้งการอัปเดต Windows ที่มีอยู่โดยอัตโนมัติ

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

> รีบูตโดยอัตโนมัติหากการอัปเดตต้องรีสตาร์ท

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

> เกณฑ์การค้นหาการอัปเดต Windows แบบกำหนดเอง

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

> รวมไดรเวอร์ในการค้นหาการอัปเดต

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

> รวมถึงการอัปเดตที่ไม่บังคับและพร้อมท์ให้ติดตั้งแต่ละรายการ

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

> จัดกลุ่มและระบายสีผลลัพธ์ตามประเภทการอัปเดต

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

> ปิดใช้งานเอาต์พุตแบนเนอร์/สถานะ

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

> ข้ามการตรวจสอบ/รายงานความจำเป็นในการรีบูต

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

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/CurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Enable-Screensaver.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ActiveUser.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ChildProcesses.md)
- [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ClipboardFiles.md)
- [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-CurrentFocusedProcess.md)
- [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-DesktopScalingFactor.md)
- [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ForegroundWindow.md)
- [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-KnownFolderPath.md)
- [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MpCmdRunPath.md)
- [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-OpenedFileHandleProcesses.md)
- [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PowershellMainWindow.md)
- [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PowershellMainWindowProcess.md)
- [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Window.md)
- [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WindowPosition.md)
- [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Initialize-ScheduledTaskScripts.md)
- [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Pop-Window.md)
- [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Push-Window.md)
- [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-DesktopScreenShot.md)
- [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Send-Key.md)
- [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Send-WakeOnLan.md)
- [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-ClipboardFiles.md)
- [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-ForegroundWindow.md)
- [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-KnownFolderPath.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-MonitorPowerOn.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-TaskbarAlignment.md)
- [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-WindowPosition.md)
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-PathUsingWindowsDefender.md)
