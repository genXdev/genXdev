# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Mendapatkan jalur basis data yang dikonfigurasi untuk file data preferensi yang digunakan dalam operasi GenXdev.Data.

## Description

* Mengambil jalur database global yang digunakan oleh modul GenXdev.Data untuk
  berbagai penyimpanan preferensi dan operasi data.
* Memeriksa variabel Global terlebih dahulu (kecuali SkipSession ditentukan), kemudian
  kembali ke preferensi persisten, dan terakhir menggunakan default sistem.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Penggantian jalur database opsional |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Hapus pengaturan sesi (Variabel global) sebelum mengambil |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Jangan gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

Mengambil jalur database dari variabel Global atau preferensi.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

Melewati variabel sesi dan menggunakan preferensi persisten.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Menghapus pengaturan sesi sebelum mengambil jalur.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Penggantian jalur database opsional

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
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
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevPreferencesDatabasePath.md)
