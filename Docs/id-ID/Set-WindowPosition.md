# Set-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wp`

## Synopsis

> Memposisikan dan mengubah ukuran jendela ketika parameter posisi eksplisit diberikan.

## Description

Memberikan kontrol yang tepat atas posisi dan ukuran jendela ketika parameter posisi ditentukan. Mendukung beberapa monitor, penghapusan batas, dan berbagai posisi preset seperti split kiri/kanan, split atas/bawah, dan penempatan tengah. Jendela dapat diposisikan berdasarkan koordinat atau menggunakan tata letak yang telah ditentukan sebelumnya. Tanpa parameter posisi, fungsi tidak melakukan tindakan apa pun pada jendela.

## Syntax

```powershell
Set-WindowPosition [[-ProcessName] <String>] [<CommonParameters>]

Set-WindowPosition [-Process <Diagnostics.Process>] [<CommonParameters>]

Set-WindowPosition [-WindowHelper <GenXdev.Helpers.WindowObj[]>] [<CommonParameters>]

Set-WindowPosition [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Fullscreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | Nama proses dari jendela yang akan diposisikan *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | Proses jendela untuk memposisikan *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Objek pembantu Get-Window untuk manipulasi jendela secara langsung *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Pemilihan monitor: 0=primer, 1+=monitor tertentu, -1=saat ini, -2=sekunder |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Menghapus batas jendela |
| `-Width` | Int32 | — | — | Named | `-1` | Lebar jendela dalam piksel |
| `-Height` | Int32 | — | — | Named | `-999999` | Tinggi jendela dalam piksel |
| `-X` | Int32 | — | — | Named | `-999999` | Posisi horizontal jendela dalam piksel |
| `-Y` | Int32 | — | — | Named | `-999999` | Posisi vertikal jendela dalam piksel |
| `-Left` | SwitchParameter | — | — | Named | — | Tempatkan jendela di sisi kiri layar |
| `-Right` | SwitchParameter | — | — | Named | — | Tempatkan jendela di sisi kanan layar |
| `-Top` | SwitchParameter | — | — | Named | — | Tempatkan jendela di sisi atas layar |
| `-Bottom` | SwitchParameter | — | — | Named | — | Tempatkan jendela di sisi bawah layar |
| `-Centered` | SwitchParameter | — | — | Named | — | Tempatkan jendela di tengah layar |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maksimalkan jendela |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Memulihkan fokus jendela PowerShell |
| `-PassThru` | SwitchParameter | — | — | Named | — | Mengembalikan pembantu jendela untuk setiap proses |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Akan mengatur jendela layar penuh pada monitor yang berbeda dari Powershell, atau bersebelahan dengan Powershell pada monitor yang sama |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokuskan jendela setelah dibuka |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Setel jendela ke latar depan setelah dibuka |
| `-Minimize` | SwitchParameter | — | — | Named | — | Meminimalkan jendela setelah penentuan posisi |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maksimalkan jendela setelah menentukan posisi |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Memulihkan jendela ke keadaan normal setelah diposisikan |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes yang akan dikirim ke Window, lihat dokumentasi untuk cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Lepaskan karakter kontrol dan pengubah saat mengirim tombol |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tahan fokus keyboard pada jendela target saat mengirim tombol |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gunakan Shift+Enter alih-alih Enter saat mengirim tombol |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Jeda antara string input yang berbeda dalam milidetik saat mengirim tombol |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Hapus pengaturan alternatif yang tersimpan dalam sesi untuk preferensi AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Simpan pengaturan hanya di preferensi persisten tanpa mempengaruhi sesi |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Hanya output koordinat dan ukuran yang dihitung tanpa benar-benar memposisikan jendela |

## Examples

### Set-WindowPosition -Centered -Monitor 0 -NoBorders Position PowerShell window centered on primary monitor with no borders

```powershell
Set-WindowPosition -Centered -Monitor 0 -NoBorders
Position PowerShell window centered on primary monitor with no borders
```

### Get-Process notepad,calc | wp -m 1 -l,-r Split notepad and calc side by side on second monitor using aliases

```powershell
Get-Process notepad,calc | wp -m 1 -l,-r
Split notepad and calc side by side on second monitor using aliases
```

### Set-WindowPosition -ProcessName notepad Does nothing - no positioning parameters specified

```powershell
Set-WindowPosition -ProcessName notepad
Does nothing - no positioning parameters specified
```

### Set-WindowPosition -ProcessName notepad -KeysToSend "Hello World" Sends keystrokes to notepad window without repositioning it

```powershell
Set-WindowPosition -ProcessName notepad -KeysToSend "Hello World"
Sends keystrokes to notepad window without repositioning it
```

### Set-WindowPosition -ProcessName notepad -Left -Monitor 1 -OnlyOutputCoords Returns the calculated coordinates where notepad would be placed on the left side of monitor 1 without actually moving the window

```powershell
Set-WindowPosition -ProcessName notepad -Left -Monitor 1 -OnlyOutputCoords
Returns the calculated coordinates where notepad would be placed on the left
side of monitor 1 without actually moving the window
```

## Parameter Details

### `-ProcessName <String>`

> Nama proses dari jendela yang akan diposisikan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Name` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | ProcessName |

<hr/>
### `-Process <Diagnostics.Process>`

> Proses jendela untuk memposisikan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Process |

<hr/>
### `-WindowHelper <GenXdev.Helpers.WindowObj[]>`

> Objek pembantu Get-Window untuk manipulasi jendela secara langsung

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WindowHelper |

<hr/>
### `-Monitor <Int32>`

> Pemilihan monitor: 0=primer, 1+=monitor tertentu, -1=saat ini, -2=sekunder

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Menghapus batas jendela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Lebar jendela dalam piksel

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

> Tinggi jendela dalam piksel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Posisi horizontal jendela dalam piksel

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

> Posisi vertikal jendela dalam piksel

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

> Tempatkan jendela di sisi kiri layar

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

> Tempatkan jendela di sisi kanan layar

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

> Tempatkan jendela di sisi atas layar

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

> Tempatkan jendela di sisi bawah layar

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

> Tempatkan jendela di tengah layar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fullscreen`

> Maksimalkan jendela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Memulihkan fokus jendela PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Mengembalikan pembantu jendela untuk setiap proses

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

> Akan mengatur jendela layar penuh pada monitor yang berbeda dari Powershell, atau bersebelahan dengan Powershell pada monitor yang sama

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Fokuskan jendela setelah dibuka

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

> Setel jendela ke latar depan setelah dibuka

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Minimize`

> Meminimalkan jendela setelah penentuan posisi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Maksimalkan jendela setelah menentukan posisi

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

> Memulihkan jendela ke keadaan normal setelah diposisikan

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

> Keystrokes yang akan dikirim ke Window, lihat dokumentasi untuk cmdlet GenXdev\Send-Key

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

> Lepaskan karakter kontrol dan pengubah saat mengirim tombol

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

> Tahan fokus keyboard pada jendela target saat mengirim tombol

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

> Gunakan Shift+Enter alih-alih Enter saat mengirim tombol

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

> Jeda antara string input yang berbeda dalam milidetik saat mengirim tombol

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI

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

> Hapus pengaturan alternatif yang tersimpan dalam sesi untuk preferensi AI

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

> Simpan pengaturan hanya di preferensi persisten tanpa mempengaruhi sesi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyOutputCoords`

> Hanya output koordinat dan ukuran yang dihitung tanpa benar-benar memposisikan jendela

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

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/CurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Enable-Screensaver.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ActiveUser.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ChildProcesses.md)
- [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ClipboardFiles.md)
- [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-CurrentFocusedProcess.md)
- [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-DesktopScalingFactor.md)
- [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ForegroundWindow.md)
- [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-KnownFolderPath.md)
- [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-MpCmdRunPath.md)
- [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-OpenedFileHandleProcesses.md)
- [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-PowershellMainWindow.md)
- [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-PowershellMainWindowProcess.md)
- [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Window.md)
- [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WindowPosition.md)
- [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Initialize-ScheduledTaskScripts.md)
- [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-WindowsUpdate.md)
- [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Pop-Window.md)
- [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Push-Window.md)
- [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Save-DesktopScreenShot.md)
- [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Send-Key.md)
- [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Send-WakeOnLan.md)
- [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-ClipboardFiles.md)
- [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-ForegroundWindow.md)
- [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-KnownFolderPath.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-MonitorPowerOn.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-TaskbarAlignment.md)
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-PathUsingWindowsDefender.md)
