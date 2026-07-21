# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> Gelişmiş filtreleme seçenekleri ile dosya ve dizinleri arayın.

## Description

```text
* Find-Item ile dosyaları bulun -> l
        * Hızlı çok iş parçacıklı arama: paralel ve zaman uyumsuz G/Ç işleme kullanır, yapılandırılabilir maksimum paralellik derecesi ile (varsayılan olarak CPU çekirdeklerine göre) verimli dosya ve dizin taraması.
        * Gelişmiş Desen Eşleme: Joker karakterleri (*, ?), ** gibi yinelemeli desenleri ve hassas dosya ve dizin sorguları için karmaşık yol yapılarını destekler. **/dosyaadı yalnızca dosyaadı eşleşene kadar yinelenir. Bu desenlerden birden fazlasına izin verilir, ancak eşleşecek bir dosya veya dizin adı ile öncelenmeleri gerekir. Bu desen ayrıştırıcı, Resolve-Path'ın gücüne sahiptir ancak yineleme özellikleri içerir ve yalnızca * ve ? joker karakterlerini destekler; bu sayede [ ] köşeli parantez içeren yollarda hatalar önlenir, -LiteralPath parametresine olan ihtiyaç ortadan kalkar ve joker karakterler olmadan yol bölümlerinin bütünlüğü korunur (tam yol üzerinde yapılan joker karakter eşlemesinin aksine).
        * Gelişmiş İçerik Arama: -Content parametresi ile dosya içeriklerinde düzenli ifade desenleri kullanarak kapsamlı Select-String entegrasyonu.
            * Büyük Dosya Optimizasyonu: Akıllı örtüşen arabellekler ve minimum yığın ayırma ile son derece büyük dosyaları işler.
            * Birden Fazla Eşleme Seçeneği: Satır başına tüm eşleşmeleri bulur (-AllMatches) veya dosya başına yalnızca ilk eşleşmeyi bulur (-List).
            * Büyük/Küçük Harf Duyarlılığı Kontrolü: Büyük/küçük harf duyarlı eşleme (-CaseSensitive), kültüre özgü seçeneklerle (-Culture).
            * Bağlam Yakalama: Daha iyi anlama için eşleşmelerin öncesindeki ve sonrasındaki satırları gösterir (-Context).
            * Ters Eşleme: Deseni içermeyen dosyalar bulur (-NotMatch).
            * Çıktı Biçimleri: Ham dize çıktısı (-Raw), sessiz boolean yanıtı (-Quiet) veya tam MatchInfo nesneleri.
            * Desen Türleri: Düzenli ifadeler (varsayılan) veya basit sabit dize eşlemesi (-SimpleMatch).
            * Kodlama Desteği: Doğru metin işleme için dosya kodlamasını belirtin (-Encoding).
        * Yol Türü Esnekliği: Göreli, mutlak, UNC, köklü yolları ve NTFS alternatif veri akışlarını (ADS) işler; akışlarda isteğe bağlı içerik araması yapılabilir.
        * Çoklu Sürücü Desteği: -AllDrives ile tüm sürücülerde veya -SearchDrives ile belirli sürücülerde (belirtilirse optik diskler dahil) arama yapar.
        * Dizin ve Dosya Filtreleme: Yalnızca dizinlerde arama (-Directory), hem dosya hem de dizinlerde arama (-FilesAndDirectories) veya içerik eşlemesi olan dosyalarda arama seçenekleri.
        * Dışlama ve Sınırlamalar: -Exclude ile desenleri hariç tutma, maksimum yineleme derinliği belirleme (-MaxRecursionDepth), dosya boyutu sınırlamaları (-MaxFileSize, -MinFileSize) ve değiştirilme tarihi filtreleri (-ModifiedAfter, -ModifiedBefore).
        * Çıktı Özelleştirme: FileInfo/DirectoryInfo nesneleri için PassThru, göreli yollar, katılımlı modda köprüler veya katılımsız modda düz yollar (aksilik durumunda katılımsız modu zorlamak için -NoLinks kullanın) destekler.
        * Performans İyileştirmeleri: İçerik araması için varsayılan olarak metin olmayan dosyaları atlar (-IncludeNonTextFileMatching ile geçersiz kılınabilir), uzun yolları (>260 karakter) işler ve sembolik bağlantıları/birleşme noktalarını takip eder.
        * Güvenlik Özellikleri: Zaman aşımı desteği (-TimeoutSeconds), erişilemeyen öğeleri yok sayar, varsayılan olarak sistem özniteliklerini atlar ve ziyaret edilen düğüm takibi ile sonsuz döngüleri önler.

        * -Category parametresi için geçerli kategoriler şunlardır: Resimler, Videolar, Müzik, Belgeler, E-Tablolar, Sunumlar, Arşivler, Yükleyiciler, Çalıştırılabilirler, Veritabanları, Tasarım Dosyaları, E-Kitaplar, Altyazılar, Yazı Tipleri, E-posta Dosyaları, 3B Modeller, Oyun Varlıkları, Tıbbi Dosyalar, Finansal Dosyalar, Yasal Dosyalar, Kaynak Kodu, Betikler, İşaretleme ve Veri, Yapılandırma, Günlükler, Metin Dosyaları, Web Dosyaları, Müzik Şarkı Sözleri ve Akorlar, Yaratıcı Yazarlık, Yemek Tarifleri, Araştırma Dosyaları
```
## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | Aranacak dosya adı veya deseni. Varsayılan '*' şeklindedir. 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Aranacak dosya adı veya deseni. Varsayılan '*' şeklindedir. 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | İçerik içinde aramak için normal ifade deseni *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Çıktıda göreli yolları çözümlemek için temel yol |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Dizin görevleri için maksimum paralellik derecesi |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | İsteğe bağlı: saniye cinsinden iptal zaman aşımı |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Tüm mevcut sürücüler arasında arama yap |
| `-Directory` | SwitchParameter | — | — | Named | `False` | Yalnızca dizinleri ara |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | Hem dosyaları hem de dizinleri dahil et |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Eşleşen öğeleri nesneler olarak çıktıla |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | Arama sonuçlarına alternatif veri akışlarını dahil et |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Alt dizinlere yineleme yapma |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | Dizin geçişi sırasında sembolik bağlantıları ve bağlantı noktalarını takip et |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | Optik disk sürücülerini dahil et |
| `-SearchDrives` | String[] | — | — | Named | — | İsteğe bağlı: belirli sürücüleri ara |
| `-DriveLetter` | Char[] | — | — | Named | — | İsteğe bağlı: belirli sürücüleri ara |
| `-Root` | String[] | — | — | Named | — | İsteğe bağlı: belirli dizinleri ara |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Ad girişlerinden dizin bileşenlerini kaldırarak yalnızca Kök dizinlerde arama yapmayı zorunlu kılar |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | Dosya içeriğini ararken metin olmayan dosyaları dahil et |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | Katılımsız modu zorlar ve bağlantı oluşturmaz |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | Dosyalar ve dizinler için büyük/küçük harf duyarlılığını alır veya ayarlar |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | Ayarlanırsa, alternatif veri akışları (ADS) içinde içerik araması yapar. Ayarlanmazsa, ADS dosya bilgisini içeriğini aramadan çıktılar. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Dizin dolaşımı için maksimum özyineleme derinliği. 0 sınırsız anlamına gelir. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Göreli aramalarda hiçbir öğe bulunamazken ağaçta yukarı doğru aramaya devam etmek için maksimum özyineleme derinliği. 0, devre dışı anlamına gelir. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Sonuçlara dahil edilecek maksimum dosya boyutu bayt cinsinden. 0 sınırsız anlamına gelir. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Sonuçlara dahil edilecek bayt cinsinden minimum dosya boyutu. 0, minimum olmadığı anlamına gelir. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Yalnızca bu tarih/saatten (UTC) sonra değiştirilen dosyaları dahil et. |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Yalnızca bu tarih/saatten (UTC) önce değiştirilen dosyaları dahil et. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | Atlanacak dosya öznitelikleri (ör. Sistem, Gizli veya Yok). |
| `-Exclude` | String[] | — | — | Named | — | Bu joker desenleriyle eşleşen dosya veya dizinleri hariç tut (ör. *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | Cmdlet'in her metin satırında birden fazla eşleşme aradığını belirtir. Bu parametre olmadan, Select-String her metin satırında yalnızca ilk eşleşmeyi bulur. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | Cmdlet eşleşmelerinin büyük/küçük harf duyarlı olduğunu belirtir. Varsayılan olarak eşleşmeler büyük/küçük harf duyarlı değildir. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Desenle eşleşen satırdan önce ve sonra belirtilen sayıda satırı yakalar. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Belirtilen desenle eşleşecek bir kültür adı belirtir. Culture parametresi SimpleMatch parametresiyle birlikte kullanılmalıdır. Varsayılan davranış, geçerli PowerShell çalışma alanının (oturum) kültürünü kullanır. *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | Hedef dosya için kodlama türünü belirtir. Select-String ile uyumlu değerleri ve genişletilmiş .NET kodlamalarını destekler. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | Her girdi dosyasından eşleşen metnin yalnızca ilk örneği döndürülür. Bu, normal ifadeyle eşleşen içeriğe sahip dosyaların bir listesini almanın en verimli yoludur. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | Çıktıda eşleşen dizelerin vurgulanmasını devre dışı bırakır. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | NotMatch parametresi, belirtilen desenle eşleşmeyen metni bulur. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | Cmdlet'in bir MatchInfo nesnesi yerine basit bir yanıt döndürdüğünü belirtir. Döndürülen değer, desen bulunduysa $true veya desen bulunamadıysa $null'dır. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | Cmdlet'in yalnızca eşleşen dizeleri çıkarmasına neden olur, MatchInfo nesnelerini değil. Bu, Unix grep veya Windows findstr.exe komutlarına en çok benzeyen davranışı sağlar. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | Cmdlet'in normal ifade eşleştirmesi yerine basit bir eşleştirme kullandığını belirtir. Basit eşleştirmede, Select-String girişi Pattern parametresindeki metin için arar. Pattern parametresinin değerini normal ifade ifadesi olarak yorumlamaz. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Belirli bir kelimeyi içeren dosyaları bul
Geçerli dizinde ve alt dizinlerde "çeviri" kelimesini içeren tüm dosyaları ara.

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Sürüm dizesi içeren JavaScript dosyalarını bulun
"Version == `x.y.z`" biçiminde bir sürüm dizesi içeren JavaScript dosyalarını arayın.

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

Tüm dizinleri listele
Geçerli dizindeki ve alt dizinlerindeki tüm dizinleri bul.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

XML dosyalarını bul ve nesneleri geçir
Tüm .xml dosyalarını ara ve sonuçları işlem hattı üzerinden nesneler olarak geçir.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Alternatif veri akışlarını dahil et
Tüm dosyaları ara ve sonuçlara alternatif veri akışlarını dahil et.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Tüm sürücülerde arama yap
Mevcut tüm sürücülerdeki tüm PDF dosyalarını ara.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Özel zaman aşımı ve paralellik
5 dakikalık zaman aşımı ve sınırlı paralellik ile günlük dosyalarını arayın.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Boru hattı girişi
Get-ChildItem'den dosya yollarını geçirerek "error" içeren dosyaları arayın.

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

Özyineleme derinliğini sınırla
Metin dosyalarını ara ancak özyinelemeyi 2 dizin düzeyiyle sınırla.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Dosya boyutuna göre filtrele
1 MB'den büyük ancak 10 MB'den küçük dosyaları bul.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Değiştirilme tarihine göre filtrele
1 Ocak 2025'ten sonra değiştirilmiş dosyaları bul.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Belirli desenleri hariç tut
Geçici dosyaları ve bin dizinlerini hariç tutarak tüm dosyaları ara.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Belirli sürücüleri ara
Yalnızca C: ve D: sürücülerinde .docx dosyalarını ara.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Büyük/küçük harfe duyarlı içerik araması
İçeriklerinde "Error" (büyük/küçük harfe duyarlı) ifadesini içeren dosyaları arayın.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Alternatif veri akışı içeriğini ara
"secret" içeren alternatif veri akışlarına sahip dosyaları ara.

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Her satırdaki tüm eşleşmeleri bul
Her satırda "function" ifadesinin yalnızca ilk eşleşmesini değil, tüm oluşumlarını ara.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Eşleşmelerin etrafındaki bağlamı göster
Daha iyi anlamak için her eşleşmeden önce 2 satır ve sonra 3 satır görüntüle.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Yalnızca eşleşen dizeleri al
Tam eşleşme nesneleri yerine yalnızca eşleşen metin dizelerini döndürür.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Basit boolean kontrolü
Desenin var olup olmadığını kontrol etmek için eşleşme detayları yerine true/false döndürür.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Her dosyada yalnızca ilk eşleşmeyi bul
Verimli dosya listeleme için her dosyadaki ilk eşleşmede dur.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Tam dize eşleştirme
Düzenli ifade yorumu olmadan, SimpleMatch kullanarak tam metin arayın.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Desen içermeyen dosyaları bul
Belirtilen deseni içermeyen dosyaları bulmak için NotMatch kullanın.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Dosya kodlamasını belirtin
Doğru metin işleme için belirli kodlamaya sahip dosyaları arayın.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Kültür metin karşılaştırması
SimpleMatch ile kültüre özgü eşleştirme kullanarak uluslararası metinler için.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Dosya boyutu, tarih ve içerik filtrelerini birleştirerek hassas aramalar yapın.

## Parameter Details

### `-Name <String[]>`

> Aranacak dosya adı veya deseni. Varsayılan '*' şeklindedir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> Aranacak dosya adı veya deseni. Varsayılan '*' şeklindedir.

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
| **Position?** | 1 |
| **Default value** | *(none)* |
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
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

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
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> Ayarlanırsa, alternatif veri akışları (ADS) içinde içerik araması yapar. Ayarlanmazsa, ADS dosya bilgisini içeriğini aramadan çıktılar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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

> Göreli aramalarda hiçbir öğe bulunamazken ağaçta yukarı doğru aramaya devam etmek için maksimum özyineleme derinliği. 0, devre dışı anlamına gelir.

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
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `None` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Bu joker desenleriyle eşleşen dosya veya dizinleri hariç tut (ör. *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> Cmdlet'in her metin satırında birden fazla eşleşme aradığını belirtir. Bu parametre olmadan, Select-String her metin satırında yalnızca ilk eşleşmeyi bulur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> Cmdlet eşleşmelerinin büyük/küçük harf duyarlı olduğunu belirtir. Varsayılan olarak eşleşmeler büyük/küçük harf duyarlı değildir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> Desenle eşleşen satırdan önce ve sonra belirtilen sayıda satırı yakalar.

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

> Hedef dosya için kodlama türünü belirtir. Select-String ile uyumlu değerleri ve genişletilmiş .NET kodlamalarını destekler.

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
### `-List`

> Her girdi dosyasından eşleşen metnin yalnızca ilk örneği döndürülür. Bu, normal ifadeyle eşleşen içeriğe sahip dosyaların bir listesini almanın en verimli yoludur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> Çıktıda eşleşen dizelerin vurgulanmasını devre dışı bırakır.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> Cmdlet'in bir MatchInfo nesnesi yerine basit bir yanıt döndürdüğünü belirtir. Döndürülen değer, desen bulunduysa $true veya desen bulunamadıysa $null'dır.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> Cmdlet'in yalnızca eşleşen dizeleri çıkarmasına neden olur, MatchInfo nesnelerini değil. Bu, Unix grep veya Windows findstr.exe komutlarına en çok benzeyen davranışı sağlar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-DuplicateFiles.md)
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
