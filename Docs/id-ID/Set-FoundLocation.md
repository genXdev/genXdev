# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> Menemukan file atau folder pertama yang cocok dan mengatur lokasi ke folder tersebut.

## Description

Cmdlet ini akan membantu Anda berpindah direktori dengan cepat menggunakan frasa pencarian yang akan menemukan folder atau file (opsional) pertama yang cocok dan berpindah direktori ke folder tersebut. Mendukung pemfilteran lanjutan berdasarkan konten, atribut file, ukuran, tanggal modifikasi, dan banyak kriteria lainnya.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Nama file atau pola untuk dicari. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Nama file atau pola untuk dicari dari input pipeline. Default adalah '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Pola ekspresi reguler untuk mencari dalam konten file *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Hanya output file yang termasuk dalam kategori yang dipilih |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Tingkat paralelisme maksimum untuk tugas direktori |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opsional: waktu tunggu pembatalan dalam detik |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Cari di semua drive yang tersedia |
| `-File` | SwitchParameter | — | — | Named | — | Cari hanya nama file dan pindah ke folder file pertama yang ditemukan |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Sertakan pencocokan nama file dan ubah ke folder file yang pertama kali ditemukan |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Sertakan aliran data alternatif dalam hasil pencarian |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Jangan rekursi ke subdirektori |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Ikuti symlink dan junction selama penelusuran direktori |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Termasuk drive disk optik |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Opsional: cari drive tertentu |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Opsional: cari drive tertentu |
| `-Root` | String[] | — | — | Named | `@()` | Opsional: cari folder dasar tertentu yang digabungkan dengan Names yang disediakan |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Sertakan file non-teks (binari, gambar, dll.) saat mencari konten file |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Mendapatkan atau mengatur sensitivitas huruf besar/kecil untuk file dan direktori |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Jika diatur, melakukan pencarian konten di dalam aliran data alternatif (ADS). Jika tidak diatur, menampilkan informasi file ADS tanpa mencari kontennya. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Kedalaman rekursi maksimum untuk traversal direktori. 0 berarti tidak terbatas. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Ukuran file maksimum dalam byte untuk disertakan dalam hasil. 0 berarti tidak terbatas. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Ukuran file minimum dalam byte untuk disertakan dalam hasil. 0 berarti tidak ada minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Hanya sertakan file yang dimodifikasi setelah tanggal/waktu ini (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Hanya sertakan file yang dimodifikasi sebelum tanggal/waktu ini (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Atribut file yang akan dilewati (misalnya, System, Hidden, atau None). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Kecualikan file atau direktori yang cocok dengan pola wildcard ini (misalnya, *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Menunjukkan bahwa pencocokan cmdlet bersifat case-sensitive. Secara default, pencocokan tidak case-sensitive. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Menentukan nama budaya yang cocok dengan pola yang ditentukan. Parameter Culture harus digunakan dengan parameter SimpleMatch. Perilaku default menggunakan budaya dari ruang jalankan PowerShell saat ini (sesi). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Menentukan jenis penyandian untuk file target. Nilai defaultnya adalah utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Parameter NotMatch menemukan teks yang tidak cocok dengan pola yang ditentukan. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Menunjukkan bahwa cmdlet menggunakan pencocokan sederhana, bukan pencocokan ekspresi reguler. Dalam pencocokan sederhana, Select-String mencari input untuk teks dalam parameter Pattern. Ini tidak menginterpretasikan nilai parameter Pattern sebagai pernyataan ekspresi reguler. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Gunakan Push-Location alih-alih Set-Location dan dorong lokasi ke tumpukan lokasi |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Jika diatur, hanya kecocokan nama persis yang dipertimbangkan. Secara default, pencocokan wildcard digunakan kecuali Name mengandung karakter wildcard. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

Perubahan pada direktori pertama yang cocok dengan pola '*.Console'.

### lcd *.Console

```powershell
lcd *.Console
```

Perubahan ke direktori pertama yang cocok dengan pola '*.Console' menggunakan alias.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

Mengubah direktori yang berisi file PowerShell pertama yang mengandung kata 'function'.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Perubahan ke direktori yang berisi file pertama dengan 'test' pada namanya.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

Perubahan ke direktori yang berisi file pertama yang kontennya cocok dengan pola '1.\d+\.2025'.

## Parameter Details

### `-Name <String>`

> Nama file atau pola untuk dicari.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-InputObject <Object>`

> Nama file atau pola untuk dicari dari input pipeline. Default adalah '*'

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | InputObject |

<hr/>
### `-Content <String[]>`

> Pola ekspresi reguler untuk mencari dalam konten file

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@(".*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-Category <String[]>`

> Hanya output file yang termasuk dalam kategori yang dipilih

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> Tingkat paralelisme maksimum untuk tugas direktori

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Opsional: waktu tunggu pembatalan dalam detik

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> Cari di semua drive yang tersedia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-File`

> Cari hanya nama file dan pindah ke folder file pertama yang ditemukan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filename` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DirectoriesAndFiles`

> Sertakan pencocokan nama file dan ubah ke folder file yang pertama kali ditemukan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `FilesAndDirectories` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Sertakan aliran data alternatif dalam hasil pencarian

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Jangan rekursi ke subdirektori

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Ikuti symlink dan junction selama penelusuran direktori

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> Termasuk drive disk optik

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> Opsional: cari drive tertentu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> Opsional: cari drive tertentu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> Opsional: cari folder dasar tertentu yang digabungkan dengan Names yang disediakan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Sertakan file non-teks (binari, gambar, dll.) saat mencari konten file

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Mendapatkan atau mengatur sensitivitas huruf besar/kecil untuk file dan direktori

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.MatchCasing]::PlatformDefault)` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Jika diatur, melakukan pencarian konten di dalam aliran data alternatif (ADS). Jika tidak diatur, menampilkan informasi file ADS tanpa mencari kontennya.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> Kedalaman rekursi maksimum untuk traversal direktori. 0 berarti tidak terbatas.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> Ukuran file maksimum dalam byte untuk disertakan dalam hasil. 0 berarti tidak terbatas.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> Ukuran file minimum dalam byte untuk disertakan dalam hasil. 0 berarti tidak ada minimum.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <DateTime>`

> Hanya sertakan file yang dimodifikasi setelah tanggal/waktu ini (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <DateTime>`

> Hanya sertakan file yang dimodifikasi sebelum tanggal/waktu ini (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> Atribut file yang akan dilewati (misalnya, System, Hidden, atau None).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.FileAttributes]::System)` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Kecualikan file atau direktori yang cocok dengan pola wildcard ini (misalnya, *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@("*\\.git\\*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseSensitive`

> Menunjukkan bahwa pencocokan cmdlet bersifat case-sensitive. Secara default, pencocokan tidak case-sensitive.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> Menentukan nama budaya yang cocok dengan pola yang ditentukan. Parameter Culture harus digunakan dengan parameter SimpleMatch. Perilaku default menggunakan budaya dari ruang jalankan PowerShell saat ini (sesi).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> Menentukan jenis penyandian untuk file target. Nilai defaultnya adalah utf8NoBOM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"UTF8NoBOM"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> Parameter NotMatch menemukan teks yang tidak cocok dengan pola yang ditentukan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> Menunjukkan bahwa cmdlet menggunakan pencocokan sederhana, bukan pencocokan ekspresi reguler. Dalam pencocokan sederhana, Select-String mencari input untuk teks dalam parameter Pattern. Ini tidak menginterpretasikan nilai parameter Pattern sebagai pernyataan ekspresi reguler.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Push`

> Gunakan Push-Location alih-alih Set-Location dan dorong lokasi ke tumpukan lokasi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> Jika diatur, hanya kecocokan nama persis yang dipertimbangkan. Secara default, pencocokan wildcard digunakan kecuali Name mengandung karakter wildcard.

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
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-TextFileAtomic.md)
