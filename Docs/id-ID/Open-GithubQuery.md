# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> Membuka kueri pencarian repositori Github di peramban web atau menjalankan pencarian lanjutan terhadap GitHub REST API yang mendukung semua pengkualifikasi yang tersedia dan kategori pencarian (repositori, kode, isu, pengguna, komit, diskusi, topik, wiki).

## Description

Membuka kueri pencarian repositori Github di peramban web dengan opsi kustomisasi yang luas atau melakukan pencarian API tingkat lanjut. Fungsi ini menyediakan antarmuka yang kuat untuk mengakses repositori Github dengan cepat dari PowerShell dengan dukungan untuk beberapa peramban, posisi jendela, pemfilteran bahasa, dan otomatisasi keyboard, atau mengambil data terstruktur melalui API.
Fitur utama:

Dukungan beberapa kueri pencarian dengan input pipa
Pemfilteran khusus bahasa dengan lokalisasi otomatis
Dukungan multi-peramban (Edge, Chrome, Firefox)
Posisi jendela lanjutan dan pemilihan monitor
Mode penjelajahan pribadi/penyamaran
Mode aplikasi untuk penjelajahan bebas gangguan
Otomatisasi keyboard dan manajemen fokus
Opsi pengembalian URL untuk penggunaan terprogram
Pencarian API lanjutan dengan kualifikasi, pengurutan, penomoran halaman
Dukungan untuk semua jenis pencarian GitHub
Otentikasi dengan token akses pribadi
Eksekusi pekerjaan asinkron untuk pencarian API
Output JSON mentah atau objek terstruktur

Fungsi ini secara otomatis membuat URL pencarian Github untuk mode web atau titik akhir API untuk mode API dan meneruskan semua parameter terkait peramban ke fungsi Open-Webbrowser yang mendasarinya untuk perilaku yang konsisten.

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Kueri pencarian untuk dijalankan di Github. Mendukung beberapa kueri dan input pipeline untuk pencarian batch. Setiap kueri akan dienkode URL dan digunakan untuk mencari Github. |
| `-Type` | String | — | — | Named | `'Code'` | Kategori utama yang akan dicari. Defaultnya adalah 'Code'. |
| `-In` | String[] | — | — | Named | — | Bidang yang akan dicari. Hanya opsi yang valid untuk Tipe yang dipilih yang akan diterima. |
| `-User` | String | — | — | Named | — | Batasi pencarian ke sumber daya milik pengguna (repositori, kode, isu, dll). |
| `-Org` | String | — | — | Named | — | Batasi pencarian ke suatu organisasi. |
| `-Repo` | String | — | — | Named | — | Batasi pencarian ke repositori bernama ('owner/repo'). |
| `-Path` | String | — | — | Named | — | Batasi pencarian kode ke jalur file atau direktori tertentu (mendukung wildcard sesuai Sintaks Pencarian GitHub). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filter hasil berdasarkan nama file (bukan path). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Batasi pencarian kode hanya pada ekstensi file. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Filter berdasarkan bahasa pemrograman. |
| `-Size` | String | — | — | Named | — | Ukuran file/repo. Mendukung sintaks numerik dan rentang (lihat contoh). |
| `-State` | String | — | — | Named | — | Untuk masalah/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Isu/PR: batasi hanya yang dibuat oleh pengguna tertentu. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Isu/PR: batasi hanya yang ditugaskan ke pengguna. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Isu/PR: harus diberi label dengan semua string yang ditentukan. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Isu/PR: harus kekurangan metadata tertentu (misalnya, label, milestone). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Bidang pengurutan (tergantung pada Jenis). Misalnya, "stars", "forks", "updated", dll. |
| `-Order` | String | — | — | Named | — | Urutan "asc" atau "desc" untuk pengurutan. |
| `-PerPage` | Int32 | — | — | Named | `10` | Ukuran halaman (maks 100). |
| `-Page` | Int32 | — | — | Named | `1` | Nomor halaman untuk hasil yang dipaginasi. |
| `-Token` | String | — | — | Named | — | Token OAuth GitHub atau Token Akses Pribadi. Jika tidak disediakan, menggunakan GITHUB_TOKEN atau variabel lingkungan. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Mengatur header HTTP accept-lang browser. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Penundaan antara pengiriman urutan kunci yang berbeda dalam milidetik. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Monitor yang digunakan untuk menampilkan hasil. 0 = default, -1 = buang, -2 = sekunder. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | Lebar awal jendela browser. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | Tinggi awal jendela browser. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | Posisi X awal dari jendela browser. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | Posisi Y awal dari jendela browser. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes yang akan dikirim ke jendela browser, lihat dokumentasi untuk cmdlet GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Hanya cocokkan hasil yang sensitif terhadap huruf besar-kecil (jika didukung). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Jalankan pencarian secara asinkron sebagai pekerjaan PowerShell. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | @{response==== PENJELASAN ===
Ringkasan: Menambahkan item ke dalam namespace, atau menghapusnya.
Alias: Tambah-Hapus-Namespace

Penjelasan: Cmdlet `Add-Remove-Namespace` memungkinkan Anda untuk menambahkan atau menghapus item dari namespace. Saat Anda menambahkan item, item tersebut dimasukkan ke dalam namespace pada posisi yang ditentukan. Saat Anda menghapus item, item tersebut dikeluarkan dari namespace dan semua referensi terkait diperbarui. Cmdlet ini berguna untuk mengelola konten namespace dalam file konfigurasi atau struktur data.

Contoh:

Contoh 1: Menambahkan item ke namespace

Add-Remove-Namespace -Namespace "MyNamespace" -Item "MyItem" -Action Add

Perintah ini menambahkan "MyItem" ke namespace "MyNamespace".

Contoh 2: Menghapus item dari namespace

Add-Remove-Namespace -Namespace "MyNamespace" -Item "MyItem" -Action Remove

Perintah ini menghapus "MyItem" dari namespace "MyNamespace" jika ada.

Contoh 3: Menambahkan item dengan posisi yang ditentukan

Add-Remove-Namespace -Namespace "MyNamespace" -Item "MyItem" -Action Add -Position 2

Perintah ini menambahkan "MyItem" di posisi 2 dalam namespace "MyNamespace".

Catatan: Parameter -Action menentukan apakah akan menambahkan atau menghapus. Parameter -Position bersifat opsional dan hanya berlaku saat menambahkan.} *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Gunakan mode API sebagai ganti membuka di peramban web. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Membuka browser dalam mode penjelajahan pribadi/penyamaran untuk pencarian anonim. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Memaksa mengaktifkan port debugging, menghentikan browser yang sudah ada jika diperlukan. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Membuka hasil pencarian di peramban Microsoft Edge. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Membuka hasil pencarian di peramban Google Chrome. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Membuka hasil pencarian di Microsoft Edge atau Google Chrome, tergantung pada browser default yang digunakan. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Membuka hasil pencarian di peramban Mozilla Firefox. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Gunakan browser yang dikelola Playwright sebagai pengganti browser yang terinstal di OS |
| `-Webkit` | SwitchParameter | — | — | Named | — | Membuka browser WebKit yang dikelola Playwright. Secara implisit berarti -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Jalankan peramban tanpa jendela yang terlihat |
| `-All` | SwitchParameter | — | — | Named | — | Membuka di semua peramban modern yang terdaftar |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Membuka browser dalam mode layar penuh. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di sisi kiri layar. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di sisi kanan layar. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di sisi atas layar. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Tempatkan jendela peramban di sisi bawah layar. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di tengah layar. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Sembunyikan kontrol browser. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Mencegah pemuatan ekstensi peramban. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Nonaktifkan pemblokir popup di peramban. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokuskan jendela browser setelah dibuka. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Atur jendela browser ke latar depan setelah dibuka. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maksimalkan jendela setelah penempatan. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Mengembalikan fokus jendela PowerShell. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Jangan gunakan kembali jendela browser yang sudah ada, sebaliknya, buat yang baru. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Mengembalikan objek [System.Diagnostics.Process] dari proses browser dalam mode web atau objek kueri dalam mode API. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Jangan buka browser web, cukup kembalikan URL-nya. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Setelah membuka peramban web, kembalikan URL-nya. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Loloskan karakter kontrol saat mengirimkan tombol. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mencegah mengembalikan fokus keyboard ke PowerShell setelah mengirim tombol. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Kirim Shift+Enter alih-alih Enter biasa untuk jeda baris. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Hapus batas jendela dan bilah judul untuk tampilan yang lebih bersih. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser bersebelahan dengan PowerShell di monitor yang sama. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Hapus pengaturan alternatif yang disimpan dalam sesi untuk preferensi. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Simpan pengaturan hanya di preferensi persisten tanpa mempengaruhi sesi. *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Parameter Details

### `-Query <String[]>`

> Kueri pencarian untuk dijalankan di Github. Mendukung beberapa kueri dan input pipeline untuk pencarian batch. Setiap kueri akan dienkode URL dan digunakan untuk mencari Github.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Queries` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Type <String>`

> Kategori utama yang akan dicari. Defaultnya adalah 'Code'.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Code'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-In <String[]>`

> Bidang yang akan dicari. Hanya opsi yang valid untuk Tipe yang dipilih yang akan diterima.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-User <String>`

> Batasi pencarian ke sumber daya milik pengguna (repositori, kode, isu, dll).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Org <String>`

> Batasi pencarian ke suatu organisasi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repo <String>`

> Batasi pencarian ke repositori bernama ('owner/repo').

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> Batasi pencarian kode ke jalur file atau direktori tertentu (mendukung wildcard sesuai Sintaks Pencarian GitHub).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Filename <String>`

> Filter hasil berdasarkan nama file (bukan path).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Extension <String>`

> Batasi pencarian kode hanya pada ekstensi file.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Language <String>`

> Filter berdasarkan bahasa pemrograman.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Size <String>`

> Ukuran file/repo. Mendukung sintaks numerik dan rentang (lihat contoh).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-State <String>`

> Untuk masalah/PR.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Author <String>`

> Isu/PR: batasi hanya yang dibuat oleh pengguna tertentu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Assignee <String>`

> Isu/PR: batasi hanya yang ditugaskan ke pengguna.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Labels <String[]>`

> Isu/PR: harus diberi label dengan semua string yang ditentukan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-No <String[]>`

> Isu/PR: harus kekurangan metadata tertentu (misalnya, label, milestone).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-SortBy <String>`

> Bidang pengurutan (tergantung pada Jenis). Misalnya, "stars", "forks", "updated", dll.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Order <String>`

> Urutan "asc" atau "desc" untuk pengurutan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerPage <Int32>`

> Ukuran halaman (maks 100).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `10` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Int32>`

> Nomor halaman untuk hasil yang dipaginasi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> Token OAuth GitHub atau Token Akses Pribadi. Jika tidak disediakan, menggunakan GITHUB_TOKEN atau variabel lingkungan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-AcceptLang <String>`

> Mengatur header HTTP accept-lang browser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Penundaan antara pengiriman urutan kunci yang berbeda dalam milidetik.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Monitor <Int32>`

> Monitor yang digunakan untuk menampilkan hasil. 0 = default, -1 = buang, -2 = sekunder.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Width <Int32>`

> Lebar awal jendela browser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Height <Int32>`

> Tinggi awal jendela browser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-X <Int32>`

> Posisi X awal dari jendela browser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Y <Int32>`

> Posisi Y awal dari jendela browser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-KeysToSend <String[]>`

> Keystrokes yang akan dikirim ke jendela browser, lihat dokumentasi untuk cmdlet GenXdev\Send-Key.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-CaseSensitive`

> Hanya cocokkan hasil yang sensitif terhadap huruf besar-kecil (jika didukung).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsJob`

> Jalankan pencarian secara asinkron sebagai pekerjaan PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-RawResponse`

> @{response==== PENJELASAN ===
Ringkasan: Menambahkan item ke dalam namespace, atau menghapusnya.
Alias: Tambah-Hapus-Namespace

Penjelasan: Cmdlet `Add-Remove-Namespace` memungkinkan Anda untuk menambahkan atau menghapus item dari namespace. Saat Anda menambahkan item, item tersebut dimasukkan ke dalam namespace pada posisi yang ditentukan. Saat Anda menghapus item, item tersebut dikeluarkan dari namespace dan semua referensi terkait diperbarui. Cmdlet ini berguna untuk mengelola konten namespace dalam file konfigurasi atau struktur data.

Contoh:

Contoh 1: Menambahkan item ke namespace

Add-Remove-Namespace -Namespace "MyNamespace" -Item "MyItem" -Action Add

Perintah ini menambahkan "MyItem" ke namespace "MyNamespace".

Contoh 2: Menghapus item dari namespace

Add-Remove-Namespace -Namespace "MyNamespace" -Item "MyItem" -Action Remove

Perintah ini menghapus "MyItem" dari namespace "MyNamespace" jika ada.

Contoh 3: Menambahkan item dengan posisi yang ditentukan

Add-Remove-Namespace -Namespace "MyNamespace" -Item "MyItem" -Action Add -Position 2

Perintah ini menambahkan "MyItem" di posisi 2 dalam namespace "MyNamespace".

Catatan: Parameter -Action menentukan apakah akan menambahkan atau menghapus. Parameter -Position bersifat opsional dan hanya berlaku saat menambahkan.}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Api`

> Gunakan mode API sebagai ganti membuka di peramban web.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Private`

> Membuka browser dalam mode penjelajahan pribadi/penyamaran untuk pencarian anonim.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Force`

> Memaksa mengaktifkan port debugging, menghentikan browser yang sudah ada jika diperlukan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Edge`

> Membuka hasil pencarian di peramban Microsoft Edge.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chrome`

> Membuka hasil pencarian di peramban Google Chrome.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chromium`

> Membuka hasil pencarian di Microsoft Edge atau Google Chrome, tergantung pada browser default yang digunakan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Firefox`

> Membuka hasil pencarian di peramban Mozilla Firefox.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PlayWright`

> Gunakan browser yang dikelola Playwright sebagai pengganti browser yang terinstal di OS

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

> Membuka browser WebKit yang dikelola Playwright. Secara implisit berarti -PlayWright

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

> Membuka browser dalam mode layar penuh.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Left`

> Tempatkan jendela browser di sisi kiri layar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Right`

> Tempatkan jendela browser di sisi kanan layar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Top`

> Tempatkan jendela browser di sisi atas layar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Bottom`

> Tempatkan jendela peramban di sisi bawah layar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Centered`

> Tempatkan jendela browser di tengah layar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ApplicationMode`

> Sembunyikan kontrol browser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBrowserExtensions`

> Mencegah pemuatan ekstensi peramban.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-DisablePopupBlocker`

> Nonaktifkan pemblokir popup di peramban.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-FocusWindow`

> Fokuskan jendela browser setelah dibuka.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SetForeground`

> Atur jendela browser ke latar depan setelah dibuka.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Maximize`

> Maksimalkan jendela setelah penempatan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-RestoreFocus`

> Mengembalikan fokus jendela PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NewWindow`

> Jangan gunakan kembali jendela browser yang sudah ada, sebaliknya, buat yang baru.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PassThru`

> Mengembalikan objek [System.Diagnostics.Process] dari proses browser dalam mode web atau objek kueri dalam mode API.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> Jangan buka browser web, cukup kembalikan URL-nya.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ReturnOnlyURL`

> Setelah membuka peramban web, kembalikan URL-nya.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyEscape`

> Loloskan karakter kontrol saat mengirimkan tombol.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Mencegah mengembalikan fokus keyboard ke PowerShell setelah mengirim tombol.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyUseShiftEnter`

> Kirim Shift+Enter alih-alih Enter biasa untuk jeda baris.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBorders`

> Hapus batas jendela dan bilah judul untuk tampilan yang lebih bersih.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SideBySide`

> Tempatkan jendela browser bersebelahan dengan PowerShell di monitor yang sama.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SessionOnly`

> Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ClearSession`

> Hapus pengaturan alternatif yang disimpan dalam sesi untuk preferensi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SkipSession`

> Simpan pengaturan hanya di preferensi persisten tanpa mempengaruhi sesi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-BuiltWithSiteInfo.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-YoutubeQuery.md)
