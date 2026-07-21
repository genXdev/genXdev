# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference`

## Synopsis

> GenXdev tercih deposundan bir tercih değerini kaldırır.

## Description

* Yerel depodan ve isteğe bağlı olarak varsayılan depodan bir tercih değerini kaldırır.
* Yalnızca yerel kaldırma ve hem yerel hem de varsayılan depolardan kaldırma olmak üzere iki parametre kümesi sağlar.
* Varsayılan depoyu değiştirirken uygun senkronizasyonu sağlar.

## Syntax

```powershell
Remove-GenXdevPreference -Name <String> [-ClearSession] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Kaldırılacak tercihin adı |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Tercihi varsayılanlardan da kaldırmak için geçiş yapın |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanın |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Almadan önce oturum ayarını (Genel değişken) temizle |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Tercih veri dosyaları için veritabanı yolu |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanmayın |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Yalnızca yerel depodan "Tema" tercihini kaldırır.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Hem yerel hem de varsayılan depolardan "Tema" tercihini kaldırır.

## Parameter Details

### `-Name <String>`

> Kaldırılacak tercihin adı

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveDefault`

> Tercihi varsayılanlardan da kaldırmak için geçiş yapın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXdevPreferencesDatabasePath.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevPreferencesDatabasePath.md)
