# Open-ViralSimulation

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `viral`

## Synopsis

> Membuka permainan simulasi virus di peramban web dengan opsi konfigurasi yang ekstensif.

## Description

Membuka game simulasi virus di https://viral.genxdev.net/ di browser web tertentu dengan pengaturan jendela yang dapat dikonfigurasi, posisi, dan opsi perilaku. Mendukung beberapa browser, penjelajahan pribadi, mode aplikasi, dan fitur manajemen jendela yang komprehensif.

Fungsi ini menyediakan pengalaman simulasi virus interaktif dengan fitur seperti:
- Dukungan beberapa browser (Edge, Chrome, Firefox)
- Kontrol posisi dan ukuran jendela
- Opsi layar penuh dan mode aplikasi
- Kemampuan penjelajahan pribadi
- Dukungan otomatisasi keyboard
- Dukungan multi-monitor

## Syntax

```powershell
Open-ViralSimulation [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | Bahasa untuk tampilan konten web dan pengaturan bahasa browser |
| `-Private` | SwitchParameter | — | — | Named | — | Membuka di mode penjelajahan pribadi/rahasia |
| `-Force` | SwitchParameter | — | — | Named | — | Memaksa mengaktifkan port debugging, menghentikan browser yang sudah ada jika diperlukan |
| `-Edge` | SwitchParameter | — | — | Named | — | Terbuka di Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Membuka di Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Dibuka di Microsoft Edge atau Google Chrome, tergantung pada peramban bawaan apa yang digunakan |
| `-Firefox` | SwitchParameter | — | — | Named | — | Membuka di Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Gunakan browser yang dikelola Playwright sebagai pengganti browser yang terinstal di OS |
| `-Webkit` | SwitchParameter | — | — | Named | — | Membuka browser WebKit yang dikelola Playwright. Secara implisit berarti -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Jalankan peramban tanpa jendela yang terlihat |
| `-All` | SwitchParameter | — | — | Named | — | Membuka di semua peramban modern yang terdaftar |
| `-Monitor` | Int32 | — | — | Named | `-2` | Monitor yang digunakan, 0 = default, -1 = dibuang, -2 = Monitor sekunder yang dikonfigurasi, default ke $Global:DefaultSecondaryMonitor atau 2 jika tidak ditemukan |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Membuka dalam mode layar penuh |
| `-Width` | Int32 | — | — | Named | `-1` | Lebar awal jendela webbrowser |
| `-Height` | Int32 | — | — | Named | `-1` | Tinggi awal jendela browser web |
| `-X` | Int32 | — | — | Named | `-999999` | Posisi X awal dari jendela webbrowser |
| `-Y` | Int32 | — | — | Named | `-999999` | Posisi Y awal dari jendela webbrowser |
| `-Left` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di sisi kiri layar |
| `-Right` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di sisi kanan layar |
| `-Top` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di sisi atas layar |
| `-Bottom` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di sisi bawah layar |
| `-Centered` | SwitchParameter | — | — | Named | — | Tempatkan jendela browser di tengah layar |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Sembunyikan kontrol peramban |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Mencegah pemuatan ekstensi peramban |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Nonaktifkan pemblokir pop-up |
| `-AcceptLang` | String | — | — | Named | `$null` | Setel header http accept-lang browser |
| `-KeysToSend` | String[] | — | — | Named | — | Tekanan tombol yang akan dikirim ke jendela Browser, lihat dokumentasi untuk cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Lepaskan karakter kontrol saat mengirim kunci |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mencegah pengembalian fokus keyboard ke PowerShell setelah mengirim tombol |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Kirim Shift+Enter alih-alih Enter biasa untuk pemisah baris |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Penundaan antara pengiriman urutan tombol yang berbeda dalam milidetik |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokuskan jendela browser setelah dibuka |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Atur jendela browser ke latar depan setelah terbuka |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maksimalkan jendela setelah menentukan posisi |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Memulihkan jendela ke keadaan normal setelah diposisikan |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Memulihkan fokus jendela PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Jangan gunakan kembali jendela browser yang sudah ada, sebaliknya, buatlah yang baru |
| `-PassThru` | SwitchParameter | — | — | Named | — | Mengembalikan objek PowerShell dari proses browser |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Jangan buka peramban web, cukup kembalikan URL-nya |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Setelah membuka peramban web, kembalikan url |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Jangan dibuka dalam mode layar penuh |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Tampilkan kontrol browser |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Menghapus batas jendela peramban |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Posisikan jendela browser baik dalam mode layar penuh di monitor yang berbeda dari PowerShell, atau secara berdampingan dengan PowerShell di monitor yang sama |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Hapus pengaturan alternatif yang tersimpan dalam sesi untuk preferensi AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Simpan pengaturan hanya di preferensi persisten tanpa mempengaruhi sesi |

## Examples

### Open-ViralSimulation -Chrome -Private -NoFullScreen

```powershell
Open-ViralSimulation -Chrome -Private -NoFullScreen
```

Membuka simulasi viral di Google Chrome dengan mode penjelajahan pribadi dan tanpa layar penuh.

### viral -ch -incognito -nfs

```powershell
viral -ch -incognito -nfs
```

Membuka simulasi virus menggunakan alias dengan Chrome, mode penyamaran, dan tanpa layar penuh.

## Parameter Details

### `-Language <String>`

> Bahasa untuk tampilan konten web dan pengaturan bahasa browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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

> Memaksa mengaktifkan port debugging, menghentikan browser yang sudah ada jika diperlukan

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

> Dibuka di Microsoft Edge atau Google Chrome, tergantung pada peramban bawaan apa yang digunakan

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
### `-Monitor <Int32>`

> Monitor yang digunakan, 0 = default, -1 = dibuang, -2 = Monitor sekunder yang dikonfigurasi, default ke $Global:DefaultSecondaryMonitor atau 2 jika tidak ditemukan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
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

> Tekanan tombol yang akan dikirim ke jendela Browser, lihat dokumentasi untuk cmdlet GenXdev\Send-Key

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

> Lepaskan karakter kontrol saat mengirim kunci

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

> Mencegah pengembalian fokus keyboard ke PowerShell setelah mengirim tombol

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

> Kirim Shift+Enter alih-alih Enter biasa untuk pemisah baris

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

> Penundaan antara pengiriman urutan tombol yang berbeda dalam milidetik

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

> Jangan gunakan kembali jendela browser yang sudah ada, sebaliknya, buatlah yang baru

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Mengembalikan objek PowerShell dari proses browser

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

> Jangan buka peramban web, cukup kembalikan URL-nya

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> Setelah membuka peramban web, kembalikan url

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoFullScreen`

> Jangan dibuka dalam mode layar penuh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nfs`, `nf` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoApplicationMode`

> Tampilkan kontrol browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `na`, `napp`, `noappmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Menghapus batas jendela peramban

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

> Posisikan jendela browser baik dalam mode layar penuh di monitor yang berbeda dari PowerShell, atau secara berdampingan dengan PowerShell di monitor yang sama

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
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
## Related Links

- [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GameOfLife.md)
- [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GenXdevAppCatalog.md)
- [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-Timeline.md)
- [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-Yab.md)
- [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-YabAIBattle.md)
