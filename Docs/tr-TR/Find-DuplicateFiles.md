# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf`

## Synopsis

> Birden çok dizinde yapılandırılabilir ölçütlere göre yinelenen dosyaları bulur.

## Description

Belirtilen dizinlerdeki yinelenen dosyaları özyinelemeli olarak arar. Dosyalar, içerikleri tamamen aynıysa veya aynı içerikle başlıyorsa (kısmi karşılaştırma için -ComparePartial anahtarı kullanıldığında) yinelenen olarak kabul edilir. Cmdlet, tam içerik karşılaştırmaları yapmadan önce verimli gruplama için dosyanın ilk baytlarının hızlı bir karmasını kullanır. Bu hızlı karmanın boyutu -CompareByteLength parametresi ile yapılandırılabilir ve yinelenen algılamada performans ve doğruluk arasında bir denge sağlar. Yalnızca bu CompareByteLength değerinden en az uzunluğa sahip dosyalar yinelenen algılaması için değerlendirilir; daha küçük dosyalar yalnızca dosya adına göre gruplandırılır.

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | Aranacak dosya adı veya deseni. Varsayılan '*' şeklindedir. 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Boru hattı girdisinden aranacak dosya adı veya deseni. Varsayılan '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | İçerik içinde aramak için normal ifade deseni *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Çıktıda göreli yolları çözümlemek için temel yol |
| `-Category` | String[] | — | — | Named | — | Yalnızca seçili kategorilere ait dosyaları çıkar |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Dizin görevleri için maksimum paralellik derecesi |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | İsteğe bağlı: saniye cinsinden iptal zaman aşımı |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Tüm mevcut sürücüler arasında arama yap |
| `-Directory` | SwitchParameter | — | — | Named | — | Yalnızca dizinleri ara |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Hem dosyaları hem de dizinleri dahil et |
| `-PassThru` | SwitchParameter | — | — | Named | — | Eşleşen öğeleri nesneler olarak çıktıla |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Arama sonuçlarına alternatif veri akışlarını dahil et |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Alt dizinlere yineleme yapma |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Dizin geçişi sırasında sembolik bağlantıları ve bağlantı noktalarını takip et |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Optik disk sürücülerini dahil et |
| `-SearchDrives` | String[] | — | — | Named | `@()` | İsteğe bağlı: belirli sürücüleri ara |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | İsteğe bağlı: belirli sürücüleri ara |
| `-Root` | String[] | — | — | Named | `@()` | İsteğe bağlı: belirli dizinleri ara |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Ad girişlerinden dizin bileşenlerini kaldırarak yalnızca Kök dizinlerde arama yapmayı zorunlu kılar |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Dosya içeriğini ararken metin olmayan dosyaları dahil et |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Katılımsız modu zorlar ve bağlantı oluşturmaz |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Dosyalar ve dizinler için büyük/küçük harf duyarlılığını alır veya ayarlar |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | Ayarlanırsa, alternatif veri akışlarında (ADS) içerik araması yapar |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Dizin dolaşımı için maksimum özyineleme derinliği. 0 sınırsız anlamına gelir. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Ağaçta yukarı doğru devam araması için maksimum özyineleme derinliği. 0 devre dışı anlamına gelir. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Sonuçlara dahil edilecek maksimum dosya boyutu bayt cinsinden. 0 sınırsız anlamına gelir. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Sonuçlara dahil edilecek bayt cinsinden minimum dosya boyutu. 0, minimum olmadığı anlamına gelir. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Yalnızca bu tarih/saatten (UTC) sonra değiştirilen dosyaları dahil et |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Yalnızca bu tarih/saatten (UTC) önce değiştirilen dosyaları dahil et |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Atlama için dosya öznitelikleri (örn. Sistem, Gizli veya Yok) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Bu joker kalıplarıyla eşleşen dosyaları veya dizinleri hariç tut |
| `-AllMatches` | SwitchParameter | — | — | Named | — | Her metin satırında birden fazla eşleşme ara *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Eşleşmeler büyük/küçük harfe duyarlıdır *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Eşleşmelerin etrafındaki bağlam satırlarını yakalar *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Desen eşleştirme için kullanılan kültür adı *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Hedef dosyalar için kodlamayı belirtir *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Dosya başına yalnızca ilk eşleşme döndürülür *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Çıktıda eşleşen dizelerin vurgulanmasını devre dışı bırakır *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | NotMatch parametresi, desenle eşleşmeyen metni bulur *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Eşleşen dizeleri MatchInfo nesneleri yerine yalnızca çıktıla *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Düzenli ifade yerine basit dize eşleştirme kullanın *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | Aynı dosya adı ve içerikle başladıkları sürece farklı boyutlardaki dosyaların dönüşü, bu, bozuk indirmeleri/kopyalama işlemlerini tespit eder |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | Dosyaların bayt uzunluğunu hızlıca karşılaştırır, hızlı indeksleme ve kopyaları aramak için kullanılır, dosyaların içeriğini karşılaştırmaz |

## Examples

### Find duplicate text files in the Documents folder based on exact content: Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial

```powershell
Find duplicate text files in the Documents folder based on exact content:
Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial
```

### Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set: (Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose

```powershell
Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set:
(Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose
```

## Parameter Details

### `-Name <String[]>`

> Aranacak dosya adı veya deseni. Varsayılan '*' şeklindedir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `SourceFolder` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Boru hattı girdisinden aranacak dosya adı veya deseni. Varsayılan '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> İçerik içinde aramak için normal ifade deseni

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@('.*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> Çıktıda göreli yolları çözümlemek için temel yol

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

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
### `-Directory`

> Yalnızca dizinleri ara

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> Hem dosyaları hem de dizinleri dahil et

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Eşleşen öğeleri nesneler olarak çıktıla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
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

> İsteğe bağlı: belirli dizinleri ara

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> Ad girişlerinden dizin bileşenlerini kaldırarak yalnızca Kök dizinlerde arama yapmayı zorunlu kılar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> Dosya içeriğini ararken metin olmayan dosyaları dahil et

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> Katılımsız modu zorlar ve bağlantı oluşturmaz

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Dosyalar ve dizinler için büyük/küçük harf duyarlılığını alır veya ayarlar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.MatchCasing]::PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Ayarlanırsa, alternatif veri akışlarında (ADS) içerik araması yapar

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
### `-MaxSearchUpDepth <Int32>`

> Ağaçta yukarı doğru devam araması için maksimum özyineleme derinliği. 0 devre dışı anlamına gelir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
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

> Yalnızca bu tarih/saatten (UTC) sonra değiştirilen dosyaları dahil et

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

> Yalnızca bu tarih/saatten (UTC) önce değiştirilen dosyaları dahil et

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

> Atlama için dosya öznitelikleri (örn. Sistem, Gizli veya Yok)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Bu joker kalıplarıyla eşleşen dosyaları veya dizinleri hariç tut

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\.git\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Her metin satırında birden fazla eşleşme ara

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
### `-CaseSensitive`

> Eşleşmeler büyük/küçük harfe duyarlıdır

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
### `-Context <Int32[]>`

> Eşleşmelerin etrafındaki bağlam satırlarını yakalar

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

> Desen eşleştirme için kullanılan kültür adı

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

> Hedef dosyalar için kodlamayı belirtir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'UTF8NoBOM'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> Dosya başına yalnızca ilk eşleşme döndürülür

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
### `-NoEmphasis`

> Çıktıda eşleşen dizelerin vurgulanmasını devre dışı bırakır

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
### `-NotMatch`

> NotMatch parametresi, desenle eşleşmeyen metni bulur

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
### `-Raw`

> Eşleşen dizeleri MatchInfo nesneleri yerine yalnızca çıktıla

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

> Düzenli ifade yerine basit dize eşleştirme kullanın

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
### `-ComparePartial`

> Aynı dosya adı ve içerikle başladıkları sürece farklı boyutlardaki dosyaların dönüşü, bu, bozuk indirmeleri/kopyalama işlemlerini tespit eder

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompareByteLength <Int32>`

> Dosyaların bayt uzunluğunu hızlıca karşılaştırır, hızlı indeksleme ve kopyaları aramak için kullanılır, dosyaların içeriğini karşılaştırmaz

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `65536` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Expand-Path.md)
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
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-TextFileAtomic.md)
