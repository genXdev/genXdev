# Get-RefactorReport

> **Module:** GenXdev.Coding | **Type:** Cmdlet | **Aliases:** `refactorreport`

## Synopsis

> Yeniden düzenleme işlemlerinin ve durumlarının ayrıntılı bir raporunu oluşturur.

## Description

Yeniden düzenleme işlemlerinin ilerlemesini, mevcut durumlarını, tamamlanma durumlarını ve etkilenen işlevleri inceleyerek analiz eder ve raporlar. Çıktıyı yapılandırılmış hashtable biçiminde veya insan tarafından okunabilir hizalanmış metin sütunları olarak sağlar. Rapor, yeniden düzenleme adı, istem anahtarı, öncelik, durum, işlev sayısı ve tamamlanma yüzdesini içerir.

## Syntax

```powershell
Get-RefactorReport [[-Name] <String[]>] [-AsText] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Yeniden düzenlemenin adı, joker karakterleri kabul eder 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Tercihler veritabanı dosyasının yolunu belirtir. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Ayarlanırsa, yeniden düzenleme verileri için yalnızca oturum önbelleğini kullanın. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Ayarlanırsa, çalıştırmadan önce oturum önbelleğini temizleyin. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Ayarlanırsa, oturum önbelleğini yüklemeyi atla. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Çıktı raporunu Hashtable yerine metin formatında oluştur |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

"DatabaseRefactor" ile eşleşen yeniden düzenlemeler için bir metin raporu oluşturur.

### Example 2

```powershell
refactorreport "*"
```

Takma ad kullanarak tüm yeniden düzenlemeler için karma tablo raporu oluşturur.

## Parameter Details

### `-Name <String[]>`

> Yeniden düzenlemenin adı, joker karakterleri kabul eder

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PreferencesDatabasePath <String>`

> Tercihler veritabanı dosyasının yolunu belirtir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Ayarlanırsa, yeniden düzenleme verileri için yalnızca oturum önbelleğini kullanın.

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

> Ayarlanırsa, çalıştırmadan önce oturum önbelleğini temizleyin.

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

> Ayarlanırsa, oturum önbelleğini yüklemeyi atla.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsText`

> Çıktı raporunu Hashtable yerine metin formatında oluştur

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Refactor.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/VSCode.md)
