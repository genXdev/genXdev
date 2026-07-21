# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> İlk eşleşen dosyayı veya klasörü bulur ve konumu buna ayarlar.

## Description

Bu cmdlet, arama ifadelerini kullanarak eşleşen ilk klasöre veya dosyaya (isteğe bağlı) hızlıca gidip dizin değiştirmenize yardımcı olur. İçerik, dosya öznitelikleri, boyut, değiştirme tarihleri ve diğer birçok kritere göre gelişmiş filtrelemeyi destekler.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Aranacak dosya adı veya deseni. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | Boru hattı girdisinden aranacak dosya adı veya deseni. Varsayılan '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Dosya içeriğinde arama yapmak için normal ifade deseni *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Yalnızca seçili kategorilere ait dosyaları çıkar |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Dizin görevleri için maksimum paralellik derecesi |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | İsteğe bağlı: saniye cinsinden iptal zaman aşımı |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Tüm mevcut sürücüler arasında arama yap |
| `-File` | SwitchParameter | — | — | Named | — | Yalnızca dosya adlarını ara ve ilk bulunan dosyanın klasörüne geç |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Dosya adı eşleştirmeyi dahil et ve bulunan ilk dosyanın klasörüne git |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Arama sonuçlarına alternatif veri akışlarını dahil et |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Alt dizinlere yineleme yapma |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Dizin geçişi sırasında sembolik bağlantıları ve bağlantı noktalarını takip et |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Optik disk sürücülerini dahil et |
| `-SearchDrives` | String[] | — | — | Named | `@()` | İsteğe bağlı: belirli sürücüleri ara |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | İsteğe bağlı: belirli sürücüleri ara |
| `-Root` | String[] | — | — | Named | `@()` | İsteğe bağlı: sağlanan Adlarla birleştirilmiş belirli temel klasörleri ara |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Dosya içeriğini ararken metin olmayan dosyaları (ikili dosyalar, görseller vb.) dahil et |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Dosyalar ve dizinler için büyük/küçük harf duyarlılığını alır veya ayarlar |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Ayarlanırsa, alternatif veri akışları (ADS) içinde içerik araması yapar. Ayarlanmazsa, ADS dosya bilgisini içeriğini aramadan çıktılar. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Dizin dolaşımı için maksimum özyineleme derinliği. 0 sınırsız anlamına gelir. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Sonuçlara dahil edilecek maksimum dosya boyutu bayt cinsinden. 0 sınırsız anlamına gelir. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Sonuçlara dahil edilecek bayt cinsinden minimum dosya boyutu. 0, minimum olmadığı anlamına gelir. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Yalnızca bu tarih/saatten (UTC) sonra değiştirilen dosyaları dahil et. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Yalnızca bu tarih/saatten (UTC) önce değiştirilen dosyaları dahil et. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | Atlanacak dosya öznitelikleri (ör. Sistem, Gizli veya Yok). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Bu joker karakter desenleriyle eşleşen dosyaları veya dizinleri hariç tut (ör. *.tmp, *\\bin\\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Cmdlet eşleşmelerinin büyük/küçük harf duyarlı olduğunu belirtir. Varsayılan olarak eşleşmeler büyük/küçük harf duyarlı değildir. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Belirtilen desenle eşleşecek bir kültür adı belirtir. Culture parametresi SimpleMatch parametresiyle birlikte kullanılmalıdır. Varsayılan davranış, geçerli PowerShell çalışma alanının (oturum) kültürünü kullanır. *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Hedef dosya için kodlama türünü belirtir. Varsayılan değer utf8NoBOM'dur. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | NotMatch parametresi, belirtilen desenle eşleşmeyen metni bulur. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Cmdlet'in normal ifade eşleştirmesi yerine basit bir eşleştirme kullandığını belirtir. Basit eşleştirmede, Select-String girişi Pattern parametresindeki metin için arar. Pattern parametresinin değerini normal ifade ifadesi olarak yorumlamaz. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Set-Location yerine Push-Location kullanın ve konumu konum yığınına itin |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Ayarlanırsa, yalnızca tam ad eşleşmeleri dikkate alınır. Varsayılan olarak, Ad joker karakterler içermediği sürece joker karakter eşleştirmesi kullanılır. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

'*.Console' deseniyle eşleşen ilk dizinde yapılan değişiklikler.

### lcd *.Console

```powershell
lcd *.Console
```

'*.Console' desenine uyan ilk dizine takma adı kullanarak geçer.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

'function' sözcüğünü içeren ilk PowerShell dosyasının bulunduğu dizine yapılan değişiklikler.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Adında 'test' geçen ilk dosyayı içeren dizindeki değişiklikler.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

İçeriği '1.\d+\.2025' deseniyle eşleşen ilk dosyayı içeren dizine yapılan değişiklikler.

## Parameter Details

### `-Name <String>`

> Aranacak dosya adı veya deseni.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-InputObject <Object>`

> Boru hattı girdisinden aranacak dosya adı veya deseni. Varsayılan '*'

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | InputObject |

<hr/>
### `-Content <String[]>`

> Dosya içeriğinde arama yapmak için normal ifade deseni

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@(".*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-Category <String[]>`

> Yalnızca seçili kategorilere ait dosyaları çıkar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> Dizin görevleri için maksimum paralellik derecesi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> İsteğe bağlı: saniye cinsinden iptal zaman aşımı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> Tüm mevcut sürücüler arasında arama yap

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-File`

> Yalnızca dosya adlarını ara ve ilk bulunan dosyanın klasörüne geç

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filename` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DirectoriesAndFiles`

> Dosya adı eşleştirmeyi dahil et ve bulunan ilk dosyanın klasörüne git

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `FilesAndDirectories` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Arama sonuçlarına alternatif veri akışlarını dahil et

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Alt dizinlere yineleme yapma

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Dizin geçişi sırasında sembolik bağlantıları ve bağlantı noktalarını takip et

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> Optik disk sürücülerini dahil et

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> İsteğe bağlı: belirli sürücüleri ara

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> İsteğe bağlı: belirli sürücüleri ara

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> İsteğe bağlı: sağlanan Adlarla birleştirilmiş belirli temel klasörleri ara

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Dosya içeriğini ararken metin olmayan dosyaları (ikili dosyalar, görseller vb.) dahil et

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Dosyalar ve dizinler için büyük/küçük harf duyarlılığını alır veya ayarlar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.MatchCasing]::PlatformDefault)` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Ayarlanırsa, alternatif veri akışları (ADS) içinde içerik araması yapar. Ayarlanmazsa, ADS dosya bilgisini içeriğini aramadan çıktılar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> Dizin dolaşımı için maksimum özyineleme derinliği. 0 sınırsız anlamına gelir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> Sonuçlara dahil edilecek maksimum dosya boyutu bayt cinsinden. 0 sınırsız anlamına gelir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> Sonuçlara dahil edilecek bayt cinsinden minimum dosya boyutu. 0, minimum olmadığı anlamına gelir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <DateTime>`

> Yalnızca bu tarih/saatten (UTC) sonra değiştirilen dosyaları dahil et.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <DateTime>`

> Yalnızca bu tarih/saatten (UTC) önce değiştirilen dosyaları dahil et.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> Atlanacak dosya öznitelikleri (ör. Sistem, Gizli veya Yok).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.FileAttributes]::System)` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Bu joker karakter desenleriyle eşleşen dosyaları veya dizinleri hariç tut (ör. *.tmp, *\\bin\\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@("*\\.git\\*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseSensitive`

> Cmdlet eşleşmelerinin büyük/küçük harf duyarlı olduğunu belirtir. Varsayılan olarak eşleşmeler büyük/küçük harf duyarlı değildir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> Belirtilen desenle eşleşecek bir kültür adı belirtir. Culture parametresi SimpleMatch parametresiyle birlikte kullanılmalıdır. Varsayılan davranış, geçerli PowerShell çalışma alanının (oturum) kültürünü kullanır.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> Hedef dosya için kodlama türünü belirtir. Varsayılan değer utf8NoBOM'dur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"UTF8NoBOM"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> NotMatch parametresi, belirtilen desenle eşleşmeyen metni bulur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> Cmdlet'in normal ifade eşleştirmesi yerine basit bir eşleştirme kullandığını belirtir. Basit eşleştirmede, Select-String girişi Pattern parametresindeki metin için arar. Pattern parametresinin değerini normal ifade ifadesi olarak yorumlamaz.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Push`

> Set-Location yerine Push-Location kullanın ve konumu konum yığınına itin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> Ayarlanırsa, yalnızca tam ad eşleşmeleri dikkate alınır. Varsayılan olarak, Ad joker karakterler içermediği sürece joker karakter eşleştirmesi kullanılır.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Rename-InProject.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-TextFileAtomic.md)
