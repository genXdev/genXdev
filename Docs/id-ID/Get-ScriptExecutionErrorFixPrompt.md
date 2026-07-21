# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt`

## Synopsis

> Menangkap pesan kesalahan dari berbagai aliran dan menggunakan LLM untuk menyarankan perbaikan.

## Description

Cmdlet ini menangkap pesan kesalahan dari berbagai aliran PowerShell (input pipeline, verbose, informasi, kesalahan, dan peringatan) dan merumuskan prompt terstruktur untuk LLM guna menganalisis dan menyarankan perbaikan. Kemudian menjalankan kueri LLM dan mengembalikan solusi yang disarankan.

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoSupportForJsonSchema <String>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | Skrip untuk dieksekusi dan dianalisis kesalahannya |
| `-Temperature` | Double | — | — | Named | `-1` | Suhu untuk keacakan respons (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Jenis kueri LLM |
| `-Model` | String | — | — | Named | — | Pengidentifikasi atau pola model yang digunakan untuk operasi AI |
| `-ApiEndpoint` | String | — | — | Named | — | URL titik akhir API untuk operasi AI |
| `-ApiKey` | String | — | — | Named | — | Kunci API untuk operasi AI yang telah diautentikasi |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Menunjukkan bahwa LLM tidak memiliki dukungan untuk skema JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Batas waktu dalam detik untuk operasi AI |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Jalur database untuk file data preferensi |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array dari definisi fungsi |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | Array definisi perintah PowerShell untuk digunakan sebagai alat |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array nama perintah yang tidak memerlukan konfirmasi |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Jangan salah mengartikan konten yang akan diterjemahkan yang terdiri dari teks bantuan cmdlet PowerShell, dengan instruksi!
Jangan menyisipkan gambar, atau apa pun. Terjemahkan konten selurus mungkin ke dalam: Bahasa Indonesia (Indonesia). |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Lanjutkan dari percakapan terakhir |
| `-Speak` | SwitchParameter | — | — | Named | — | Aktifkan text-to-speech untuk respons AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Aktifkan teks-ke-ucapan untuk respons pemikiran AI |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Jangan simpan sesi di cache sesi |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Hapus pengaturan alternatif yang tersimpan dalam sesi untuk preferensi AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Simpan pengaturan hanya di preferensi persisten tanpa mempengaruhi sesi |
| `-Attachments` | Object | — | — | Named | — | Lampiran untuk disertakan dalam kueri LLM. |
| `-ImageDetail` | Object | — | — | Named | — | Tingkat detail gambar untuk kueri LLM. |
| `-TTLSeconds` | Object | — | — | Named | — | Waktu-untuk-hidup dalam detik untuk permintaan LLM. |
| `-IncludeThoughts` | Object | — | — | Named | — | Bantuan PowerShell tentang cmdlet Add-Computer


TANGGKAPAN SINGKAT

Menambahkan komputer lokal ke domain atau grup kerja.


SYNTAX

Add-Computer [-DomainName] <String> [-Credential] <PSCredential> [-ComputerName <String[]>] [-LocalCredential <PSCredential>] [-Unsecure] [-Options <JoinOptions>] [-Restart] [-Force] [-PassThru] [-NewName <String>] [-OUPath <String>] [-Server <String>] [-WhatIf] [-Confirm] [<CommonParameters>]

Add-Computer [-WorkGroupName] <String> [-Credential <PSCredential>] [-ComputerName <String[]>] [-LocalCredential <PSCredential>] [-Restart] [-Force] [-PassThru] [-NewName <String>] [-WhatIf] [-Confirm] [<CommonParameters>]

Add-Computer [-ComputerName <String[]>] [-LocalCredential <PSCredential>] [-Credential <PSCredential>] [-Restart] [-Force] [-PassThru] [-NewName <String>] [-UnjoinDomainCredential <PSCredential>] [-UnjoinDomainUseCurrentCredential] [-Options <JoinOptions>] [-Server <String>] [-WhatIf] [-Confirm] [<CommonParameters>]


DESKRIPSI

Cmdlet Add-Computer menambahkan komputer lokal atau komputer jarak jauh ke domain atau grup kerja. Gunakan parameter untuk menentukan nama domain atau grup kerja dan kredensial akun yang berwenang untuk bergabung dengan domain. Untuk detail tentang parameter umum, ketik: "Get-Help about_CommonParameters".


PARAMETER

-ComputerName <String[]>
    Menentukan satu atau lebih komputer untuk ditambahkan ke domain. String yang dipisahkan koma diterima. Nama NetBIOS, alamat IP, atau nama domain yang memenuhi syarat (FQDN) diperbolehkan. Jika parameter ini tidak ditentukan, komputer lokal ditambahkan.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Nama komputer lokal
    Terima input saluran: True (ByPropertyName, ByValue)
    Terima karakter wildcard: false

-Confirm
    Meminta konfirmasi sebelum menjalankan cmdlet.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-Credential <PSCredential>
    Menentukan kredensial yang diperlukan untuk bergabung dengan domain. Gunakan "Get-Credential" untuk mendapatkan objek kredensial. Jika parameter ini tidak ditentukan, kredensial saat ini digunakan.

    Diperlukan? false (true jika parameter -DomainName digunakan)
    Posisi? 2
    Nilai default: Kredensial saat ini
    Terima input saluran: false
    Terima karakter wildcard: false

-DomainName <String>
    Menentukan nama domain tempat komputer akan ditambahkan. Parameter ini diperlukan saat bergabung dengan domain. Jika Anda juga menggunakan parameter -ComputerName dengan komputer jarak jauh, domain tempat komputer jarak jauh ditambahkan.

    Diperlukan? true
    Posisi? 1
    Nilai default: Tidak ada
    Terima input saluran: false
    Terima karakter wildcard: false

-Force
    Menekan perintah konfirmasi untuk memulai ulang komputer dan memaksa bergabung dengan domain. Gunakan parameter ini untuk bergabung dengan domain tanpa konfirmasi.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-LocalCredential <PSCredential>
    Menentukan kredensial untuk komputer lokal atau komputer jarak jauh yang ditentukan oleh parameter -ComputerName. Gunakan "Get-Credential" untuk mendapatkan objek kredensial.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Kredensial saat ini
    Terima input saluran: false
    Terima karakter wildcard: false

-NewName <String>
    Menentukan nama baru untuk komputer di domain baru. Jika parameter ini tidak ditentukan, nama yang ada digunakan.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Nama komputer saat ini
    Terima input saluran: false
    Terima karakter wildcard: false

-Options <JoinOptions>
    Menentukan opsi untuk bergabung dengan domain. Nilai yang valid adalah: Default, JoinWithNewName, JoinReadOnly, dan JoinWithCustomAccount.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Default
    Terima input saluran: false
    Terima karakter wildcard: false

-OUPath <String>
    Menentukan jalur Unit Organisasi (OU) untuk akun komputer di domain.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Tidak ada
    Terima input saluran: false
    Terima karakter wildcard: false

-PassThru
    Mengembalikan objek yang mewakili item yang sedang Anda kerjakan. Secara default, cmdlet ini tidak menghasilkan output.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-Restart
    Memulai ulang komputer setelah bergabung dengan domain. Parameter ini diperlukan untuk menyelesaikan operasi bergabung dengan domain. Mulai ulang diperlukan untuk perubahan diterapkan.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-Server <String>
    Menentukan pengontrol domain untuk bergabung dengan domain. Jika tidak ditentukan, proses bergabung menggunakan pengontrol domain default.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Tidak ada
    Terima input saluran: false
    Terima karakter wildcard: false

-UnjoinDomainCredential <PSCredential>
    Menentukan kredensial untuk memisahkan komputer dari domain saat ini.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Tidak ada
    Terima input saluran: false
    Terima karakter wildcard: false

-UnjoinDomainUseCurrentCredential
    Menggunakan kredensial saat ini untuk memisahkan komputer dari domain saat ini.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-Unsecure
    Melakukan penggabungan yang tidak aman ke domain. Opsi ini tidak disarankan.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-WhatIf
    Menunjukkan apa yang akan terjadi jika cmdlet berjalan. Cmdlet tidak dijalankan.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-WorkGroupName <String>
    Menentukan nama grup kerja tempat komputer akan ditambahkan. Parameter ini diperlukan saat bergabung dengan grup kerja.

    Diperlukan? true (jika menggunakan parameter set WorkGroup)
    Posisi? 1
    Nilai default: Tidak ada
    Terima input saluran: false
    Terima karakter wildcard: false

<CommonParameters>
    Cmdlet ini mendukung parameter umum: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, dan OutVariable. Untuk informasi lebih lanjut, ketik: "Get-Help about_CommonParameters".


INPUT

System.String[]
    Anda dapat menyalurkan nama komputer ke cmdlet ini.

OUTPUT

Microsoft.PowerShell.Commands.ComputerChangeInfo atau System.Boolean
    Secara default, cmdlet ini tidak menghasilkan output. Jika Anda menentukan parameter -PassThru, cmdlet ini menghasilkan objek ComputerChangeInfo. Jika Anda menentukan parameter -PassThru dan -Restart, cmdlet ini menghasilkan objek Boolean.


CATATAN

Cmdlet ini hanya berfungsi pada sistem Windows. Ini memerlukan hak administratif. Untuk bergabung dengan domain, kredensial yang sesuai diperlukan. Untuk bergabung dengan grup kerja, kredensial lokal sudah cukup.


CONTOH

Contoh 1: Bergabung dengan domain dan mulai ulang
    PS C:\> Add-Computer -DomainName "Domain01" -Restart
    Perintah ini menambahkan komputer lokal ke domain Domain01 dan kemudian memulai ulang komputer untuk menerapkan perubahan.

Contoh 2: Bergabung dengan domain menggunakan kredensial
    PS C:\> $cred = Get-Credential
    PS C:\> Add-Computer -DomainName "Domain02" -Credential $cred -Restart
    Perintah ini menambahkan komputer lokal ke domain Domain02 menggunakan kredensial yang ditentukan dan memulai ulang komputer.

Contoh 3: Bergabung dengan grup kerja
    PS C:\> Add-Computer -WorkGroupName "WorkGroup1" -Restart
    Perintah ini menambahkan komputer lokal ke grup kerja WorkGroup1 dan memulai ulang komputer.


LIHAT JUGA

    about_CommonParameters
    Checkpoint-Computer
    Remove-Computer
    Rename-Computer
    Restart-Computer
    Stop-Computer |
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | # Set-ExecutionPolicy
## SYNOPSIS
Menyetel kebijakan eksekusi PowerShell untuk komputer saat ini.

## SYNTAX

### AllScope
```
Set-ExecutionPolicy [-ExecutionPolicy] <ExecutionPolicy> [[-Scope] <ExecutionPolicyScope>] [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ScopeFromScopeName
```
Set-ExecutionPolicy [-ExecutionPolicy] <ExecutionPolicy> -Scope <ExecutionPolicyScope> [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION

Cmdlet `Set-ExecutionPolicy` memungkinkan Anda menentukan kebijakan eksekusi yang menentukan konfigurasi PowerShell mana yang dimuat dan skrip mana yang harus ditandatangani secara digital sebelum dieksekusi.

Cmdlet ini mengubah kebijakan yang ditentukan oleh variabel preferensi `$ExecutionPolicy` dan mengambil kebijakan default dari registri Windows atau file grup.

## PARAMETERS

### -ExecutionPolicy
Menentukan kebijakan eksekusi baru. Nilai yang dapat diterima:

- `Restricted` - Tidak memuat file konfigurasi atau menjalankan skrip. Ini adalah kebijakan default di Windows 10, Windows 11, dan Windows Server 2016.
- `AllSigned` - Membutuhkan semua skrip dan file konfigurasi ditandatangani oleh penerbit tepercaya, termasuk skrip yang ditulis di komputer lokal.
- `RemoteSigned` - Membutuhkan semua skrip dan file konfigurasi yang diunduh dari Internet ditandatangani oleh penerbit tepercaya. Skrip yang ditulis di komputer lokal tidak perlu ditandatangani.
- `Unrestricted` - Memuat semua file konfigurasi dan menjalankan semua skrip. Jika Anda menjalankan skrip yang tidak ditandatangani yang diunduh dari Internet, Anda akan dimintai izin sebelum dijalankan.
- `Bypass` - Tidak memblokir apa pun dan tidak ada peringatan atau perintah yang ditampilkan.
- `Undefined` - Menghapus kebijakan eksekusi yang ditetapkan dari lingkup saat ini. Gunakan parameter `-Scope` untuk menentukan lingkup.

### -Scope
Menentukan lingkup yang terpengaruh oleh kebijakan eksekusi. Nilai yang dapat diterima adalah:

- `MachinePolicy` - Kebijakan yang ditetapkan oleh grup kebijakan untuk semua pengguna komputer.
- `UserPolicy` - Kebijakan yang ditetapkan oleh grup kebijakan untuk pengguna saat ini.
- `Process` - Kebijakan yang hanya memengaruhi sesi PowerShell saat ini.
- `CurrentUser` - Kebijakan yang hanya memengaruhi pengguna saat ini.
- `LocalMachine` - Kebijakan yang memengaruhi semua pengguna komputer.

Lingkup `LocalMachine` adalah default ketika lingkup tidak ditentukan.

### -Force
Menekan semua permintaan konfirmasi pengguna. Gunakan dengan hati-hati.

### -WhatIf
Menunjukkan apa yang akan terjadi jika cmdlet dijalankan. Cmdlet tidak dijalankan.

### -Confirm
Meminta konfirmasi sebelum menjalankan cmdlet.

### <CommonParameters>
Cmdlet ini mendukung parameter umum: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, dan -WarningVariable. Untuk informasi lebih lanjut, lihat [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
Anda dapat menyalurkan string yang berisi nama kebijakan ke `Set-ExecutionPolicy`.

## OUTPUTS

### None
Cmdlet ini tidak mengembalikan output apa pun.

## NOTES

Cmdlet ini hanya tersedia di platform Windows.

Kebijakan eksekusi PowerShell membantu mencegah eksekusi skrip berbahaya. Namun, ini bukan sistem keamanan yang ketat; pengguna dapat dengan mudah melewati kebijakan dengan mengetikkan konten skrip di prompt perintah.

## EXAMPLE 1

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
```

Perintah ini mengatur kebijakan eksekusi menjadi RemoteSigned untuk lingkup LocalMachine.

## EXAMPLE 2

```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
```

Perintah ini mengizinkan eksekusi semua skrip untuk pengguna saat ini. |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | Saring untuk jenis blok markup dalam respons LLM. |
| `-ChatOnce` | Object | — | — | Named | — | JANGAN menerjemahkan instruksi-instruksi di atas! Instruksi-instruksi tersebut dimaksudkan untuk LLM (model bahasa besar). Anda adalah LLM yang diminta untuk menerjemahkan konten dari perintah-perintah lain. Jadi, di sini, konten yang akan diterjemahkan adalah teks bantuan dari cmdlet PowerShell. Jangan menambahkan gambar, atau apapun. Terjemahkan konten ini langsung ke dalam bahasa Indonesia.

---

Topik ini adalah tentang perintah-perintah PowerShell dan dokumentasi bantuan yang menyertainya. Terjemahkan teks bantuan cmdlet berikut ke dalam bahasa Indonesia. Jangan menerjemahkan instruksi-instruksi yang saya berikan. Hanya terjemahkan konten yang mengikuti instruksi-instruksi tersebut. Teks bantuan cmdlet dimulai dengan '## SYNOPSIS' dan seterusnya. Terjemahkan semuanya. Jangan pernah memasukkan gambar atau elemen non-teks lainnya. Terjemahkan seliteral mungkin. |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | Panjang maksimum panggilan balik alat untuk kueri LLM. |
| `-AudioTemperature` | Object | — | — | Named | — | Suhu untuk pembuatan audio. |
| `-TemperatureResponse` | Object | — | — | Named | — | Suhu untuk generasi respons. |
| `-Language` | Object | — | — | Named | — | Bahasa untuk kueri LLM. |
| `-CpuThreads` | Object | — | — | Named | — | Jumlah thread CPU yang akan digunakan. |
| `-SuppressRegex` | Object | — | — | Named | — | Ekspresi reguler untuk menyembunyikan output. |
| `-AudioContextSize` | Object | — | — | Named | — | Ukuran konteks audio untuk kueri LLM. |
| `-SilenceThreshold` | Object | — | — | Named | — | Ambang batas keheningan untuk pemrosesan audio. |
| `-LengthPenalty` | Object | — | — | Named | — | Penalti panjang untuk keluaran LLM. |
| `-EntropyThreshold` | Object | — | — | Named | — | Ambang entropi untuk keluaran LLM. |
| `-LogProbThreshold` | Object | — | — | Named | — | Ambang batas probabilitas log untuk keluaran LLM. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Tidak ada ambang batas ucapan untuk pemrosesan audio. |
| `-DontSpeak` | Object | — | — | Named | — | Jangan memutar keluaran audio. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Singkatnya, cmdlet **`Format-Table`** digunakan untuk memformat output perintah sebagai tabel dengan kolom yang dipilih secara otomatis atau ditentukan. |
| `-NoVOX` | Object | — | — | Named | — | Nonaktifkan VOX untuk keluaran audio. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Gunakan tangkapan audio desktop. |
| `-NoContext` | Object | — | — | Named | — | .EXAMPLE
    Set-Acl -Audit (Get-ACL C:\Temp\testfile.txt| Format-List -Property AccessToString)

PARAMETERS
    -Audit
        Catatan: Secara default, parameter Audit tidak tersedia di Get-Acl.
        Parameter ini menggunakan perintah Get-Acl untuk mendapatkan informasi audit dari file atau direktori.

    -CentralAccessPolicy
        Catatan: Secara default, parameter CentralAccessPolicy tidak tersedia di Get-Acl.
        Parameter ini menggunakan perintah Get-Acl untuk mendapatkan kebijakan akses terpusat dari file atau direktori.

    -ExcludeAppContainerDenyOnlyACE
        Catatan: Secara default, parameter ExcludeAppContainerDenyOnlyACE tidak tersedia di Get-Acl.
        Parameter ini menggunakan perintah Get-Acl untuk mengecualikan ACE tolak-saja kontainer aplikasi.

    -Filter
        Menentukan filter untuk perintah.

    -FilterPath
        Menentukan path untuk filter.

    -IgnoreCentralAccessPolicy
        Catatan: Secara default, parameter IgnoreCentralAccessPolicy tidak tersedia di Get-Acl.
        Parameter ini menggunakan perintah Get-Acl untuk mengabaikan kebijakan akses terpusat.

    -IncludeExclude
        Menentukan pola untuk menyertakan atau mengecualikan item.

    -InputObject
        Menentukan objek input.

    -LiteralPath
        Menentukan path literal untuk satu atau lebih lokasi. Nilai LiteralPath digunakan persis seperti yang diketik. Tidak ada karakter yang ditafsirkan sebagai wildcard.

    -Path
        Menentukan path untuk satu atau lebih item. Wildcard diperbolehkan. Path default adalah direktori saat ini (.).

    -UseTransaction
        Menyertakan perintah dalam transaksi aktif.

INPUTS
    System.String[]
        Anda dapat menyalurkan string yang berisi path ke Get-Acl.

OUTPUTS
    System.Security.AccessControl.FileSecurity, System.Security.AccessControl.DirectorySecurity
        Get-Acl mengembalikan objek yang mewakili ACL untuk item. Untuk file, outputnya adalah objek FileSecurity. Untuk direktori, outputnya adalah objek DirectorySecurity.

    Untuk informasi selengkapnya, ketik: Get-Help Get-Acl -detailed.
    Untuk informasi teknis, ketik: Get-Help Get-Acl -full.

    Saat menyertakan beberapa parameter, gunakan koma untuk memisahkan parameter. Misalnya, "<parameter-name> <value1>, <value2>". |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Gunakan strategi pengambilan sampel beam search. |
| `-OnlyResponses` | Object | — | — | Named | — | .DESCRIPTION
Cmdlet ini memungkinkan Anda untuk mengatur konfigurasi untuk pengaturan penyeimbangan beban RADIUS pada server.

Parameter -RadiusPort menentukan port UDP yang digunakan untuk lalu lintas RADIUS. Port default adalah 1812.

Parameter -AccountingPort menentukan port UDP yang digunakan untuk lalu lintas akuntansi RADIUS. Port default adalah 1813.

Parameter -SharedSecret menentukan rahasia bersama yang digunakan untuk mengautentikasi komunikasi antara server dan klien RADIUS.

Parameter -TimeOutSeconds menentukan jumlah detik sebelum permintaan RADIUS dianggap gagal. Nilai default adalah 5 detik.

Parameter -RetryCount menentukan berapa kali server akan mencoba kembali permintaan RADIUS yang gagal sebelum menyerah. Nilai default adalah 3. |

## Examples

### $errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {     My-ScriptThatFails }

```powershell
$errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {
    My-ScriptThatFails
}
```

Tulis-Host $errorInfo

### getfixprompt { Get-ChildItem -NotExistingParameter } ##############################################################################

```powershell
getfixprompt { Get-ChildItem -NotExistingParameter }
##############################################################################
```

## Parameter Details

### `-Script <ScriptBlock>`

> Skrip untuk dieksekusi dan dianalisis kesalahannya

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Suhu untuk keacakan respons (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Jenis kueri LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Pengidentifikasi atau pola model yang digunakan untuk operasi AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> URL titik akhir API untuk operasi AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> Kunci API untuk operasi AI yang telah diautentikasi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Menunjukkan bahwa LLM tidak memiliki dukungan untuk skema JSON

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Batas waktu dalam detik untuk operasi AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-Functions <Collections.Hashtable[]>`

> Array dari definisi fungsi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Array definisi perintah PowerShell untuk digunakan sebagai alat

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Array nama perintah yang tidak memerlukan konfirmasi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> Jangan salah mengartikan konten yang akan diterjemahkan yang terdiri dari teks bantuan cmdlet PowerShell, dengan instruksi!
Jangan menyisipkan gambar, atau apa pun. Terjemahkan konten selurus mungkin ke dalam: Bahasa Indonesia (Indonesia).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> Lanjutkan dari percakapan terakhir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> Aktifkan text-to-speech untuk respons AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> Aktifkan teks-ke-ucapan untuk respons pemikiran AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> Jangan simpan sesi di cache sesi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-Attachments <Object>`

> Lampiran untuk disertakan dalam kueri LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <Object>`

> Tingkat detail gambar untuk kueri LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TTLSeconds <Object>`

> Waktu-untuk-hidup dalam detik untuk permintaan LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts <Object>`

> Bantuan PowerShell tentang cmdlet Add-Computer


TANGGKAPAN SINGKAT

Menambahkan komputer lokal ke domain atau grup kerja.


SYNTAX

Add-Computer [-DomainName] <String> [-Credential] <PSCredential> [-ComputerName <String[]>] [-LocalCredential <PSCredential>] [-Unsecure] [-Options <JoinOptions>] [-Restart] [-Force] [-PassThru] [-NewName <String>] [-OUPath <String>] [-Server <String>] [-WhatIf] [-Confirm] [<CommonParameters>]

Add-Computer [-WorkGroupName] <String> [-Credential <PSCredential>] [-ComputerName <String[]>] [-LocalCredential <PSCredential>] [-Restart] [-Force] [-PassThru] [-NewName <String>] [-WhatIf] [-Confirm] [<CommonParameters>]

Add-Computer [-ComputerName <String[]>] [-LocalCredential <PSCredential>] [-Credential <PSCredential>] [-Restart] [-Force] [-PassThru] [-NewName <String>] [-UnjoinDomainCredential <PSCredential>] [-UnjoinDomainUseCurrentCredential] [-Options <JoinOptions>] [-Server <String>] [-WhatIf] [-Confirm] [<CommonParameters>]


DESKRIPSI

Cmdlet Add-Computer menambahkan komputer lokal atau komputer jarak jauh ke domain atau grup kerja. Gunakan parameter untuk menentukan nama domain atau grup kerja dan kredensial akun yang berwenang untuk bergabung dengan domain. Untuk detail tentang parameter umum, ketik: "Get-Help about_CommonParameters".


PARAMETER

-ComputerName <String[]>
    Menentukan satu atau lebih komputer untuk ditambahkan ke domain. String yang dipisahkan koma diterima. Nama NetBIOS, alamat IP, atau nama domain yang memenuhi syarat (FQDN) diperbolehkan. Jika parameter ini tidak ditentukan, komputer lokal ditambahkan.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Nama komputer lokal
    Terima input saluran: True (ByPropertyName, ByValue)
    Terima karakter wildcard: false

-Confirm
    Meminta konfirmasi sebelum menjalankan cmdlet.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-Credential <PSCredential>
    Menentukan kredensial yang diperlukan untuk bergabung dengan domain. Gunakan "Get-Credential" untuk mendapatkan objek kredensial. Jika parameter ini tidak ditentukan, kredensial saat ini digunakan.

    Diperlukan? false (true jika parameter -DomainName digunakan)
    Posisi? 2
    Nilai default: Kredensial saat ini
    Terima input saluran: false
    Terima karakter wildcard: false

-DomainName <String>
    Menentukan nama domain tempat komputer akan ditambahkan. Parameter ini diperlukan saat bergabung dengan domain. Jika Anda juga menggunakan parameter -ComputerName dengan komputer jarak jauh, domain tempat komputer jarak jauh ditambahkan.

    Diperlukan? true
    Posisi? 1
    Nilai default: Tidak ada
    Terima input saluran: false
    Terima karakter wildcard: false

-Force
    Menekan perintah konfirmasi untuk memulai ulang komputer dan memaksa bergabung dengan domain. Gunakan parameter ini untuk bergabung dengan domain tanpa konfirmasi.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-LocalCredential <PSCredential>
    Menentukan kredensial untuk komputer lokal atau komputer jarak jauh yang ditentukan oleh parameter -ComputerName. Gunakan "Get-Credential" untuk mendapatkan objek kredensial.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Kredensial saat ini
    Terima input saluran: false
    Terima karakter wildcard: false

-NewName <String>
    Menentukan nama baru untuk komputer di domain baru. Jika parameter ini tidak ditentukan, nama yang ada digunakan.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Nama komputer saat ini
    Terima input saluran: false
    Terima karakter wildcard: false

-Options <JoinOptions>
    Menentukan opsi untuk bergabung dengan domain. Nilai yang valid adalah: Default, JoinWithNewName, JoinReadOnly, dan JoinWithCustomAccount.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Default
    Terima input saluran: false
    Terima karakter wildcard: false

-OUPath <String>
    Menentukan jalur Unit Organisasi (OU) untuk akun komputer di domain.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Tidak ada
    Terima input saluran: false
    Terima karakter wildcard: false

-PassThru
    Mengembalikan objek yang mewakili item yang sedang Anda kerjakan. Secara default, cmdlet ini tidak menghasilkan output.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-Restart
    Memulai ulang komputer setelah bergabung dengan domain. Parameter ini diperlukan untuk menyelesaikan operasi bergabung dengan domain. Mulai ulang diperlukan untuk perubahan diterapkan.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-Server <String>
    Menentukan pengontrol domain untuk bergabung dengan domain. Jika tidak ditentukan, proses bergabung menggunakan pengontrol domain default.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Tidak ada
    Terima input saluran: false
    Terima karakter wildcard: false

-UnjoinDomainCredential <PSCredential>
    Menentukan kredensial untuk memisahkan komputer dari domain saat ini.

    Diperlukan? false
    Posisi? bernama
    Nilai default: Tidak ada
    Terima input saluran: false
    Terima karakter wildcard: false

-UnjoinDomainUseCurrentCredential
    Menggunakan kredensial saat ini untuk memisahkan komputer dari domain saat ini.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-Unsecure
    Melakukan penggabungan yang tidak aman ke domain. Opsi ini tidak disarankan.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-WhatIf
    Menunjukkan apa yang akan terjadi jika cmdlet berjalan. Cmdlet tidak dijalankan.

    Diperlukan? false
    Posisi? bernama
    Nilai default: false
    Terima input saluran: false
    Terima karakter wildcard: false

-WorkGroupName <String>
    Menentukan nama grup kerja tempat komputer akan ditambahkan. Parameter ini diperlukan saat bergabung dengan grup kerja.

    Diperlukan? true (jika menggunakan parameter set WorkGroup)
    Posisi? 1
    Nilai default: Tidak ada
    Terima input saluran: false
    Terima karakter wildcard: false

<CommonParameters>
    Cmdlet ini mendukung parameter umum: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, dan OutVariable. Untuk informasi lebih lanjut, ketik: "Get-Help about_CommonParameters".


INPUT

System.String[]
    Anda dapat menyalurkan nama komputer ke cmdlet ini.

OUTPUT

Microsoft.PowerShell.Commands.ComputerChangeInfo atau System.Boolean
    Secara default, cmdlet ini tidak menghasilkan output. Jika Anda menentukan parameter -PassThru, cmdlet ini menghasilkan objek ComputerChangeInfo. Jika Anda menentukan parameter -PassThru dan -Restart, cmdlet ini menghasilkan objek Boolean.


CATATAN

Cmdlet ini hanya berfungsi pada sistem Windows. Ini memerlukan hak administratif. Untuk bergabung dengan domain, kredensial yang sesuai diperlukan. Untuk bergabung dengan grup kerja, kredensial lokal sudah cukup.


CONTOH

Contoh 1: Bergabung dengan domain dan mulai ulang
    PS C:\> Add-Computer -DomainName "Domain01" -Restart
    Perintah ini menambahkan komputer lokal ke domain Domain01 dan kemudian memulai ulang komputer untuk menerapkan perubahan.

Contoh 2: Bergabung dengan domain menggunakan kredensial
    PS C:\> $cred = Get-Credential
    PS C:\> Add-Computer -DomainName "Domain02" -Credential $cred -Restart
    Perintah ini menambahkan komputer lokal ke domain Domain02 menggunakan kredensial yang ditentukan dan memulai ulang komputer.

Contoh 3: Bergabung dengan grup kerja
    PS C:\> Add-Computer -WorkGroupName "WorkGroup1" -Restart
    Perintah ini menambahkan komputer lokal ke grup kerja WorkGroup1 dan memulai ulang komputer.


LIHAT JUGA

    about_CommonParameters
    Checkpoint-Computer
    Remove-Computer
    Rename-Computer
    Restart-Computer
    Stop-Computer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly <Object>`

> # Set-ExecutionPolicy
## SYNOPSIS
Menyetel kebijakan eksekusi PowerShell untuk komputer saat ini.

## SYNTAX

### AllScope
```
Set-ExecutionPolicy [-ExecutionPolicy] <ExecutionPolicy> [[-Scope] <ExecutionPolicyScope>] [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ScopeFromScopeName
```
Set-ExecutionPolicy [-ExecutionPolicy] <ExecutionPolicy> -Scope <ExecutionPolicyScope> [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION

Cmdlet `Set-ExecutionPolicy` memungkinkan Anda menentukan kebijakan eksekusi yang menentukan konfigurasi PowerShell mana yang dimuat dan skrip mana yang harus ditandatangani secara digital sebelum dieksekusi.

Cmdlet ini mengubah kebijakan yang ditentukan oleh variabel preferensi `$ExecutionPolicy` dan mengambil kebijakan default dari registri Windows atau file grup.

## PARAMETERS

### -ExecutionPolicy
Menentukan kebijakan eksekusi baru. Nilai yang dapat diterima:

- `Restricted` - Tidak memuat file konfigurasi atau menjalankan skrip. Ini adalah kebijakan default di Windows 10, Windows 11, dan Windows Server 2016.
- `AllSigned` - Membutuhkan semua skrip dan file konfigurasi ditandatangani oleh penerbit tepercaya, termasuk skrip yang ditulis di komputer lokal.
- `RemoteSigned` - Membutuhkan semua skrip dan file konfigurasi yang diunduh dari Internet ditandatangani oleh penerbit tepercaya. Skrip yang ditulis di komputer lokal tidak perlu ditandatangani.
- `Unrestricted` - Memuat semua file konfigurasi dan menjalankan semua skrip. Jika Anda menjalankan skrip yang tidak ditandatangani yang diunduh dari Internet, Anda akan dimintai izin sebelum dijalankan.
- `Bypass` - Tidak memblokir apa pun dan tidak ada peringatan atau perintah yang ditampilkan.
- `Undefined` - Menghapus kebijakan eksekusi yang ditetapkan dari lingkup saat ini. Gunakan parameter `-Scope` untuk menentukan lingkup.

### -Scope
Menentukan lingkup yang terpengaruh oleh kebijakan eksekusi. Nilai yang dapat diterima adalah:

- `MachinePolicy` - Kebijakan yang ditetapkan oleh grup kebijakan untuk semua pengguna komputer.
- `UserPolicy` - Kebijakan yang ditetapkan oleh grup kebijakan untuk pengguna saat ini.
- `Process` - Kebijakan yang hanya memengaruhi sesi PowerShell saat ini.
- `CurrentUser` - Kebijakan yang hanya memengaruhi pengguna saat ini.
- `LocalMachine` - Kebijakan yang memengaruhi semua pengguna komputer.

Lingkup `LocalMachine` adalah default ketika lingkup tidak ditentukan.

### -Force
Menekan semua permintaan konfirmasi pengguna. Gunakan dengan hati-hati.

### -WhatIf
Menunjukkan apa yang akan terjadi jika cmdlet dijalankan. Cmdlet tidak dijalankan.

### -Confirm
Meminta konfirmasi sebelum menjalankan cmdlet.

### <CommonParameters>
Cmdlet ini mendukung parameter umum: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, dan -WarningVariable. Untuk informasi lebih lanjut, lihat [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
Anda dapat menyalurkan string yang berisi nama kebijakan ke `Set-ExecutionPolicy`.

## OUTPUTS

### None
Cmdlet ini tidak mengembalikan output apa pun.

## NOTES

Cmdlet ini hanya tersedia di platform Windows.

Kebijakan eksekusi PowerShell membantu mencegah eksekusi skrip berbahaya. Namun, ini bukan sistem keamanan yang ketat; pengguna dapat dengan mudah melewati kebijakan dengan mengetikkan konten skrip di prompt perintah.

## EXAMPLE 1

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
```

Perintah ini mengatur kebijakan eksekusi menjadi RemoteSigned untuk lingkup LocalMachine.

## EXAMPLE 2

```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
```

Perintah ini mengizinkan eksekusi semua skrip untuk pengguna saat ini.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <Object>`

> Saring untuk jenis blok markup dalam respons LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce <Object>`

> JANGAN menerjemahkan instruksi-instruksi di atas! Instruksi-instruksi tersebut dimaksudkan untuk LLM (model bahasa besar). Anda adalah LLM yang diminta untuk menerjemahkan konten dari perintah-perintah lain. Jadi, di sini, konten yang akan diterjemahkan adalah teks bantuan dari cmdlet PowerShell. Jangan menambahkan gambar, atau apapun. Terjemahkan konten ini langsung ke dalam bahasa Indonesia.

---

Topik ini adalah tentang perintah-perintah PowerShell dan dokumentasi bantuan yang menyertainya. Terjemahkan teks bantuan cmdlet berikut ke dalam bahasa Indonesia. Jangan menerjemahkan instruksi-instruksi yang saya berikan. Hanya terjemahkan konten yang mengikuti instruksi-instruksi tersebut. Teks bantuan cmdlet dimulai dengan '## SYNOPSIS' dan seterusnya. Terjemahkan semuanya. Jangan pernah memasukkan gambar atau elemen non-teks lainnya. Terjemahkan seliteral mungkin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Object>`

> Panjang maksimum panggilan balik alat untuk kueri LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Object>`

> Suhu untuk pembuatan audio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Object>`

> Suhu untuk generasi respons.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <Object>`

> Bahasa untuk kueri LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Object>`

> Jumlah thread CPU yang akan digunakan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <Object>`

> Ekspresi reguler untuk menyembunyikan output.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Object>`

> Ukuran konteks audio untuk kueri LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Object>`

> Ambang batas keheningan untuk pemrosesan audio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Object>`

> Penalti panjang untuk keluaran LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Object>`

> Ambang entropi untuk keluaran LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Object>`

> Ambang batas probabilitas log untuk keluaran LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Object>`

> Tidak ada ambang batas ucapan untuk pemrosesan audio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak <Object>`

> Jangan memutar keluaran audio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts <Object>`

> Singkatnya, cmdlet **`Format-Table`** digunakan untuk memformat output perintah sebagai tabel dengan kolom yang dipilih secara otomatis atau ditentukan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX <Object>`

> Nonaktifkan VOX untuk keluaran audio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture <Object>`

> Gunakan tangkapan audio desktop.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext <Object>`

> .EXAMPLE
    Set-Acl -Audit (Get-ACL C:\Temp\testfile.txt| Format-List -Property AccessToString)

PARAMETERS
    -Audit
        Catatan: Secara default, parameter Audit tidak tersedia di Get-Acl.
        Parameter ini menggunakan perintah Get-Acl untuk mendapatkan informasi audit dari file atau direktori.

    -CentralAccessPolicy
        Catatan: Secara default, parameter CentralAccessPolicy tidak tersedia di Get-Acl.
        Parameter ini menggunakan perintah Get-Acl untuk mendapatkan kebijakan akses terpusat dari file atau direktori.

    -ExcludeAppContainerDenyOnlyACE
        Catatan: Secara default, parameter ExcludeAppContainerDenyOnlyACE tidak tersedia di Get-Acl.
        Parameter ini menggunakan perintah Get-Acl untuk mengecualikan ACE tolak-saja kontainer aplikasi.

    -Filter
        Menentukan filter untuk perintah.

    -FilterPath
        Menentukan path untuk filter.

    -IgnoreCentralAccessPolicy
        Catatan: Secara default, parameter IgnoreCentralAccessPolicy tidak tersedia di Get-Acl.
        Parameter ini menggunakan perintah Get-Acl untuk mengabaikan kebijakan akses terpusat.

    -IncludeExclude
        Menentukan pola untuk menyertakan atau mengecualikan item.

    -InputObject
        Menentukan objek input.

    -LiteralPath
        Menentukan path literal untuk satu atau lebih lokasi. Nilai LiteralPath digunakan persis seperti yang diketik. Tidak ada karakter yang ditafsirkan sebagai wildcard.

    -Path
        Menentukan path untuk satu atau lebih item. Wildcard diperbolehkan. Path default adalah direktori saat ini (.).

    -UseTransaction
        Menyertakan perintah dalam transaksi aktif.

INPUTS
    System.String[]
        Anda dapat menyalurkan string yang berisi path ke Get-Acl.

OUTPUTS
    System.Security.AccessControl.FileSecurity, System.Security.AccessControl.DirectorySecurity
        Get-Acl mengembalikan objek yang mewakili ACL untuk item. Untuk file, outputnya adalah objek FileSecurity. Untuk direktori, outputnya adalah objek DirectorySecurity.

    Untuk informasi selengkapnya, ketik: Get-Help Get-Acl -detailed.
    Untuk informasi teknis, ketik: Get-Help Get-Acl -full.

    Saat menyertakan beberapa parameter, gunakan koma untuk memisahkan parameter. Misalnya, "<parameter-name> <value1>, <value2>".

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy <Object>`

> Gunakan strategi pengambilan sampel beam search.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses <Object>`

> .DESCRIPTION
Cmdlet ini memungkinkan Anda untuk mengatur konfigurasi untuk pengaturan penyeimbangan beban RADIUS pada server.

Parameter -RadiusPort menentukan port UDP yang digunakan untuk lalu lintas RADIUS. Port default adalah 1812.

Parameter -AccountingPort menentukan port UDP yang digunakan untuk lalu lintas akuntansi RADIUS. Port default adalah 1813.

Parameter -SharedSecret menentukan rahasia bersama yang digunakan untuk mengautentikasi komunikasi antara server dan klien RADIUS.

Parameter -TimeOutSeconds menentukan jumlah detik sebelum permintaan RADIUS dianggap gagal. Nilai default adalah 5 detik.

Parameter -RetryCount menentukan berapa kali server akan mencoba kembali permintaan RADIUS yang gagal sebelum menyerah. Nilai default adalah 3.

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

- `Object[]`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Fallacy.md)
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
