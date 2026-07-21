# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> รับข้อมูลหน้าต่างสำหรับกระบวนการที่ระบุหรือที่จับหน้าต่างที่ระบุ

## Description

* ดึงข้อมูลหน้าต่างโดยใช้ชื่อกระบวนการ รหัส หรือแฮนเดิลของหน้าต่าง
* ส่งคืนวัตถุ WindowObj ที่มีรายละเอียดเกี่ยวกับหน้าต่างหลักของกระบวนการที่ตรงกัน
* รองรับอักขระตัวแทน (wildcards) เมื่อค้นหาด้วยชื่อกระบวนการ

## Syntax

```powershell
Get-Window [[-ProcessName] <String>] [-ProcessId <Int32>] [-WindowHandle <Int64>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | ชื่อของกระบวนการเพื่อรับข้อมูลหน้าต่าง 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ID ของกระบวนการที่ต้องการรับข้อมูลหน้าต่าง |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | หมายเลขหน้าต่างที่จะรับข้อมูลสำหรับ |

## Examples

### Example 1

```powershell
Get-Window -ProcessName "notepad"
```

ดึงข้อมูลหน้าต่างสำหรับกระบวนการทั้งหมดที่ชื่อ "notepad"

### Example 2

```powershell
Get-Window -ProcessId 1234
```

ดึงข้อมูลหน้าต่างสำหรับกระบวนการที่มี ID 1234

### Example 3

```powershell
Get-Window -WindowHandle 45678
```

ดึงข้อมูลหน้าต่างสำหรับหน้าต่างที่มีแฮนเดิล 45678

## Parameter Details

### `-ProcessName <String>`

> ชื่อของกระบวนการเพื่อรับข้อมูลหน้าต่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-ProcessId <Int32>`

> ID ของกระบวนการที่ต้องการรับข้อมูลหน้าต่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Id`, `PID` |
| **Accept wildcard characters?** | No |

<hr/>
### `-WindowHandle <Int64>`

> หมายเลขหน้าต่างที่จะรับข้อมูลสำหรับ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Handle`, `hWnd` |
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
- [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WindowPosition.md)
- [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Initialize-ScheduledTaskScripts.md)
- [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-WindowsUpdate.md)
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
