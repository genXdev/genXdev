# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> GenXDev.Data işlemlerinde kullanılan tercihler için veritabanı yolunu ayarlar.

## Description

* GenXdev.Data modülü tarafından çeşitli tercih depolama ve veri işlemleri için kullanılan genel veritabanı yolunu yapılandırır.
* Ayarlar geçerli oturumda (Genel değişkenler kullanılarak) saklanır ve (-ClearSession kullanılarak) oturumdan temizlenebilir.

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Tercih veri dosyalarının bulunduğu veritabanı yolu |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanmayın |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Belirtildiğinde, ayarı yalnızca geçerli oturumda (Global değişken) saklar, tercihlere kalıcı olarak kaydetmez. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Belirtildiğinde, yalnızca oturum ayarını (Global değişken) temizler, kalıcı tercihleri etkilemez. |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Geçerli oturumda veritabanı yolunu ayarlar (Global değişken).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Konumsal parametreyi kullanarak veritabanı yolunu ayarlar.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Yolu yalnızca geçerli oturum için ayarlar, kalıcı hale getirmez.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Veritabanı yolunun Global değişkenini temizler.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Tercih veri dosyalarının bulunduğu veritabanı yolu

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
### `-SessionOnly`

> Belirtildiğinde, ayarı yalnızca geçerli oturumda (Global değişken) saklar, tercihlere kalıcı olarak kaydetmez.

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

> Belirtildiğinde, yalnızca oturum ayarını (Global değişken) temizler, kalıcı tercihleri etkilemez.

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
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevPreference.md)
