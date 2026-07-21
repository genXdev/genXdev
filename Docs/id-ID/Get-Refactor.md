# Get-Refactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `refactors`

## Synopsis

> Mengambil definisi refaktor dari preferensi GenXdev berdasarkan pola nama.

## Description

Mencari dan memuat kumpulan definisi refaktor yang disimpan dalam preferensi GenXdev.
Setiap kumpulan refaktor disimpan sebagai string JSON dalam preferensi dengan nama yang dimulai
dengan 'refactor_set_'. Fungsi ini melakukan deserialisasi kumpulan yang cocok menjadi objek.

## Syntax

```powershell
Get-Refactor [[-Name] <String[]>] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Pola yang akan dicari untuk definisi refaktor 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Jalur database untuk file data preferensi |
| `-DefaultValue` | String | — | — | Named | — | Nilai default jika preferensi tidak ditemukan |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Hapus pengaturan sesi (Variabel global) sebelum mengambil |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Jangan gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll |

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

> Pola yang akan dicari untuk definisi refaktor

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
### `-DefaultValue <String>`

> Nilai default jika preferensi tidak ditemukan

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

> Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll.

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
### `-SkipSession`

> Jangan gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll

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

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Issues.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/VSCode.md)
