# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> Mencari file dan direktori dengan opsi pemfilteran lanjutan.

## Description

```text
* Menemukan berkas dengan Find-Item -> l
        * Pencarian multi-utas cepat: menggunakan pemrosesan IO paralel dan asinkron
              dengan tingkat paralelisme maksimum yang dapat dikonfigurasi
              (default berdasarkan inti CPU) untuk pemindaian berkas dan direktori yang efisien.
        * Pencocokan Pola Tingkat Lanjut: Mendukung wildcard (*, ?), pola rekursif
              seperti **, dan struktur jalur kompleks untuk kueri berkas dan direktori yang presisi.
              **/nama_berkas hanya akan melakukan rekursi sampai nama_berkas cocok. beberapa pola
              seperti ini diperbolehkan, selama didahului dengan nama_berkas atau
              nama_direktori yang akan dicocokkan.
              Parser pola ini memiliki kekuatan Resolve-Path tetapi memiliki fitur
              rekursi, dan hanya mendukung * dan ? sebagai wildcard,
              mencegah bug dengan jalur yang memiliki tanda kurung [ ] di dalamnya, menghilangkan
              kebutuhan akan parameter -LiteralPath, sambil mempertahankan integritas
              untuk bagian jalur tanpa wildcard, tidak seperti pencocokan wildcard pada
              seluruh jalur penuh.
        * Pencarian Konten yang Ditingkatkan: Integrasi Select-String yang komprehensif
              dengan pola ekspresi reguler dalam konten berkas menggunakan
              parameter -Content.
            * Optimasi Berkas Besar: Menangani berkas yang sangat besar dengan buffer
                  tumpang tindih yang cerdas dan alokasi heap minimal
            * Berbagai Opsi Pencocokan: Temukan semua kecocokan per baris (-AllMatches) atau
                  hanya kecocokan pertama per berkas (-List)
            * Kontrol Kepekaan Huruf: Pencocokan peka huruf (-CaseSensitive)
                  dengan opsi khusus budaya (-Culture)
            * Pengambilan Konteks: Tampilkan baris sebelum dan sesudah kecocokan (-Context) untuk
                  pemahaman yang lebih baik
            *Pencocokan Terbalik: Temukan berkas yang tidak mengandung pola (-NotMatch)
            * Format Keluaran: Keluaran string mentah (-Raw), respons boolean senyap (-Quiet),
                  atau objek MatchInfo lengkap
            * Jenis Pola: Ekspresi reguler (default) atau pencocokan string literal sederhana
                  (-SimpleMatch)
            * Dukungan Encoding: Tentukan encoding berkas (-Encoding) untuk pemrosesan teks
                  yang akurat
        * Fleksibilitas Jenis Jalur: Menangani jalur relatif, absolut, UNC, rooted, dan
              aliran data alternatif NTFS (ADS) dengan pencarian konten opsional dalam aliran.
        * Dukungan Multi-Drive: Mencari di semua drive dengan -AllDrives atau drive
              tertentu melalui -SearchDrives, termasuk disk optik jika ditentukan.
        * Pemfilteran Direktori dan Berkas: Opsi untuk mencari direktori saja (-Directory),
              baik berkas maupun direktori (-FilesAndDirectories), atau berkas dengan pencocokan konten.
        * Pengecualian dan Batasan: Pengecualian pola dengan -Exclude, atur kedalaman rekursi maksimum
              (-MaxRecursionDepth), batasan ukuran berkas (-MaxFileSize, -MinFileSize), dan filter
              tanggal modifikasi (-ModifiedAfter, -ModifiedBefore).
        * Kustomisasi Keluaran: Mendukung PassThru untuk objek FileInfo/DirectoryInfo,
              jalur relatif, hyperlink dalam mode dengan pengawasan, atau jalur biasa dalam mode tanpa pengawasan
              (gunakan -NoLinks jika terjadi kesalahan untuk memaksa mode tanpa pengawasan).
        * Optimasi Kinerja: Melewati berkas non-teks secara default untuk pencarian konten
              (timpa dengan -IncludeNonTextFileMatching), menangani jalur panjang (>260 karakter),
              dan mengikuti symlink/junction.
        * Fitur Keamanan: Dukungan batas waktu (-TimeoutSeconds), mengabaikan item yang tidak dapat diakses,
              melewati atribut sistem secara default, dan mencegah pengulangan tak terbatas dengan pelacakan node yang dikunjungi.

        * Kategori yang valid untuk parameter -Category adalah: Pictures, Videos, Music, Documents, Spreadsheets, Presentations, Archives, Installers, Executables, Databases, DesignFiles, Ebooks, Subtitles, Fonts, EmailFiles, 3DModels, GameAssets, MedicalFiles, FinancialFiles, LegalFiles, SourceCode, Scripts, MarkupAndData, Configuration, Logs, TextFiles, WebFiles, MusicLyricsAndChords, CreativeWriting, Recipes, ResearchFiles
```
## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Nama file atau pola untuk dicari. Default adalah '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nama file atau pola untuk dicari. Default adalah '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | Pola ekspresi reguler untuk mencari dalam konten *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Jalur dasar untuk menyelesaikan jalur relatif pada output |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Tingkat paralelisme maksimum untuk tugas direktori |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Opsional: waktu tunggu pembatalan dalam detik |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Cari di semua drive yang tersedia |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Cari hanya direktori |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Sertakan file dan direktori |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Keluarkan item yang cocok sebagai objek |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Sertakan aliran data alternatif dalam hasil pencarian |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Jangan rekursi ke subdirektori |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Ikuti symlink dan junction selama penelusuran direktori |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Termasuk drive disk optik |
| `-SearchDrives` | String[] | — | — | Named | — | Opsional: cari drive tertentu |
| `-DriveLetter` | Char[] | — | — | Named | — | Opsional: cari drive tertentu |
| `-Root` | String[] | — | — | Named | — | Opsional: cari direktori tertentu |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Memaksa pencarian hanya di direktori Root dengan memisahkan komponen direktori dari input Nama |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Menyertakan file non-teks saat mencari konten file |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Memaksa mode tanpa pengawasan dan tidak akan menghasilkan tautan |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Mendapatkan atau mengatur sensitivitas huruf besar/kecil untuk file dan direktori |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Jika diatur, melakukan pencarian konten di dalam aliran data alternatif (ADS). Jika tidak diatur, menampilkan informasi file ADS tanpa mencari kontennya. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Kedalaman rekursi maksimum untuk traversal direktori. 0 berarti tidak terbatas. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Kedalaman rekursi maksimum untuk melanjutkan pencarian ke atas pohon untuk pencarian relatif, sementara tidak ada item yang ditemukan. 0 berarti dinonaktifkan. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Ukuran file maksimum dalam byte untuk disertakan dalam hasil. 0 berarti tidak terbatas. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Ukuran file minimum dalam byte untuk disertakan dalam hasil. 0 berarti tidak ada minimum. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Hanya sertakan file yang dimodifikasi setelah tanggal/waktu ini (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Hanya sertakan file yang dimodifikasi sebelum tanggal/waktu ini (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Atribut file yang akan dilewati (misalnya, System, Hidden, atau None). |
| `-Exclude` | String[] | — | — | Named | — | Kecualikan file atau direktori yang cocok dengan pola wildcard ini (mis., *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Menunjukkan bahwa cmdlet mencari lebih dari satu kecocokan di setiap baris teks. Tanpa parameter ini, Select-String hanya menemukan kecocokan pertama di setiap baris teks. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Menunjukkan bahwa pencocokan cmdlet bersifat case-sensitive. Secara default, pencocokan tidak case-sensitive. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Menangkap sejumlah baris yang ditentukan sebelum dan sesudah baris yang cocok dengan pola. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Menentukan nama budaya yang cocok dengan pola yang ditentukan. Parameter Culture harus digunakan dengan parameter SimpleMatch. Perilaku default menggunakan budaya dari ruang jalankan PowerShell saat ini (sesi). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Menentukan jenis pengkodean untuk file target. Mendukung nilai yang kompatibel dengan Select-String dan pengkodean .NET yang diperluas. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Hanya contoh pertama dari teks yang cocok yang dikembalikan dari setiap file masukan. Ini adalah cara paling efisien untuk mengambil daftar file yang memiliki konten yang cocok dengan ekspresi reguler. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Menonaktifkan penyorotan string yang cocok pada output. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | Parameter NotMatch menemukan teks yang tidak cocok dengan pola yang ditentukan. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Menunjukkan bahwa cmdlet mengembalikan respons sederhana alih-alih objek MatchInfo. Nilai yang dikembalikan adalah $true jika pola ditemukan atau $null jika pola tidak ditemukan. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Menyebabkan cmdlet hanya mengeluarkan string yang cocok, bukan objek MatchInfo. Ini menghasilkan perilaku yang paling mirip dengan perintah Unix grep atau Windows findstr.exe. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Menunjukkan bahwa cmdlet menggunakan pencocokan sederhana, bukan pencocokan ekspresi reguler. Dalam pencocokan sederhana, Select-String mencari input untuk teks dalam parameter Pattern. Ini tidak menginterpretasikan nilai parameter Pattern sebagai pernyataan ekspresi reguler. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Cari file yang mengandung kata tertentu
Cari semua file di direktori saat ini dan subdirektori yang mengandung kata "terjemahan".

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Temukan file JavaScript dengan string versi
Cari file JavaScript yang berisi string versi dalam format "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Daftar semua direktori
Temukan semua direktori di direktori saat ini dan subdirektorinya.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Temukan file XML dan teruskan objek
Cari semua file .xml dan teruskan hasilnya sebagai objek melalui pipeline.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Sertakan aliran data alternatif
Cari semua file dan sertakan aliran data alternatifnya dalam hasil.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Cari di semua drive
Cari semua file PDF di semua drive yang tersedia.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Penyesuaian batas waktu dan paralelisme
Cari file log dengan batas waktu 5 menit dan paralelisme terbatas.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Input pipeline
Teruskan jalur file dari Get-ChildItem untuk mencari file yang mengandung "error".

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Batasi kedalaman rekursi
Cari file teks tetapi batasi rekursi ke 2 level direktori.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filter berdasarkan ukuran file
Temukan file yang lebih besar dari 1MB tetapi lebih kecil dari 10MB.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Filter berdasarkan tanggal modifikasi
Temukan file yang dimodifikasi setelah 1 Januari 2025.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Kecualikan pola tertentu
Cari semua file tetapi kecualikan file sementara dan direktori bin.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Cari drive tertentu
Cari file .docx hanya di drive C: dan D:.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Pencarian konten case-sensitive
Cari file yang mengandung "Error" (case-sensitive) dalam kontennya.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Cari konten aliran data alternatif
Cari file dengan aliran data alternatif yang mengandung "rahasia".

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Cari semua kecocokan per baris
Cari semua kemunculan "fungsi" di setiap baris, bukan hanya kecocokan pertama.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Tampilkan konteks di sekitar kecocokan
Tampilkan 2 baris sebelum dan 3 baris setelah setiap kecocokan untuk pemahaman yang lebih baik.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Dapatkan hanya string yang cocok
Kembalikan hanya teks string yang cocok, bukan objek kecocokan lengkap.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Pemeriksaan boolean sederhana
Kembalikan true/false alih-alih detail kecocokan untuk memeriksa apakah pola ada.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Hanya temukan kecocokan pertama per file
Berhenti pada kecocokan pertama di setiap file untuk penelusuran file yang efisien.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Pencocokan string literal
Mencari teks persis tanpa interpretasi regex menggunakan SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Temukan file yang TIDAK mengandung pola
Gunakan NotMatch untuk menemukan file yang tidak mengandung pola yang ditentukan.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Tentukan penyandian file
Cari file dengan penyandian spesifik untuk pemrosesan teks yang akurat.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Perbandingan teks budaya
Gunakan pencocokan khusus budaya dengan SimpleMatch untuk teks internasional.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Pencarian konten kompleks dengan filter file
Gabungkan filter ukuran file, tanggal, dan konten untuk pencarian yang tepat.

## Parameter Details

### `-Name <String[]>`

> Nama file atau pola untuk dicari. Default adalah '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Nama file atau pola untuk dicari. Default adalah '*'

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
| **Position?** | 1 |
| **Default value** | *(none)* |
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
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

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
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Jika diatur, melakukan pencarian konten di dalam aliran data alternatif (ADS). Jika tidak diatur, menampilkan informasi file ADS tanpa mencari kontennya.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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

> Kedalaman rekursi maksimum untuk melanjutkan pencarian ke atas pohon untuk pencarian relatif, sementara tidak ada item yang ditemukan. 0 berarti dinonaktifkan.

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
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `None` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Kecualikan file atau direktori yang cocok dengan pola wildcard ini (mis., *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Menunjukkan bahwa cmdlet mencari lebih dari satu kecocokan di setiap baris teks. Tanpa parameter ini, Select-String hanya menemukan kecocokan pertama di setiap baris teks.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> Menunjukkan bahwa pencocokan cmdlet bersifat case-sensitive. Secara default, pencocokan tidak case-sensitive.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> Menangkap sejumlah baris yang ditentukan sebelum dan sesudah baris yang cocok dengan pola.

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

> Menentukan jenis pengkodean untuk file target. Mendukung nilai yang kompatibel dengan Select-String dan pengkodean .NET yang diperluas.

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
### `-List`

> Hanya contoh pertama dari teks yang cocok yang dikembalikan dari setiap file masukan. Ini adalah cara paling efisien untuk mengambil daftar file yang memiliki konten yang cocok dengan ekspresi reguler.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> Menonaktifkan penyorotan string yang cocok pada output.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> Menunjukkan bahwa cmdlet mengembalikan respons sederhana alih-alih objek MatchInfo. Nilai yang dikembalikan adalah $true jika pola ditemukan atau $null jika pola tidak ditemukan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> Menyebabkan cmdlet hanya mengeluarkan string yang cocok, bukan objek MatchInfo. Ini menghasilkan perilaku yang paling mirip dengan perintah Unix grep atau Windows findstr.exe.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Find-DuplicateFiles.md)
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
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-TextFileAtomic.md)
