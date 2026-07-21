# Move-FilesToDateFolder

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Memindahkan file yang cocok dengan kriteria pencarian ke dalam subfolder berbasis tanggal.

## Description

Mencari file menggunakan set parameter yang sama dengan `Find-Item` dan memindahkan setiap file yang cocok ke dalam subfolder dari `TargetFolder` berdasarkan tanggal pembuatan atau tanggal media file tersebut. Cmdlet ini mendukung pencocokan konten, pencarian di seluruh drive, dan banyak filter. Ini dapat secara opsional menghapus folder sumber kosong setelah pemindahan.

Mencoba beberapa strategi untuk menentukan tanggal pembuatan atau pengambilan yang akurat untuk file yang ditentukan. Strategi termasuk membaca metadata EXIF gambar, mengurai informasi tanggal/waktu dari nama file, dan kembali ke waktu tulis terakhir file ketika tidak ada informasi lain yang dapat diandalkan.

## Syntax

```powershell
Move-FilesToDateFolder -TargetFolder <String> [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DeleteEmptyDirs] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TargetFolderNameDateSyntax <String>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Move-FilesToDateFolder [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TargetFolder` | String | ✅ | — | 0 | — | Folder akar target tempat file yang cocok akan dipindahkan ke subfolder berdasarkan tanggal |
| `-Name` | String[] | — | — | 1 | `@('*')` | Nama file atau pola untuk dicari. Default adalah '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nama file atau pola untuk dicari dari input pipeline. Default adalah '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | Pola ekspresi reguler untuk mencari dalam konten *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Jalur dasar untuk menyelesaikan jalur relatif pada output |
| `-Category` | String[] | — | — | Named | — | Hanya output file yang termasuk dalam kategori yang dipilih |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Tingkat paralelisme maksimum untuk tugas direktori |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opsional: waktu tunggu pembatalan dalam detik |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Cari di semua drive yang tersedia |
| `-Directory` | SwitchParameter | — | — | Named | — | Cari hanya direktori |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Sertakan file dan direktori |
| `-PassThru` | SwitchParameter | — | — | Named | — | Keluarkan item yang cocok sebagai objek |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Sertakan aliran data alternatif dalam hasil pencarian |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Jangan rekursi ke subdirektori |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Ikuti symlink dan junction selama penelusuran direktori |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Termasuk drive disk optik |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Opsional: cari drive tertentu |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Opsional: cari drive tertentu |
| `-Root` | String[] | — | — | Named | `@()` | Opsional: cari direktori tertentu |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Memaksa pencarian hanya di direktori Root dengan memisahkan komponen direktori dari input Nama |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Menyertakan file non-teks saat mencari konten file |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Memaksa mode tanpa pengawasan dan tidak akan menghasilkan tautan |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Mendapatkan atau mengatur sensitivitas huruf besar/kecil untuk file dan direktori |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Jika diaktifkan, melakukan pencarian konten di dalam aliran data alternatif (ADS) |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Kedalaman rekursi maksimum untuk traversal direktori. 0 berarti tidak terbatas. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Kedalaman rekursi maksimum untuk pencarian lanjutan ke atas pohon. 0 berarti dinonaktifkan. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Ukuran file maksimum dalam byte untuk disertakan dalam hasil. 0 berarti tidak terbatas. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Ukuran file minimum dalam byte untuk disertakan dalam hasil. 0 berarti tidak ada minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Hanya sertakan file yang dimodifikasi setelah tanggal/waktu ini (UTC) |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Hanya sertakan file yang dimodifikasi sebelum tanggal/waktu ini (UTC) |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Atribut file yang akan dilewati (misalnya, System, Hidden atau None) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Kecualikan file atau direktori yang cocok dengan pola wildcard ini |
| `-AllMatches` | SwitchParameter | — | — | Named | — | Cari lebih dari satu kecocokan di setiap baris teks *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Pencocokan bersifat case-sensitive *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Menangkap baris konteks di sekitar kecocokan *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Nama budaya yang digunakan untuk pencocokan pola *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Menentukan penyandian untuk file target *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Hanya kecocokan pertama per file yang dikembalikan *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Menonaktifkan penyorotan string yang cocok pada output *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | Parameter NotMatch mencari teks yang tidak cocok dengan pola *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Keluarkan hanya string yang cocok, bukan objek MatchInfo *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Gunakan pencocokan string sederhana alih-alih regex *(Parameter set: )* |
| `-DeleteEmptyDirs` | SwitchParameter | — | — | Named | — | Hapus direktori sumber yang kosong setelah memindahkan file |
| `-TargetFolderNameDateSyntax` | String | — | — | Named | `'Year + Month'` | Sintaksis tanggal nama folder target |

## Examples

### Move all pictures and videos to the corresponsing Android Onedrive App Image backup folders     Move-FilesToDateFolder -TargetFolder "~\onedrive\Pictures\Camera Roll" `                            -SourceFolder ~\Pictures\*, ~\onedrive\*, ~\desktop\* `                            -FollowSymlinkAndJunctions `                            -DeleteEmptyDirs `                            -Category 'Pictures', 'Videos' `                            -Confirm:$false

```powershell
Move all pictures and videos to the corresponsing Android Onedrive App Image backup folders
    Move-FilesToDateFolder -TargetFolder "~\onedrive\Pictures\Camera Roll" `
                           -SourceFolder ~\Pictures\*, ~\onedrive\*, ~\desktop\* `
                           -FollowSymlinkAndJunctions `
                           -DeleteEmptyDirs `
                           -Category 'Pictures', 'Videos' `
                           -Confirm:$false
```

### Move all jpg files from the current directory into date folders under `D:\Archive` (dry run):

```powershell
Move all jpg files from the current directory into date folders under
`D:\Archive` (dry run):
```

Move-FilesToDateFolder -TargetFolder 'D:\Archive' -Nama '*.jpg' -WhatIf

### Move all files across drives matching `*.mp4` into monthly folders and delete empty source folders:

```powershell
Move all files across drives matching `*.mp4` into monthly folders and delete
empty source folders:
```

Move-FilesToDateFolder -TargetFolder 'E:\Media\Video' -Nama '.*.mp4' -HapusFolderKosong

## Parameter Details

### `-TargetFolder <String>`

> Folder akar target tempat file yang cocok akan dipindahkan ke subfolder berdasarkan tanggal

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Name <String[]>`

> Nama file atau pola untuk dicari. Default adalah '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `SourceFolder` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Nama file atau pola untuk dicari dari input pipeline. Default adalah '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> Pola ekspresi reguler untuk mencari dalam konten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@('.*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> Jalur dasar untuk menyelesaikan jalur relatif pada output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

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
### `-Directory`

> Cari hanya direktori

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> Sertakan file dan direktori

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Keluarkan item yang cocok sebagai objek

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
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

> Opsional: cari direktori tertentu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> Memaksa pencarian hanya di direktori Root dengan memisahkan komponen direktori dari input Nama

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Menyertakan file non-teks saat mencari konten file

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> Memaksa mode tanpa pengawasan dan tidak akan menghasilkan tautan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Mendapatkan atau mengatur sensitivitas huruf besar/kecil untuk file dan direktori

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.MatchCasing]::PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Jika diaktifkan, melakukan pencarian konten di dalam aliran data alternatif (ADS)

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
### `-MaxSearchUpDepth <Int32>`

> Kedalaman rekursi maksimum untuk pencarian lanjutan ke atas pohon. 0 berarti dinonaktifkan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
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

> Hanya sertakan file yang dimodifikasi setelah tanggal/waktu ini (UTC)

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

> Hanya sertakan file yang dimodifikasi sebelum tanggal/waktu ini (UTC)

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

> Atribut file yang akan dilewati (misalnya, System, Hidden atau None)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Kecualikan file atau direktori yang cocok dengan pola wildcard ini

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\.git\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Cari lebih dari satu kecocokan di setiap baris teks

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
### `-CaseSensitive`

> Pencocokan bersifat case-sensitive

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
### `-Context <Int32[]>`

> Menangkap baris konteks di sekitar kecocokan

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

> Nama budaya yang digunakan untuk pencocokan pola

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

> Menentukan penyandian untuk file target

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'UTF8NoBOM'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> Hanya kecocokan pertama per file yang dikembalikan

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
### `-NoEmphasis`

> Menonaktifkan penyorotan string yang cocok pada output

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
### `-NotMatch`

> Parameter NotMatch mencari teks yang tidak cocok dengan pola

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
### `-Raw`

> Keluarkan hanya string yang cocok, bukan objek MatchInfo

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

> Gunakan pencocokan string sederhana alih-alih regex

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
### `-DeleteEmptyDirs`

> Hapus direktori sumber yang kosong setelah memindahkan file

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TargetFolderNameDateSyntax <String>`

> Sintaksis tanggal nama folder target

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Year + Month'` |
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
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-TextFileAtomic.md)
