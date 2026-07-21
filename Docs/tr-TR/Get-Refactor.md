# Get-Refactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `refactors`

## Synopsis

> Ad desenlerine göre GenXdev tercihlerinden refactor tanımlarını alır.

## Description

GenXdev tercihlerinde depolanan yeniden düzenleme tanım kümelerini arar ve yükler.
Her yeniden düzenleme kümesi, adı 'refactor_set_' ile başlayan bir tercihte JSON dizesi olarak depolanır.
İşlev, eşleşen kümeleri nesnelere dönüştürür.

## Syntax

```powershell
Get-Refactor [[-Name] <String[]>] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Yeniden düzenleme tanımlarını aramak için desen(ler) 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Tercih veri dosyaları için veritabanı yolu |
| `-DefaultValue` | String | — | — | Named | — | Tercih bulunamazsa varsayılan değer |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanın |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Almadan önce oturum ayarını (Genel değişken) temizle |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanmayın |

## Examples

### Get-Refactor -Name "CodeStyle*" Returns refactor definitions matching pattern "CodeStyle*"

```powershell
Get-Refactor -Name "CodeStyle*"
Returns refactor definitions matching pattern "CodeStyle*"
```

### refactor "UnitTest" Uses alias to find refactor definitions containing "UnitTest"

```powershell
refactor "UnitTest"
Uses alias to find refactor definitions containing "UnitTest"
```

## Parameter Details

### `-Name <String[]>`

> Yeniden düzenleme tanımlarını aramak için desen(ler)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | Yes |

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
### `-DefaultValue <String>`

> Tercih bulunamazsa varsayılan değer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DefaultPreference` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanın

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

> Almadan önce oturum ayarını (Genel değişken) temizle

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

> Veri tercihleri (Dil, Veritabanı yolları vb.) için oturumda saklanan alternatif ayarları kullanmayın

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

- `GenXdev.Helpers.RefactorDefinition[]`

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
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/VSCode.md)
