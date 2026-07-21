# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Mengatur jalur database untuk preferensi yang digunakan dalam operasi GenXdev.Data.

## Description

* Mengonfigurasi jalur database global yang digunakan oleh modul GenXdev.Data untuk berbagai penyimpanan preferensi dan operasi data.
* Pengaturan disimpan dalam sesi saat ini (menggunakan variabel Global) dan dapat dihapus dari sesi (menggunakan -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Jalur basis data tempat file data preferensi berada |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Jangan gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Jika ditentukan, menyimpan pengaturan hanya di sesi saat ini (variabel Global) tanpa menyimpannya ke preferensi |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Jika ditentukan, hanya menghapus pengaturan sesi (variabel Global) tanpa memengaruhi preferensi permanen |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Mengatur jalur basis data dalam sesi saat ini (variabel Global).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Mengatur jalur database menggunakan parameter posisional.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Menetapkan jalur hanya untuk sesi saat ini tanpa menyimpannya.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Menghapus variabel Global untuk jalur basis data.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Jalur basis data tempat file data preferensi berada

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
### `-SessionOnly`

> Jika ditentukan, menyimpan pengaturan hanya di sesi saat ini (variabel Global) tanpa menyimpannya ke preferensi

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

> Jika ditentukan, hanya menghapus pengaturan sesi (variabel Global) tanpa memengaruhi preferensi permanen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevPreference.md)
