# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference`

## Synopsis

> Mengatur nilai preferensi di penyimpanan preferensi GenXdev.

## Description

* Mengelola preferensi di penyimpanan lokal GenXdev.
* Dapat mengatur preferensi baru, memperbarui yang sudah ada, atau menghapusnya ketika nilai null/kosong diberikan.
* Preferensi disimpan dengan sinkronisasi diatur ke "Lokal".

## Syntax

```powershell
Set-GenXdevPreference -Name <String> [[-Value] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Nama preferensi yang akan diatur |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Nilai yang akan disimpan untuk preferensi |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Hapus pengaturan sesi (Variabel global) sebelum mengambil |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Jalur database untuk file data preferensi |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Jangan gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

Mengatur preferensi "Tema" menjadi "Gelap" di penyimpanan lokal.

### Example 2

```powershell
setPreference Theme Light
```

Menggunakan alias dan parameter posisi untuk mengatur preferensi Tema.

## Parameter Details

### `-Name <String>`

> Nama preferensi yang akan diatur

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> Nilai yang akan disimpan untuk preferensi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
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

> Jangan gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevPreferencesDatabasePath.md)
