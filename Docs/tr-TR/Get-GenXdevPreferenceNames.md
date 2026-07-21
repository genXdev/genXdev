# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> Oturum depolama ve veritabanı depolarından tüm tercih adlarını alır.

## Description

* Oturum depolamasından (genel değişkenler) ve hem yerel hem de varsayılan tercih depolarından anahtarları birleştirerek benzersiz bir tercih adları listesi alır.
* Hangi kaynakların sorgulanacağını kontrol etmek için oturum yönetimi parametrelerine saygı gösterir.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanın |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Almadan önce oturum ayarını (Genel değişken) temizle |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Tercih veri dosyaları için veritabanı yolu |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanmayın |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Belirtilen veritabanı yolunu kullanarak oturum depolama alanından ve her iki depodan benzersiz tercih adlarının sıralanmış bir dizisini döndürür.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Oturum deposundan yalnızca tercih adlarını döndürür.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Yalnızca veritabanı depolarından tercih adlarını döndürür.

## Parameter Details

### `-SessionOnly`

> Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanın

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

> Almadan önce oturum ayarını (Genel değişken) temizle

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

> Tercih veri dosyaları için veritabanı yolu

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

> Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanmayın

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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXdevPreference.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevPreferencesDatabasePath.md)
