# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages`, `li`

## Synopsis

> Mencari file gambar dan metadata di direktori yang ditentukan dengan kemampuan pemfilteran dan tampilan galeri berbasis browser opsional.

## Description

Mencari file gambar (jpg, jpeg, png, gif, bmp, webp, tiff, tif) di direktori yang ditentukan dan subdirektorinya. Untuk setiap gambar, memeriksa file description.json, keywords.json, people.json, dan objects.json terkait untuk metadata. Dapat memfilter gambar berdasarkan kecocokan kata kunci, pengenalan orang, dan deteksi objek, kemudian mengembalikan hasil sebagai objek. Gunakan -ShowInBrowser untuk menampilkan hasil dalam tata letak masonry berbasis browser.

Logika Parameter:
- Dalam setiap jenis parameter (Kata Kunci, Orang, Objek, dll.): Menggunakan logika OR
  Contoh: -Keywords "kucing","anjing" menemukan gambar dengan EITHER kucing ATAU anjing
- Antara jenis parameter yang berbeda: Menggunakan logika AND
  Contoh: -Keywords "kucing" -People "John" menemukan gambar dengan kucing DAN John
- Parameter rentang EXIF: Berikan nilai [min, maks] untuk memfilter rentang
- Parameter string: Mendukung pencocokan wildcard dengan * dan ?

Fungsi ini mencari melalui direktori gambar dan memeriksa aliran data alternatif yang berisi metadata dalam format JSON. Ini dapat mencocokkan kata kunci menggunakan pola wildcard, memfilter untuk orang tertentu, dan mencari objek yang terdeteksi. Secara default, mengembalikan objek data gambar. Gunakan -ShowInBrowser untuk menampilkan di browser web.

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Akan cocok dengan semua jenis metadata yang mungkin. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Array dari jalur direktori untuk mencari gambar |
| `-Language` | String | — | — | Named | — | Bahasa untuk deskripsi dan kata kunci. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | Teks deskripsi yang dicari, dengan wildcard yang diizinkan. |
| `-Keywords` | String[] | — | — | Named | `@()` | Kata kunci yang harus dicari, wildcard diperbolehkan. |
| `-People` | String[] | — | — | Named | `@()` | Orang yang dicari, wildcard diperbolehkan. |
| `-Objects` | String[] | — | — | Named | `@()` | Objek untuk dicari, wildcard diperbolehkan. |
| `-Scenes` | String[] | — | — | Named | `@()` | Kategori adegan yang dicari, wildcard diizinkan. |
| `-PictureType` | String[] | — | — | Named | `@()` | Jenis gambar untuk difilter (misalnya, 'siang hari', 'sore hari', 'di dalam ruangan', dll). Mendukung wildcard. |
| `-StyleType` | String[] | — | — | Named | `@()` | Jenis gaya untuk difilter (mis., 'kasual', 'formal', dll.). Mendukung wildcard. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Suasana hati secara keseluruhan untuk difilter (misalnya, 'tenang', 'ceria', 'sedih', dll). Mendukung wildcard. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | Filter berdasarkan merek kamera di metadata EXIF gambar. Mendukung wildcard. |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | Filter berdasarkan model kamera di metadata EXIF gambar. Mendukung wildcard. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | Filter berdasarkan rentang lintang GPS di metadata EXIF gambar. |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | Filter berdasarkan rentang bujur GPS dalam metadata EXIF gambar. |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | Filter berdasarkan rentang ketinggian GPS dalam metadata EXIF gambar (dalam meter). |
| `-GeoLocation` | Double[] | — | — | Named | — | Koordinat geografis [garis lintang, garis bujur] untuk pencarian di sekitar. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Jarak maksimum dalam meter dari GeoLocation untuk mencari gambar. |
| `-MetaExposureTime` | Double[] | — | — | Named | — | Filter berdasarkan rentang waktu eksposur di metadata EXIF gambar (dalam detik). |
| `-MetaFNumber` | Double[] | — | — | Named | — | Filter berdasarkan rentang F-number (bukaan) di metadata EXIF gambar. |
| `-MetaISO` | Int32[] | — | — | Named | — | Filter berdasarkan rentang sensitivitas ISO di metadata EXIF gambar. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | Filter berdasarkan rentang panjang fokus dalam metadata EXIF gambar (dalam mm). |
| `-MetaWidth` | Int32[] | — | — | Named | — | Filter berdasarkan rentang lebar gambar dalam piksel dari metadata EXIF. |
| `-MetaHeight` | Int32[] | — | — | Named | — | Filter berdasarkan rentang tinggi gambar dalam piksel dari metadata EXIF. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | Filter berdasarkan tanggal pengambilan dari metadata EXIF. Dapat berupa rentang tanggal. |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Judul untuk galeri |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Deskripsi untuk galeri |
| `-AcceptLang` | String | — | — | Named | `$null` | Setel header http accept-lang browser |
| `-KeysToSend` | String[] | — | — | Named | — | 'Keystrokes yang akan dikirim ke jendela Browser, ' +
                'lihat dokumentasi cmdlet GenXdev\Send-Key' |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape karakter kontrol dan pengubah saat mengirimkan tombol |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mencegah mengembalikan fokus keyboard ke PowerShell setelah mengirim tombol |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gunakan Shift+Enter, bukan Enter, saat mengirim tombol |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Penundaan antara string input yang berbeda dalam milidetik saat mengirim tombol |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokuskan jendela browser setelah dibuka |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Atur jendela browser ke latar depan setelah terbuka |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maksimalkan jendela setelah menentukan posisi |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Memulihkan jendela ke keadaan normal setelah diposisikan |
| `-Monitor` | Int32 | — | — | Named | `-2` | Monitor yang digunakan, 0 = default, -1 = dibuang, -2 = Monitor sekunder yang dikonfigurasi, default ke `Global:DefaultSecondaryMonitor atau 2 jika tidak ditemukan |
| `-Width` | Int32 | — | — | Named | `-1` | Lebar awal jendela webbrowser |
| `-Height` | Int32 | — | — | Named | `-1` | Tinggi awal jendela browser web |
| `-X` | Int32 | — | — | Named | `-999999` | Posisi X awal dari jendela webbrowser |
| `-Y` | Int32 | — | — | Named | `-999999` | Posisi Y awal dari jendela webbrowser |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Jalur database untuk file data preferensi |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Sematkan gambar sebagai base64. |
| `-NoFallback` | SwitchParameter | — | — | Named | — | Sakelar untuk menonaktifkan perilaku fallback. |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | Beralih untuk melewati inisialisasi database dan pembangunan ulang. |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Cari di semua drive yang tersedia |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Jangan rekursi ke subdirektori |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Ikuti symlink dan junction selama penelusuran direktori. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Kedalaman rekursi maksimum untuk traversal direktori. 0 berarti tidak terbatas. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Kedalaman rekursi maksimum untuk melanjutkan pencarian ke atas pohon untuk pencarian relatif, sementara tidak ada item yang ditemukan. 0 berarti dinonaktifkan. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Ukuran file maksimum dalam byte untuk disertakan dalam hasil. 0 berarti tidak terbatas. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Ukuran file minimum dalam byte untuk disertakan dalam hasil. 0 berarti tidak ada minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Hanya sertakan file yang dimodifikasi setelah tanggal/waktu ini (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Hanya sertakan file yang dimodifikasi sebelum tanggal/waktu ini (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Atribut file yang akan dilewati (misalnya, System, Hidden, atau None). |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Saring gambar yang mengandung konten dewasa. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Saring gambar yang TIDAK mengandung ketelanjangan. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filter gambar yang mengandung konten eksplisit. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filter gambar yang TIDAK mengandung konten eksplisit. |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | Menampilkan hasil pencarian dalam galeri gambar berbasis browser. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Mengembalikan data gambar sebagai objek. Saat digunakan dengan -ShowInBrowser, menampilkan galeri dan mengembalikan objek. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Hapus bingkai jendela dan bilah judul untuk tampilan yang lebih bersih |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser berdampingan dengan PowerShell di monitor yang sama |
| `-Interactive` | SwitchParameter | — | — | Named | — | Akan terhubung ke browser dan menambahkan tombol tambahan seperti Edit dan Hapus. Hanya efektif jika digunakan dengan -ShowInBrowser. |
| `-Private` | SwitchParameter | — | — | Named | — | Membuka di mode penjelajahan pribadi/rahasia |
| `-Force` | SwitchParameter | — | — | Named | — | Mengaktifkan port debugging secara paksa, menghentikan browser yang ada jika diperlukan |
| `-Edge` | SwitchParameter | — | — | Named | — | Terbuka di Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Membuka di Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Membuka di Microsoft Edge atau Google Chrome, tergantung pada peramban default yang digunakan |
| `-Firefox` | SwitchParameter | — | — | Named | — | Membuka di Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Gunakan browser yang dikelola Playwright sebagai pengganti browser yang terinstal di sistem operasi |
| `-Webkit` | SwitchParameter | — | — | Named | — | Membuka browser WebKit yang dikelola Playwright. Mengimplikasikan -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Jalankan peramban tanpa jendela yang terlihat |
| `-All` | SwitchParameter | — | — | Named | — | Membuka di semua peramban modern yang terdaftar |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Membuka dalam mode layar penuh |
| `-Left` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di sisi kiri layar |
| `-Right` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di sisi kanan layar |
| `-Top` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di sisi atas layar |
| `-Bottom` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di sisi bawah layar |
| `-Centered` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di tengah layar |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Sembunyikan kontrol peramban |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Mencegah pemuatan ekstensi peramban |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Nonaktifkan pemblokir pop-up |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Memulihkan fokus jendela PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Jangan gunakan kembali jendela browser yang sudah ada, tetapi buatlah yang baru |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | Hanya mengembalikan HTML yang dihasilkan daripada menampilkannya di browser. |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Tampilkan hanya gambar dalam persegi panjang bulat, tanpa teks di bawahnya. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI seperti Bahasa, koleksi Gambar, dll. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Membersihkan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI seperti Bahasa, koleksi Gambar, dll |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Jangan gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI seperti Bahasa, Koleksi Gambar, dll |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Gulir otomatis halaman dengan jumlah piksel per detik ini (null untuk menonaktifkan) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animasi persegi panjang (objek/wajah) dalam rentang terlihat, berputar setiap 300ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Memaksa tata letak kolom tunggal (terpusat, lebar 1/3 layar) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Awalan yang ditambahkan ke setiap jalur gambar (mis. untuk URL jarak jauh) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | Rasio kepercayaan minimum (0.0-1.0) untuk memfilter orang, adegan, dan objek berdasarkan kepercayaan. Hanya mengembalikan data untuk orang, adegan, dan objek dengan kepercayaan lebih besar atau sama dengan nilai ini. |

## Examples

### Find-Image -Keywords "cat","dog" -Name "C:\Photos\*" Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

```powershell
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.
```

### findimages cat,dog "C:\Photos" Same as above using the alias and positional parameters.

```powershell
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.
```

### Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser Searches for photos containing John OR Jane and displays them in a web gallery.

```powershell
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*" Searches for images that contain vacation keywords AND John as a person AND beach objects. All three criteria must be met (AND logic between parameter types).

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).
```

### Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*" Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8. EXIF parameters use range filtering with [min, max] values.

```powershell
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.
```

### Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

```powershell
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.
```

### findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

```powershell
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*" Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.
```

### Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

```powershell
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.
```

### Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

```powershell
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.
```

### Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*" Searches for daylight photos with a calm/peaceful mood and returns the image objects.

```powershell
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.
```

### findimages -StyleType "casual" -HasNudity -Name "C:\Art\*" Searches for casual style images that contain nudity and returns the data objects.

```powershell
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.
```

### Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*" Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.

```powershell
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
```

## Parameter Details

### `-Any <String[]>`

> Akan cocok dengan semua jenis metadata yang mungkin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Name <String[]>`

> Array dari jalur direktori untuk mencari gambar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('.\')` |
| **Accept pipeline input?** | False |
| **Aliases** | `imagespath`, `directories`, `imgdirs`, `imagedirectory`, `ImageDirectories` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Bahasa untuk deskripsi dan kata kunci.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DescriptionSearch <String[]>`

> Teks deskripsi yang dicari, dengan wildcard yang diizinkan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Keywords <String[]>`

> Kata kunci yang harus dicari, wildcard diperbolehkan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-People <String[]>`

> Orang yang dicari, wildcard diperbolehkan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Objects <String[]>`

> Objek untuk dicari, wildcard diperbolehkan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Scenes <String[]>`

> Kategori adegan yang dicari, wildcard diizinkan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PictureType <String[]>`

> Jenis gambar untuk difilter (misalnya, 'siang hari', 'sore hari', 'di dalam ruangan', dll). Mendukung wildcard.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StyleType <String[]>`

> Jenis gaya untuk difilter (mis., 'kasual', 'formal', dll.). Mendukung wildcard.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OverallMood <String[]>`

> Suasana hati secara keseluruhan untuk difilter (misalnya, 'tenang', 'ceria', 'sedih', dll). Mendukung wildcard.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaCameraMake <String[]>`

> Filter berdasarkan merek kamera di metadata EXIF gambar. Mendukung wildcard.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaCameraModel <String[]>`

> Filter berdasarkan model kamera di metadata EXIF gambar. Mendukung wildcard.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSLatitude <Double[]>`

> Filter berdasarkan rentang lintang GPS di metadata EXIF gambar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSLongitude <Double[]>`

> Filter berdasarkan rentang bujur GPS dalam metadata EXIF gambar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSAltitude <Double[]>`

> Filter berdasarkan rentang ketinggian GPS dalam metadata EXIF gambar (dalam meter).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoLocation <Double[]>`

> Koordinat geografis [garis lintang, garis bujur] untuk pencarian di sekitar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoDistanceInMeters <Double>`

> Jarak maksimum dalam meter dari GeoLocation untuk mencari gambar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaExposureTime <Double[]>`

> Filter berdasarkan rentang waktu eksposur di metadata EXIF gambar (dalam detik).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaFNumber <Double[]>`

> Filter berdasarkan rentang F-number (bukaan) di metadata EXIF gambar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaISO <Int32[]>`

> Filter berdasarkan rentang sensitivitas ISO di metadata EXIF gambar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaFocalLength <Double[]>`

> Filter berdasarkan rentang panjang fokus dalam metadata EXIF gambar (dalam mm).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaWidth <Int32[]>`

> Filter berdasarkan rentang lebar gambar dalam piksel dari metadata EXIF.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaHeight <Int32[]>`

> Filter berdasarkan rentang tinggi gambar dalam piksel dari metadata EXIF.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaDateTaken <DateTime[]>`

> Filter berdasarkan tanggal pengambilan dari metadata EXIF. Dapat berupa rentang tanggal.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Title <String>`

> Judul untuk galeri

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Photo Gallery'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> Deskripsi untuk galeri

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `('Hover over images to see face recognition ' +
            'and object detection data')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Setel header http accept-lang browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> 'Keystrokes yang akan dikirim ke jendela Browser, ' +
                'lihat dokumentasi cmdlet GenXdev\Send-Key'

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

> Escape karakter kontrol dan pengubah saat mengirimkan tombol

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

> Mencegah mengembalikan fokus keyboard ke PowerShell setelah mengirim tombol

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

> Gunakan Shift+Enter, bukan Enter, saat mengirim tombol

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

> Penundaan antara string input yang berbeda dalam milidetik saat mengirim tombol

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Fokuskan jendela browser setelah dibuka

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

> Atur jendela browser ke latar depan setelah terbuka

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
### `-Monitor <Int32>`

> Monitor yang digunakan, 0 = default, -1 = dibuang, -2 = Monitor sekunder yang dikonfigurasi, default ke `Global:DefaultSecondaryMonitor atau 2 jika tidak ditemukan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Lebar awal jendela webbrowser

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

> Tinggi awal jendela browser web

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Posisi X awal dari jendela webbrowser

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

> Posisi Y awal dari jendela webbrowser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Jalur database untuk file data preferensi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-EmbedImages`

> Sematkan gambar sebagai base64.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoFallback`

> Sakelar untuk menonaktifkan perilaku fallback.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NeverRebuild`

> Beralih untuk melewati inisialisasi database dan pembangunan ulang.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-HasNudity`

> Saring gambar yang mengandung konten dewasa.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoNudity`

> Saring gambar yang TIDAK mengandung ketelanjangan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasExplicitContent`

> Filter gambar yang mengandung konten eksplisit.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoExplicitContent`

> Filter gambar yang TIDAK mengandung konten eksplisit.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowInBrowser`

> Menampilkan hasil pencarian dalam galeri gambar berbasis browser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `show`, `s` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Mengembalikan data gambar sebagai objek. Saat digunakan dengan -ShowInBrowser, menampilkan galeri dan mengembalikan objek.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Hapus bingkai jendela dan bilah judul untuk tampilan yang lebih bersih

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Tempatkan jendela browser berdampingan dengan PowerShell di monitor yang sama

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Interactive`

> Akan terhubung ke browser dan menambahkan tombol tambahan seperti Edit dan Hapus. Hanya efektif jika digunakan dengan -ShowInBrowser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `i`, `editimages` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Membuka di mode penjelajahan pribadi/rahasia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Mengaktifkan port debugging secara paksa, menghentikan browser yang ada jika diperlukan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Terbuka di Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Membuka di Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Membuka di Microsoft Edge atau Google Chrome, tergantung pada peramban default yang digunakan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Membuka di Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> Gunakan browser yang dikelola Playwright sebagai pengganti browser yang terinstal di sistem operasi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Membuka browser WebKit yang dikelola Playwright. Mengimplikasikan -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> Jalankan peramban tanpa jendela yang terlihat

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> Membuka di semua peramban modern yang terdaftar

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

> Membuka dalam mode layar penuh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Tempatkan jendela browser di sisi kiri layar

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

> Tempatkan jendela browser di sisi kanan layar

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

> Tempatkan jendela browser di sisi atas layar

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

> Tempatkan jendela browser di sisi bawah layar

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

> Tempatkan jendela browser di tengah layar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Sembunyikan kontrol peramban

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> Mencegah pemuatan ekstensi peramban

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> Nonaktifkan pemblokir pop-up

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
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
### `-NewWindow`

> Jangan gunakan kembali jendela browser yang sudah ada, tetapi buatlah yang baru

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyReturnHtml`

> Hanya mengembalikan HTML yang dihasilkan daripada menampilkannya di browser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowOnlyPictures`

> Tampilkan hanya gambar dalam persegi panjang bulat, tanpa teks di bawahnya.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoMetadata`, `OnlyPictures` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI seperti Bahasa, koleksi Gambar, dll.

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

> Membersihkan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI seperti Bahasa, koleksi Gambar, dll

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

> Jangan gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI seperti Bahasa, Koleksi Gambar, dll

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScrollPixelsPerSecond <Int32>`

> Gulir otomatis halaman dengan jumlah piksel per detik ini (null untuk menonaktifkan)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoAnimateRectangles`

> Animasi persegi panjang (objek/wajah) dalam rentang terlihat, berputar setiap 300ms

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleColumnMode`

> Memaksa tata letak kolom tunggal (terpusat, lebar 1/3 layar)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageUrlPrefix <String>`

> Awalan yang ditambahkan ke setiap jalur gambar (mis. untuk URL jarak jauh)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinConfidenceRatio <Double>`

> Rasio kepercayaan minimum (0.0-1.0) untuk memfilter orang, adegan, dan objek berdasarkan kepercayaan. Hanya mengembalikan data untuk orang, adegan, dan objek dengan kepercayaan lebih besar atau sama dengan nilai ini.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertTo-DiplomaticSpeak.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Update-AllImageMetaData.md)
