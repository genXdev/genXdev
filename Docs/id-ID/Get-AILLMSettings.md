# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Mendapatkan pengaturan LLM untuk operasi AI di GenXdev.AI.

## Description

Fungsi ini mengambil pengaturan LLM (Large Language Model) yang digunakan oleh modul GenXdev.AI untuk berbagai operasi AI. Pengaturan diambil dari variabel sesi, preferensi persisten, atau file JSON pengaturan default, dalam urutan prioritas tersebut. Fungsi ini mendukung pemilihan konfigurasi otomatis berdasarkan sumber daya memori sistem yang tersedia.

Strategi pemilihan memori ditentukan secara otomatis berdasarkan parameter Gpu dan Cpu yang diberikan:
- Jika kedua parameter Gpu dan Cpu ditentukan: Menggunakan memori CPU + GPU gabungan
- Jika hanya parameter Gpu yang ditentukan: Memprioritaskan memori GPU (dengan cadangan RAM sistem)
- Jika hanya parameter Cpu yang ditentukan: Hanya menggunakan RAM sistem
- Jika tidak ada parameter yang ditentukan: Menggunakan memori CPU + GPU gabungan (default)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Jenis kueri LLM untuk mendapatkan pengaturan |
| `-Model` | String | — | — | Named | — | Pengidentifikasi atau pola model yang digunakan untuk operasi AI |
| `-ApiEndpoint` | String | — | — | Named | — | URL titik akhir API untuk operasi AI |
| `-ApiKey` | String | — | — | Named | — | Kunci API untuk operasi AI yang telah diautentikasi |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Apakah endpoint tidak mendukung format respons json_schema |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Apakah endpoint tidak mendukung fungsi unggah gambar |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Apakah endpoint tidak mendukung fungsionalitas pemanggilan alat |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI seperti Bahasa, koleksi Gambar, dll |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Hapus pengaturan sesi (Variabel global) sebelum mengambil |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Jalur database untuk file data preferensi |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Lewati pengaturan sesi dan dapatkan dari preferensi atau default saja |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

Mendapatkan pengaturan LLM untuk tipe kueri SimpleIntelligence (default).

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

Mendapatkan pengaturan LLM untuk tipe kueri Coding.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

Mendapatkan pengaturan LLM dari preferensi atau default saja, mengabaikan pengaturan sesi.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Parameter Details

### `-LLMQueryType <String>`

> Jenis kueri LLM untuk mendapatkan pengaturan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'SimpleIntelligence'` |
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
### `-NoSupportForJsonSchema`

> Apakah endpoint tidak mendukung format respons json_schema

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForImageUpload`

> Apakah endpoint tidak mendukung fungsi unggah gambar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForToolCalls`

> Apakah endpoint tidak mendukung fungsionalitas pemanggilan alat

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

> Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi AI seperti Bahasa, koleksi Gambar, dll

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

> Hapus pengaturan sesi (Variabel global) sebelum mengambil

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
### `-SkipSession`

> Lewati pengaturan sesi dan dapatkan dari preferensi atau default saja

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-DeepLinkImageFile.md)
