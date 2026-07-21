# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Microsoft'in sağlam kopyalama (RoboCopy) yardımcı programı için bir PowerShell sarmalayıcısı sağlar.

## Description

RoboCopy komut satırı yardımcı programı için kapsamlı bir sarmalayıcıdır ve sağlam dosya ve dizin kopyalama yetenekleri sağlar. Bu işlev, RoboCopy'nin kapsamlı özellik setini PowerShell dostu parametreler aracılığıyla kullanıma sunarken, güçlü işlevselliğinin çoğunu korur.

Temel Özellikler:
- Ayna seçenekleri ile dizin senkronizasyonu
- Uzun yol adları için destek (>256 karakter)
- Güvenlik ayarlarının korunması
- Gelişmiş dosya özniteliği yönetimi
- Sembolik bağlantı ve birleşim noktası yönetimi
- Sürekli senkronizasyon için izleme modu
- Büyük dosyalar için performans optimizasyonu
- Ağ sıkıştırma desteği
- Arızalı cihazlar için kurtarma modu

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | Dizin, dosya yolu veya dizin+arama maskesi |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | Kopyalanan dosya ve dizinlerin yerleştirileceği hedef dizin.
Bu dizin henüz mevcut değilse, eksik tüm dizinler oluşturulur.
Varsayılan değer = ".\"" |
| `-Files` | String[] | — | — | 2 | `@()` | Kopyalanacak dosyaları seçmek için isteğe bağlı arama maskesi.
            Varsayılan değer = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Belirtilen dizinlerin içeriğini eşitler, ayrıca hedefte kaynakta bulunmayan tüm dosya ve dizinleri siler |
| `-Move` | SwitchParameter | — | — | Named | — | Tüm dosyaları kaynaktan hedefe kopyalamak yerine taşıyacak |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Ayrıca dosya ve dizinlerin sahipliğini, güvenlik tanımlayıcılarını ve denetim bilgilerini de kopyalar |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Yalnızca kaynaktan dosyaları kopyalar ve alt dizinleri atlar (alt dizinlere inmez) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Boş olacaklarsa dizinleri kopyalamaz *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Yalnızca dizin ağacı oluştur *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Yalnızca dizin ağacı ve sıfır uzunluklu dosyalar oluştur |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Sembolik bağlantıları, bağlantı noktalarını veya işaret ettikleri içeriği kopyalamayın |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Dosya sembolik bağlantılarını kopyalama ancak dizin bağlantılarını takip et |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Sembolik bağlantıların işaret ettiği içeriği kopyalamak yerine, bağlantıların kendilerini kopyala |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Klasör bağlantılarını (klasör için sembolik bağlantı) veya işaret ettikleri içeriği kopyalama *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Junction noktalarının işaret ettiği içeriği kopyalamak yerine, junction noktalarının kendisini kopyalayın *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Hedeftekinden daha eski olsalar bile tüm dosyaları kopyalar |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Yalnızca arşiv özniteliği ayarlanmış dosyaları kopyalar |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Yalnızca arşiv özniteliği ayarlanmış dosyaları kopyalamanın yanı sıra, bu özniteliği kaynakta sıfırlar |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Bu ad/isim/yol/joker karakterlerden herhangi biriyle eşleşen dosyaları hariç tut 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Bu adlardan/yollardan/joker karakterlerden herhangi biriyle eşleşen dizinleri hariç tut *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Yalnızca şu özniteliklerin tümü ayarlanmış dosyaları kopyala [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Şu özniteliklerden herhangi birine sahip dosyaları hariç tut: [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Kopyalanan dosyalara belirtilen öznitelikleri ayarlar [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Kopyalanan dosyalardan belirtilen öznitelikleri kaldıracak [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Kaynak dizin ağacının yalnızca üst n düzeyini kopyalayın *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | En az n bayt boyutunda olmayan dosyaları atla |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | n bayttan büyük dosyaları atla |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | En az: n gün eski olmayan veya n tarihinden önce oluşturulmamış dosyaları atla (eğer n < 1900 ise n = n gün, değilse n = YYYYMMDD tarihi) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Şu şartlardan daha eski olan dosyaları atla: n gün VEYA n tarihinden sonra oluşturulmuş (eğer n < 1900 ise n = n gün, değilse n = YYYYMMDD tarihi) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Son n gün içinde erişilen veya n tarihinden önceki dosyaları atla (eğer n < 1900 ise n = n gün, değilse n = YYYYMMDD tarihi) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Şu kadar gün içinde erişilmemiş dosyaları atla: n gün VEYA n tarihinden sonra (eğer n < 1900 ise n = n gün, aksi halde n = YYYYAAGG tarihi) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Kopyalama sırasında G/Ç hataları oluştuğunda kısa bir süre duraklatılıp yeniden denenecek |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Kopyalamadan sonra etkin kalır ve varsayılan 10 dakikalık eşikten sonra ek değişiklikleri kopyalar |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Değiştiyse n dakika içinde yeniden çalıştır |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | n'den fazla değişiklik görüldüğünde yeniden çalıştır |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Çalışma saatleri - yeni kopyaların başlatılabileceği zamanlar, başlangıç zamanı, aralık 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Çalışma saatleri - yeni kopyaların başlatılabileceği zamanlar, bitiş zamanı, aralık 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Belirtilmişse, günlüğe kaydetme belirtilen dosyaya da yapılacaktır |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Belirtilen günlük dosyasına ekleme yapma, bunun yerine üzerine yaz. |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Çıktıya taranan tüm dizin adlarını dahil edin |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Çıktıya taranan tüm dosya adlarını dahil et, atlananlar dahil |
| `-Unicode` | SwitchParameter | — | — | Named | — | Durumu UNICODE olarak çıktıla |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Büyük dosyaları kopyalamak için optimizasyonu etkinleştirir |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Çoklu iş parçacıklı kopyalama yaparak performansı optimize edin |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Sunucular arasında dosya kopyalarken bant genişliğinden ve zamandan tasarruf etmek için mümkünse sıkıştırma kullanın |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Ayarlanırsa, varsayılan 2 saniye toleransı yerine milisaniye zaman damgası eşleştirmesi kullanılır |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Belirtilen robocopy parametresini geçersiz kılar, kaldırır veya ekler.

Kullanım:

Parametre ekleme veya değiştirme:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Parametre kaldırma:

    -Override -/Switch

Birden çok geçersiz kılma:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> Dizin, dosya yolu veya dizin+arama maskesi

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> Kopyalanan dosya ve dizinlerin yerleştirileceği hedef dizin.
Bu dizin henüz mevcut değilse, eksik tüm dizinler oluşturulur.
Varsayılan değer = ".\""

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> Kopyalanacak dosyaları seçmek için isteğe bağlı arama maskesi.
            Varsayılan değer = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> Belirtilen dizinlerin içeriğini eşitler, ayrıca hedefte kaynakta bulunmayan tüm dosya ve dizinleri siler

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> Tüm dosyaları kaynaktan hedefe kopyalamak yerine taşıyacak

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> Ayrıca dosya ve dizinlerin sahipliğini, güvenlik tanımlayıcılarını ve denetim bilgilerini de kopyalar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> Yalnızca kaynaktan dosyaları kopyalar ve alt dizinleri atlar (alt dizinlere inmez)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> Boş olacaklarsa dizinleri kopyalamaz

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> Yalnızca dizin ağacı oluştur

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> Yalnızca dizin ağacı ve sıfır uzunluklu dosyalar oluştur

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> Sembolik bağlantıları, bağlantı noktalarını veya işaret ettikleri içeriği kopyalamayın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> Dosya sembolik bağlantılarını kopyalama ancak dizin bağlantılarını takip et

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> Sembolik bağlantıların işaret ettiği içeriği kopyalamak yerine, bağlantıların kendilerini kopyala

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> Klasör bağlantılarını (klasör için sembolik bağlantı) veya işaret ettikleri içeriği kopyalama

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> Junction noktalarının işaret ettiği içeriği kopyalamak yerine, junction noktalarının kendisini kopyalayın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> Hedeftekinden daha eski olsalar bile tüm dosyaları kopyalar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> Yalnızca arşiv özniteliği ayarlanmış dosyaları kopyalar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> Yalnızca arşiv özniteliği ayarlanmış dosyaları kopyalamanın yanı sıra, bu özniteliği kaynakta sıfırlar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> Bu ad/isim/yol/joker karakterlerden herhangi biriyle eşleşen dosyaları hariç tut

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> Bu adlardan/yollardan/joker karakterlerden herhangi biriyle eşleşen dizinleri hariç tut

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> Yalnızca şu özniteliklerin tümü ayarlanmış dosyaları kopyala [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> Şu özniteliklerden herhangi birine sahip dosyaları hariç tut: [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> Kopyalanan dosyalara belirtilen öznitelikleri ayarlar [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> Kopyalanan dosyalardan belirtilen öznitelikleri kaldıracak [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> Kaynak dizin ağacının yalnızca üst n düzeyini kopyalayın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> En az n bayt boyutunda olmayan dosyaları atla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> n bayttan büyük dosyaları atla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> En az: n gün eski olmayan veya n tarihinden önce oluşturulmamış dosyaları atla (eğer n < 1900 ise n = n gün, değilse n = YYYYMMDD tarihi)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> Şu şartlardan daha eski olan dosyaları atla: n gün VEYA n tarihinden sonra oluşturulmuş (eğer n < 1900 ise n = n gün, değilse n = YYYYMMDD tarihi)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> Son n gün içinde erişilen veya n tarihinden önceki dosyaları atla (eğer n < 1900 ise n = n gün, değilse n = YYYYMMDD tarihi)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> Şu kadar gün içinde erişilmemiş dosyaları atla: n gün VEYA n tarihinden sonra (eğer n < 1900 ise n = n gün, aksi halde n = YYYYAAGG tarihi)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> Kopyalama sırasında G/Ç hataları oluştuğunda kısa bir süre duraklatılıp yeniden denenecek

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> Kopyalamadan sonra etkin kalır ve varsayılan 10 dakikalık eşikten sonra ek değişiklikleri kopyalar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> Değiştiyse n dakika içinde yeniden çalıştır

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> n'den fazla değişiklik görüldüğünde yeniden çalıştır

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> Çalışma saatleri - yeni kopyaların başlatılabileceği zamanlar, başlangıç zamanı, aralık 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> Çalışma saatleri - yeni kopyaların başlatılabileceği zamanlar, bitiş zamanı, aralık 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> Belirtilmişse, günlüğe kaydetme belirtilen dosyaya da yapılacaktır

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> Belirtilen günlük dosyasına ekleme yapma, bunun yerine üzerine yaz.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> Çıktıya taranan tüm dizin adlarını dahil edin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> Çıktıya taranan tüm dosya adlarını dahil et, atlananlar dahil

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> Durumu UNICODE olarak çıktıla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> Büyük dosyaları kopyalamak için optimizasyonu etkinleştirir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> Çoklu iş parçacıklı kopyalama yaparak performansı optimize edin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> Sunucular arasında dosya kopyalarken bant genişliğinden ve zamandan tasarruf etmek için mümkünse sıkıştırma kullanın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> Ayarlanırsa, varsayılan 2 saniye toleransı yerine milisaniye zaman damgası eşleştirmesi kullanılır

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> Belirtilen robocopy parametresini geçersiz kılar, kaldırır veya ekler.

Kullanım:

Parametre ekleme veya değiştirme:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Parametre kaldırma:

    -Override -/Switch

Birden çok geçersiz kılma:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

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
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-TextFileAtomic.md)
