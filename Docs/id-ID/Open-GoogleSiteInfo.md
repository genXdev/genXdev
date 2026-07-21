# Open-GoogleSiteInfo

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Membuka kueri informasi situs Google di peramban web.

## Description

Membuka beberapa kueri penelusuran Google yang terkait dengan informasi situs (site:, link:, related:) di peramban web untuk domain yang ditentukan.

## Syntax

```powershell
Open-GoogleSiteInfo -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Kueri yang akan dijalankan. |
| `-Language` | String | — | — | 2 | — | Bahasa dari hasil pencarian yang dikembalikan |
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
| `-Monitor` | Int32 | — | — | Named | `-1` | Monitor yang digunakan, 0 = default, -1 = dibuang, -2 = Monitor sekunder yang dikonfigurasi, default ke -1, tanpa posisi |
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
| `-NoBorders` | SwitchParameter | — | — | Named | — | Menghapus batas jendela dari jendela browser |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gunakan mode hanya sesi untuk profil browser (tanpa data persisten) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Hapus data sesi/profil browser sebelum membuka |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Lewati menggunakan sesi/profil browser (gunakan default) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Buka jendela browser berdampingan |
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
| `-PassThru` | SwitchParameter | — | — | Named | — | Mengembalikan objek [System.Diagnostics.Process] dari proses browser |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Jangan buka peramban web, cukup kembalikan URL-nya |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Setelah membuka peramban web, kembalikan url |

## Examples

### Open-GoogleSiteInfo -Queries "example.com" -Monitor 0

```powershell
Open-GoogleSiteInfo -Queries "example.com" -Monitor 0
```

### "example.com" | Open-GoogleSiteInfo -mon -1

```powershell
"example.com" | Open-GoogleSiteInfo -mon -1
```

## Parameter Details

### `-Queries <String[]>`

> Kueri yang akan dijalankan.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Bahasa dari hasil pencarian yang dikembalikan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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

> Monitor yang digunakan, 0 = default, -1 = dibuang, -2 = Monitor sekunder yang dikonfigurasi, default ke -1, tanpa posisi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
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
### `-NoBorders`

> Menghapus batas jendela dari jendela browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Gunakan mode hanya sesi untuk profil browser (tanpa data persisten)

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

> Hapus data sesi/profil browser sebelum membuka

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

> Lewati menggunakan sesi/profil browser (gunakan default)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Buka jendela browser berdampingan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
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

> Mengembalikan objek [System.Diagnostics.Process] dari proses browser

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
## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-BuiltWithSiteInfo.md)
- [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GithubQuery.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GoogleQuery.md)
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
