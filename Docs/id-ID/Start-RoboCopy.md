# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Menyediakan pembungkus PowerShell untuk utilitas Robust Copy (RoboCopy) milik Microsoft.

## Description

Sebuah pembungkus komprehensif untuk utilitas baris perintah RoboCopy yang menyediakan kemampuan menyalin file dan direktori yang andal. Fungsi ini mengekspos fitur ekstensif RoboCopy melalui parameter yang ramah PowerShell sambil mempertahankan sebagian besar fungsionalitasnya yang kuat.

Fitur Utama:
- Sinkronisasi direktori dengan opsi cermin
- Dukungan untuk nama jalur yang sangat panjang (>256 karakter)
- Pelestarian pengaturan keamanan
- Penanganan atribut file tingkat lanjut
- Manajemen tautan simbolik dan titik persimpangan
- Mode monitor untuk sinkronisasi berkelanjutan
- Optimasi kinerja untuk file besar
- Dukungan kompresi jaringan
- Mode pemulihan untuk perangkat yang gagal

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | Direktori, jalur file, atau direktori+mask pencarian |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | Direktori tujuan untuk menempatkan file dan direktori yang disalin.
            Jika direktori ini belum ada, semua direktori yang hilang akan dibuat.
            Nilai default = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Mask pencarian opsional untuk memilih file yang perlu disalin.
            Nilai default = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Menyinkronkan konten direktori yang ditentukan, juga akan menghapus file dan direktori di tujuan yang tidak ada di sumber |
| `-Move` | SwitchParameter | — | — | Named | — | Akan memindahkan, bukannya menyalin, semua file dari sumber ke tujuan |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Juga akan menyalin kepemilikan, deskriptor keamanan, dan informasi audit dari file dan direktori |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Hanya menyalin file dari sumber dan melewatkan subdirektori (tanpa rekursi) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Tidak menyalin direktori jika direktori tersebut akan kosong *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Buat pohon direktori saja *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Buat direktori pohon dan file dengan panjang nol saja |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Jangan menyalin tautan simbolis, persimpangan, atau konten yang ditunjuknya |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Jangan salin tautan simbolik file tetapi ikuti persimpangan direktori |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Alih-alih menyalin konten di mana tautan simbolis mengarah, salin tautan itu sendiri |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Jangan menyalin junction direktori (tautan simbolik untuk folder) atau konten yang ditunjuk olehnya *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Alih-alih menyalin konten yang dituju oleh persimpangan, salin persimpangan itu sendiri *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Akan menyalin semua file meskipun file tersebut lebih lama dari yang ada di tujuan |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Hanya menyalin file yang memiliki atribut arsip yang diatur |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Selain menyalin hanya file yang memiliki atribut archive yang diaktifkan, akan mengatur ulang atribut ini pada sumber |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Kecualikan file apa pun yang cocok dengan salah satu dari nama/path/wilayah ini 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Kecualikan direktori mana pun yang cocok dengan salah satu nama/jalur/wildcard ini *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Salin hanya file yang memiliki semua atribut ini [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Kecualikan file yang memiliki atribut berikut [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Akan mengatur atribut yang diberikan ke file yang disalin [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Akan menghapus atribut yang diberikan dari file yang disalin [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Hanya salin n level teratas dari pohon direktori sumber *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Lewati file yang ukurannya kurang dari n byte |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Lewati file yang lebih besar dari n byte |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Lewati file yang berumur kurang dari: n hari ATAU dibuat sebelum tanggal n (jika n < 1900 maka n = n hari, jika tidak n = tanggal YYYYMMDD) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Lewati file yang lebih tua dari: n hari ATAU dibuat setelah tanggal n (jika n < 1900 maka n = n hari, selain itu n = tanggal YYYYMMDD) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Lewati file yang diakses dalam waktu: n hari terakhir ATAU sebelum tanggal n (jika n < 1900 maka n = n hari, jika tidak maka n = tanggal YYYYMMDD) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Lewati file yang belum diakses dalam: n hari ATAU setelah n tanggal (jika n < 1900 maka n = n hari, jika tidak n = YYYYMMDD tanggal) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Akan segera menjeda dan mencoba ulang saat kesalahan I/O terjadi selama penyalinan |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Akan tetap aktif setelah menyalin, dan menyalin perubahan tambahan setelah ambang batas default 10 menit |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Jalankan lagi dalam n menit Waktu, jika berubah |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Jalankan lagi ketika lebih dari n perubahan terlihat |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Jam operasional - waktu saat salinan baru dapat dimulai, waktu-mulai, rentang 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Jam operasional - waktu saat salinan baru dapat dimulai, waktu-akhir, rentang 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Jika ditentukan, pencatatan juga akan dilakukan ke file yang ditentukan |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Jangan menambahkan ke file log yang ditentukan, tetapi timpa sebagai gantinya |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Sertakan semua nama direktori yang dipindai dalam output |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Sertakan semua nama file yang dipindai dalam output, bahkan yang dilewati |
| `-Unicode` | SwitchParameter | — | — | Named | — | Output status sebagai UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Mengaktifkan optimasi untuk menyalin file berukuran besar |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Optimalkan performa dengan melakukan penyalinan multithreaded |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Jika memungkinkan, gunakan kompresi saat menyalin file antar server untuk menghemat bandwidth dan waktu |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Jika diatur, akan menggunakan pencocokan stempel waktu milidetik sebagai pengganti toleransi standar 2 detik |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Menimpa, Menghapus, atau Menambahkan parameter robocopy yang ditentukan.

Penggunaan:

Menambah atau mengganti parameter:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Menghapus parameter:

    -Override -/Switch

Beberapa penimpaan:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> Direktori, jalur file, atau direktori+mask pencarian

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> Direktori tujuan untuk menempatkan file dan direktori yang disalin.
            Jika direktori ini belum ada, semua direktori yang hilang akan dibuat.
            Nilai default = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> Mask pencarian opsional untuk memilih file yang perlu disalin.
            Nilai default = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> Menyinkronkan konten direktori yang ditentukan, juga akan menghapus file dan direktori di tujuan yang tidak ada di sumber

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> Akan memindahkan, bukannya menyalin, semua file dari sumber ke tujuan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> Juga akan menyalin kepemilikan, deskriptor keamanan, dan informasi audit dari file dan direktori

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> Hanya menyalin file dari sumber dan melewatkan subdirektori (tanpa rekursi)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> Tidak menyalin direktori jika direktori tersebut akan kosong

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> Buat pohon direktori saja

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> Buat direktori pohon dan file dengan panjang nol saja

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> Jangan menyalin tautan simbolis, persimpangan, atau konten yang ditunjuknya

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> Jangan salin tautan simbolik file tetapi ikuti persimpangan direktori

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> Alih-alih menyalin konten di mana tautan simbolis mengarah, salin tautan itu sendiri

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> Jangan menyalin junction direktori (tautan simbolik untuk folder) atau konten yang ditunjuk olehnya

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> Alih-alih menyalin konten yang dituju oleh persimpangan, salin persimpangan itu sendiri

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> Akan menyalin semua file meskipun file tersebut lebih lama dari yang ada di tujuan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> Hanya menyalin file yang memiliki atribut arsip yang diatur

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> Selain menyalin hanya file yang memiliki atribut archive yang diaktifkan, akan mengatur ulang atribut ini pada sumber

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> Kecualikan file apa pun yang cocok dengan salah satu dari nama/path/wilayah ini

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> Kecualikan direktori mana pun yang cocok dengan salah satu nama/jalur/wildcard ini

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> Salin hanya file yang memiliki semua atribut ini [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> Kecualikan file yang memiliki atribut berikut [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> Akan mengatur atribut yang diberikan ke file yang disalin [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> Akan menghapus atribut yang diberikan dari file yang disalin [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> Hanya salin n level teratas dari pohon direktori sumber

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> Lewati file yang ukurannya kurang dari n byte

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> Lewati file yang lebih besar dari n byte

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> Lewati file yang berumur kurang dari: n hari ATAU dibuat sebelum tanggal n (jika n < 1900 maka n = n hari, jika tidak n = tanggal YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> Lewati file yang lebih tua dari: n hari ATAU dibuat setelah tanggal n (jika n < 1900 maka n = n hari, selain itu n = tanggal YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> Lewati file yang diakses dalam waktu: n hari terakhir ATAU sebelum tanggal n (jika n < 1900 maka n = n hari, jika tidak maka n = tanggal YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> Lewati file yang belum diakses dalam: n hari ATAU setelah n tanggal (jika n < 1900 maka n = n hari, jika tidak n = YYYYMMDD tanggal)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> Akan segera menjeda dan mencoba ulang saat kesalahan I/O terjadi selama penyalinan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> Akan tetap aktif setelah menyalin, dan menyalin perubahan tambahan setelah ambang batas default 10 menit

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> Jalankan lagi dalam n menit Waktu, jika berubah

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> Jalankan lagi ketika lebih dari n perubahan terlihat

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> Jam operasional - waktu saat salinan baru dapat dimulai, waktu-mulai, rentang 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> Jam operasional - waktu saat salinan baru dapat dimulai, waktu-akhir, rentang 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> Jika ditentukan, pencatatan juga akan dilakukan ke file yang ditentukan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> Jangan menambahkan ke file log yang ditentukan, tetapi timpa sebagai gantinya

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> Sertakan semua nama direktori yang dipindai dalam output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> Sertakan semua nama file yang dipindai dalam output, bahkan yang dilewati

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> Output status sebagai UNICODE

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> Mengaktifkan optimasi untuk menyalin file berukuran besar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> Optimalkan performa dengan melakukan penyalinan multithreaded

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> Jika memungkinkan, gunakan kompresi saat menyalin file antar server untuk menghemat bandwidth dan waktu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> Jika diatur, akan menggunakan pencocokan stempel waktu milidetik sebagai pengganti toleransi standar 2 detik

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> Menimpa, Menghapus, atau Menambahkan parameter robocopy yang ditentukan.

Penggunaan:

Menambah atau mengganti parameter:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Menghapus parameter:

    -Override -/Switch

Beberapa penimpaan:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-TextFileAtomic.md)
