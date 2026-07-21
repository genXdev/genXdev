# Open-MediaFile

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcmedia`, `media`, `findmedia`

## Synopsis

> Membuka dan memutar file media menggunakan pemutar VLC dengan opsi penyaringan dan konfigurasi lanjutan.

## Description

Fungsi ini memindai file media berdasarkan pola pencarian, membuat daftar putar, dan meluncurkan pemutar VLC dengan opsi konfigurasi yang lengkap. Mendukung video, file audio, dan gambar dengan instalasi VLC otomatis jika diperlukan. Fungsi ini memberikan kontrol ekstensif atas perilaku pemutaran, penempatan jendela, pengaturan audio/video, dan penanganan subtitle.

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | Nama file atau pola untuk dicari. Default adalah '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Cari di semua drive yang tersedia |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Jangan rekursi ke subdirektori |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Ikuti symlink dan junction selama penelusuran direktori. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Kedalaman rekursi maksimum untuk melanjutkan pencarian ke atas pohon untuk pencarian relatif, sementara tidak ada item yang ditemukan. 0 berarti dinonaktifkan. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Ukuran file maksimum dalam byte untuk disertakan dalam hasil. 0 berarti tidak terbatas. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Ukuran file minimum dalam byte untuk disertakan dalam hasil. 0 berarti tidak ada minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Hanya sertakan file yang dimodifikasi setelah tanggal/waktu ini (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Hanya sertakan file yang dimodifikasi sebelum tanggal/waktu ini (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Atribut file yang akan dilewati (misalnya, System, Hidden, atau None). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nama file atau pola untuk dicari dari input pipeline. Default adalah "*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | Jalur daftar putar untuk menyimpan file media. Jika tidak ditentukan, daftar putar akan disimpan di direktori sementara. |
| `-Width` | Int32 | — | — | 1 | `-1` | Lebar awal jendela |
| `-Height` | Int32 | — | — | 2 | `-1` | Tinggi awal jendela |
| `-X` | Int32 | — | — | 3 | `-999999` | Posisi X awal dari jendela |
| `-Y` | Int32 | — | — | 4 | `-999999` | Posisi Y awal jendela |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | Keystrokes yang akan dikirim ke jendela VLC Player, lihat dokumentasi untuk cmdlet GenXdev\Send-Key |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Tingkat paralelisme maksimum untuk tugas direktori |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Opsional: waktu tunggu pembatalan dalam detik |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Meloloskan karakter kontrol dan pengubah saat mengirimkan tombol ke VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gunakan Shift+Enter, bukan Enter, saat mengirim tombol ke VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Jeda antara string input yang berbeda dalam milidetik saat mengirim tombol ke VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Pertahankan fokus keyboard pada jendela VLC setelah mengirim tombol |
| `-Monitor` | Int32 | — | — | Named | `-2` | Monitor yang digunakan, 0 = default (bawaan), -1 = buang |
| `-AspectRatio` | String | — | — | Named | — | Rasio aspek sumber |
| `-Crop` | String | — | — | Named | — | Pemotongan video |
| `-SubtitleFile` | String | — | — | Named | — | Gunakan file subtitle |
| `-SubtitleScale` | Int32 | — | — | Named | — | Faktor skala teks subtitle |
| `-SubtitleLanguage` | String | — | — | Named | — | Bahasa subtitle |
| `-AudioLanguage` | String | — | — | Named | — | Bahasa audio |
| `-PreferredAudioLanguage` | String | — | — | Named | — | Bahasa audio yang dipilih |
| `-HttpProxy` | String | — | — | Named | — | Proksi HTTP |
| `-HttpProxyPassword` | String | — | — | Named | — | Kata sandi proxy HTTP |
| `-VerbosityLevel` | Int32 | — | — | Named | — | Tingkat verbositas |
| `-SubdirectoryBehavior` | String | — | — | Named | — | Perilaku subdirektori |
| `-IgnoredExtensions` | String | — | — | Named | — | Ekstensi yang diabaikan |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | Path ke executable VLC |
| `-ReplayGainMode` | String | — | — | Named | — | Mode penguatan ulang |
| `-ReplayGainPreamp` | Single | — | — | Named | — | Preamplifikasi penguatan replay |
| `-ForceDolbySurround` | String | — | — | Named | — | Deteksi paksa Dolby Surround |
| `-AudioFilters` | String[] | — | — | Named | — | Filter audio |
| `-Visualization` | String | — | — | Named | — | Visualisasi audio |
| `-Deinterlace` | String | — | — | Named | — | @{response=Deinterlace} |
| `-DeinterlaceMode` | String | — | — | Named | — | Mode deinterlace |
| `-VideoFilters` | String[] | — | — | Named | — | Modul filter video |
| `-VideoFilterModules` | String[] | — | — | Named | — | Modul filter video |
| `-Modules` | String[] | — | — | Named | — | Modul |
| `-AudioFilterModules` | String[] | — | — | Named | — | Modul filter audio |
| `-AudioVisualization` | String | — | — | Named | — | Mode visualisasi audio |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | Bahasa subtitle yang disukai |
| `-IgnoredFileExtensions` | String | — | — | Named | — | Ekstensi file yang diabaikan |
| `-Arguments` | String | — | — | Named | — | Argumen tambahan |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Sertakan aliran data alternatif dalam hasil pencarian |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | Hanya sertakan file video dalam daftar putar |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | Hanya sertakan file audio dalam daftar putar |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | Hanya sertakan gambar dalam daftar putar |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Selain itu, sertakan video dalam daftar putar |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Selain itu, sertakan file audio dalam daftar putar |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Selain itu, sertakan gambar dalam daftar putar |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Menghapus batas jendela |
| `-Left` | SwitchParameter | — | — | Named | — | Tempatkan jendela di sisi kiri layar |
| `-Right` | SwitchParameter | — | — | Named | — | Tempatkan jendela di sisi kanan layar |
| `-Top` | SwitchParameter | — | — | Named | — | Tempatkan jendela di sisi atas layar |
| `-Bottom` | SwitchParameter | — | — | Named | — | Tempatkan jendela di sisi bawah layar |
| `-Centered` | SwitchParameter | — | — | Named | — | Tempatkan jendela di tengah layar |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Mengirim F11 ke jendela |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | Selalu di atas |
| `-Random` | SwitchParameter | — | — | Named | — | Memutar file secara acak selamanya |
| `-Loop` | SwitchParameter | — | — | Named | — | Ulangi semua |
| `-Repeat` | SwitchParameter | — | — | Named | — | Ulangi item saat ini |
| `-StartPaused` | SwitchParameter | — | — | Named | — | Mulai dijeda |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | Putar dan keluar |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | Nonaktifkan audio |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | Nonaktifkan subtitle |
| `-AutoScale` | SwitchParameter | — | — | Named | — | Penskalaan Otomatis Video |
| `-HighPriority` | SwitchParameter | — | — | Named | — | Meningkatkan prioritas proses |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | Aktifkan peregangan waktu audio |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Buka instance pemutar media VLC baru |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | Aktifkan mode wallpaper video |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | Aktifkan peregangan waktu audio |
| `-Close` | SwitchParameter | — | — | Named | — | Tutup jendela pemutar media VLC |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Akan mengatur jendela layar penuh pada monitor yang berbeda dari Powershell, atau bersebelahan dengan Powershell pada monitor yang sama |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokuskan jendela VLC setelah dibuka |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Setel jendela VLC ke latar depan setelah dibuka |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maksimalkan jendela |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Mengembalikan fokus jendela PowerShell setelah membuka VLC. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Hapus pengaturan alternatif yang tersimpan dalam sesi untuk preferensi AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Simpan pengaturan hanya di preferensi persisten tanpa mempengaruhi sesi |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Mendapatkan atau mengatur sensitivitas huruf besar/kecil untuk file dan direktori |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Kedalaman rekursi maksimum untuk traversal direktori. 0 berarti tidak terbatas. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | Kecualikan file atau direktori yang cocok dengan pola wildcard ini (misalnya, *.tmp, *\bin\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | Mengembalikan file yang ditemukan oleh pencarian |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | Mengembalikan file yang ditemukan oleh pencarian tanpa membuka VLC |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | Mengembalikan pembantu jendela untuk setiap proses |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

Membuka semua file media di direktori saat ini menggunakan pengaturan VLC default.

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

Hanya membuka file gambar dari folder Pictures dalam mode layar penuh menggunakan alias 'vlcmedia'.

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

Membuka file video dengan perulangan diaktifkan menggunakan alias 'media'.

## Parameter Details

### `-Name <String[]>`

> Nama file atau pola untuk dicari. Default adalah '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'*'` |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

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
### `-NoRecurse`

> Jangan rekursi ke subdirektori

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Ikuti symlink dan junction selama penelusuran direktori.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-InputObject <Object>`

> Nama file atau pola untuk dicari dari input pipeline. Default adalah "*"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PlaylistPath <String>`

> Jalur daftar putar untuk menyimpan file media. Jika tidak ditentukan, daftar putar akan disimpan di direktori sementara.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.Path]::GetTempFileName() + '.m3u'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Lebar awal jendela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Tinggi awal jendela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Posisi X awal dari jendela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> Posisi Y awal jendela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Keystrokes yang akan dikirim ke jendela VLC Player, lihat dokumentasi untuk cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | *(none)* |
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
### `-SendKeyEscape`

> Meloloskan karakter kontrol dan pengubah saat mengirimkan tombol ke VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Gunakan Shift+Enter, bukan Enter, saat mengirim tombol ke VLC

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

> Jeda antara string input yang berbeda dalam milidetik saat mengirim tombol ke VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Pertahankan fokus keyboard pada jendela VLC setelah mengirim tombol

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Monitor yang digunakan, 0 = default (bawaan), -1 = buang

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AspectRatio <String>`

> Rasio aspek sumber

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Crop <String>`

> Pemotongan video

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleFile <String>`

> Gunakan file subtitle

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleScale <Int32>`

> Faktor skala teks subtitle

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleLanguage <String>`

> Bahasa subtitle

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioLanguage <String>`

> Bahasa audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredAudioLanguage <String>`

> Bahasa audio yang dipilih

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxy <String>`

> Proksi HTTP

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxyPassword <String>`

> Kata sandi proxy HTTP

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VerbosityLevel <Int32>`

> Tingkat verbositas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubdirectoryBehavior <String>`

> Perilaku subdirektori

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredExtensions <String>`

> Ekstensi yang diabaikan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VLCPath <String>`

> Path ke executable VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainMode <String>`

> Mode penguatan ulang

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainPreamp <Single>`

> Preamplifikasi penguatan replay

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceDolbySurround <String>`

> Deteksi paksa Dolby Surround

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilters <String[]>`

> Filter audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Visualization <String>`

> Visualisasi audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Deinterlace <String>`

> @{response=Deinterlace}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DeinterlaceMode <String>`

> Mode deinterlace

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilters <String[]>`

> Modul filter video

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilterModules <String[]>`

> Modul filter video

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Modules <String[]>`

> Modul

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilterModules <String[]>`

> Modul filter audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioVisualization <String>`

> Mode visualisasi audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredSubtitleLanguage <String>`

> Bahasa subtitle yang disukai

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredFileExtensions <String>`

> Ekstensi file yang diabaikan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Arguments <String>`

> Argumen tambahan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-OnlyVideos`

> Hanya sertakan file video dalam daftar putar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAudio`

> Hanya sertakan file audio dalam daftar putar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPictures`

> Hanya sertakan gambar dalam daftar putar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeVideos`

> Selain itu, sertakan video dalam daftar putar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAudio`

> Selain itu, sertakan file audio dalam daftar putar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludePictures`

> Selain itu, sertakan gambar dalam daftar putar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-FullScreen`

> Mengirim F11 ke jendela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AlwaysOnTop`

> Selalu di atas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Random`

> Memutar file secara acak selamanya

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Shuffle` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Loop`

> Ulangi semua

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repeat`

> Ulangi item saat ini

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StartPaused`

> Mulai dijeda

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayAndExit`

> Putar dan keluar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableAudio`

> Nonaktifkan audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableSubtitles`

> Nonaktifkan subtitle

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScale`

> Penskalaan Otomatis Video

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HighPriority`

> Meningkatkan prioritas proses

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableTimeStretch`

> Aktifkan peregangan waktu audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> Buka instance pemutar media VLC baru

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableWallpaperMode`

> Aktifkan mode wallpaper video

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableAudioTimeStretch`

> Aktifkan peregangan waktu audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Close`

> Tutup jendela pemutar media VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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

> Fokuskan jendela VLC setelah dibuka

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

> Setel jendela VLC ke latar depan setelah dibuka

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

> Maksimalkan jendela

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Mengembalikan fokus jendela PowerShell setelah membuka VLC.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
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
### `-Exclude <String[]>`

> Kecualikan file atau direktori yang cocok dengan pola wildcard ini (misalnya, *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\\.git\\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Mengembalikan file yang ditemukan oleh pencarian

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruNoOpen`

> Mengembalikan file yang ditemukan oleh pencarian tanpa membuka VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruWindow`

> Mengembalikan pembantu jendela untuk setiap proses

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

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-MediaFileCreationDate.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Switch-VlcMediaPlayerRepeat.md)
