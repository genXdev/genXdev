# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference`

## Synopsis

> GenXdev tercih deposunda bir tercih değeri ayarlar.

## Description

* GenXdev yerel deposunda tercihleri yönetir.
* Yeni tercihler belirleyebilir, mevcut olanları güncelleyebilir veya boş/değer sağlanmadığında bunları kaldırabilir.
* Tercihler, "Yerel" olarak ayarlanmış senkronizasyonla saklanır.

## Syntax

```powershell
Set-GenXdevPreference -Name <String> [[-Value] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Ayarlanacak tercihin adı |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Tercih için saklanacak değer |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanın |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Almadan önce oturum ayarını (Genel değişken) temizle |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Tercih veri dosyaları için veritabanı yolu |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanmayın |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

Yerel depoda "Tema" tercihini "Koyu" olarak ayarlar.

### Example 2

```powershell
setPreference Theme Light
```

Tema tercihini ayarlamak için diğer adı ve konumsal parametreleri kullanır.

## Parameter Details

### `-Name <String>`

> Ayarlanacak tercihin adı

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

> Tercih için saklanacak değer

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
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevPreferencesDatabasePath.md)
