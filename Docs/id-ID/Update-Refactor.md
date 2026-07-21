# Update-Refactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `updaterefactor`

## Synopsis

> Memperbarui dan mengelola set refactoring termasuk pemilihan file dan pemrosesan.

## Description

Menyediakan manajemen komprehensif dari set refactoring dengan:
- Menambahkan atau menghapus file dari antrian pemrosesan
- Membersihkan file yang telah dihapus dari set
- Mengelola informasi status dan pelacakan kemajuan
- Menangani pemilihan dan pemrosesan file berbasis LLM
- Mendukung manajemen file otomatis dan manual
- Memelihara log terperinci dari semua operasi
- Menangani file yang dihapus dengan baik (dilewati kecuali CleanUpDeletedFiles digunakan)

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-NoSupportForJsonSchema <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Nama refactor, menerima wildcard *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | Refaktor yang akan diperbarui *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | Nama file yang akan ditambahkan |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | Nama file yang akan dihapus |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | Pilih file berdasarkan tanggal modifikasi dari |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | Pilih file berdasarkan tanggal modifikasi menjadi |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | Pilih file berdasarkan tanggal pembuatan dari |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | Pilih berkas berdasarkan tanggal pembuatan untuk |
| `-PromptKey` | String | — | — | Named | — | Kunci prompt menunjukkan skrip prompt mana yang akan digunakan |
| `-Prompt` | String | — | — | Named | `''` | Kunci prompt menunjukkan skrip prompt mana yang akan digunakan |
| `-SelectionScript` | String | — | — | Named | — | Skrip PowerShell untuk fungsi memilih item yang akan direfaktor |
| `-SelectionPrompt` | String | — | — | Named | — | Jika disediakan, akan memanggil LLM untuk melakukan pemilihan berdasarkan konten skrip |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Jenis kueri LLM |
| `-Model` | String | — | — | Named | — | Pengidentifikasi atau pola model yang digunakan untuk operasi AI |
| `-Temperature` | Double | — | — | Named | `-1` | Suhu untuk keacakan respons (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | URL titik akhir API untuk operasi AI |
| `-ApiKey` | String | — | — | Named | — | Kunci API untuk operasi AI yang telah diautentikasi |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Menunjukkan bahwa LLM tidak memiliki dukungan untuk skema JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Batas waktu dalam detik untuk operasi AI |
| `-Priority` | Int32 | — | — | Named | — | Prioritas untuk refactor set ini |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array definisi perintah PowerShell untuk digunakan sebagai alat selama pemilihan LLM |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Kunci untuk dipanggil sebagai tekanan tombol setelah membuka file |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Jalur database untuk file data preferensi |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Membersihkan file yang dihapus |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | Alihkan untuk menekan interaksi pengguna |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | Aktifkan pemrosesan pemilihan file berbasis LLM |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | Beralih untuk memproses semua file dalam set refaktor |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | Beralih untuk mencoba ulang pemilihan LLM yang gagal |
| `-Clear` | SwitchParameter | — | — | Named | — | Hapus semua file dari set refactoring |
| `-ClearLog` | SwitchParameter | — | — | Named | — | Bersihkan log dari set refaktor |
| `-Reset` | SwitchParameter | — | — | Named | — | Mulai dari awal set refaktorisasi |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Mulai ulang semua Pemilihan LLM |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Tandai semua file sebagai refaktored |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Lakukan ulang refaktor terakhir |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | Secara otomatis memproses ulang file yang dimodifikasi sejak pembaruan terakhir |
| `-Code` | SwitchParameter | — | — | Named | — | IDE untuk membuka file tersebut |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Buka di Visual Studio |
| `-Speak` | SwitchParameter | — | — | Named | — | Bicarakan detail refaktor berikutnya |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Pilih konfigurasi berdasarkan RAM sistem yang tersedia |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Pilih konfigurasi berdasarkan RAM GPU yang tersedia |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Hapus pengaturan alternatif yang tersimpan dalam sesi untuk preferensi AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Simpan pengaturan hanya di preferensi persisten tanpa mempengaruhi sesi |

## Examples

### Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `     -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles

```powershell
Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `
    -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles
```

### Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear

```powershell
Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear
```

### updaterefactor * -Clear -Reset

```powershell
updaterefactor * -Clear -Reset
```

## Parameter Details

### `-Name <String[]>`

> Nama refactor, menerima wildcard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | Name |

<hr/>
### `-Refactor <GenXdev.Helpers.RefactorDefinition[]>`

> Refaktor yang akan diperbarui

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Refactor |

<hr/>
### `-FilesToAdd <IO.FileInfo[]>`

> Nama file yang akan ditambahkan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesToRemove <IO.FileInfo[]>`

> Nama file yang akan dihapus

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByModifiedDateFrom <DateTime>`

> Pilih file berdasarkan tanggal modifikasi dari

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByModifiedDateTo <DateTime>`

> Pilih file berdasarkan tanggal modifikasi menjadi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByCreationDateFrom <DateTime>`

> Pilih file berdasarkan tanggal pembuatan dari

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByCreationDateTo <DateTime>`

> Pilih berkas berdasarkan tanggal pembuatan untuk

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PromptKey <String>`

> Kunci prompt menunjukkan skrip prompt mana yang akan digunakan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> Kunci prompt menunjukkan skrip prompt mana yang akan digunakan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionScript <String>`

> Skrip PowerShell untuk fungsi memilih item yang akan direfaktor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionPrompt <String>`

> Jika disediakan, akan memanggil LLM untuk melakukan pemilihan berdasarkan konten skrip

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-Priority <Int32>`

> Prioritas untuk refactor set ini

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Array definisi perintah PowerShell untuk digunakan sebagai alat selama pemilihan LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Kunci untuk dipanggil sebagai tekanan tombol setelah membuka file

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `keys` |
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
### `-CleanUpDeletedFiles`

> Membersihkan file yang dihapus

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AskBeforeLLMSelection`

> Alihkan untuk menekan interaksi pengguna

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerformAutoSelections`

> Aktifkan pemrosesan pemilihan file berbasis LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerformAISelections`

> Beralih untuk memproses semua file dalam set refaktor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `PerformAllLLMSelections` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryFailedLLMSelections`

> Beralih untuk mencoba ulang pemilihan LLM yang gagal

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Clear`

> Hapus semua file dari set refactoring

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearLog`

> Bersihkan log dari set refaktor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reset`

> Mulai dari awal set refaktorisasi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetLMSelections`

> Mulai ulang semua Pemilihan LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkAllCompleted`

> Tandai semua file sebagai refaktored

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RedoLast`

> Lakukan ulang refaktor terakhir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReprocessModifiedFiles`

> Secara otomatis memproses ulang file yang dimodifikasi sejak pembaruan terakhir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `AutoAddModifiedFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> IDE untuk membuka file tersebut

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VisualStudio`

> Buka di Visual Studio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `vs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> Bicarakan detail refaktor berikutnya

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeRam`

> Pilih konfigurasi berdasarkan RAM sistem yang tersedia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeGpuRam`

> Pilih konfigurasi berdasarkan RAM GPU yang tersedia

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
## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-NextRefactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/VSCode.md)
