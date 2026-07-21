# Open-MediaFile

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcmedia`, `media`, `findmedia`

## Synopsis

> VLC medya oynatıcısını kullanarak medya dosyalarını gelişmiş filtreleme ve yapılandırma seçenekleriyle açar ve oynatır.

## Description

Bu işlev, arama desenlerine dayalı olarak medya dosyalarını tarar, bir oynatma listesi oluşturur ve kapsamlı yapılandırma seçenekleriyle VLC medya oynatıcısını başlatır. Videolar, ses dosyaları ve resimleri destekler; gerektiğinde otomatik VLC kurulumu yapar. İşlev, oynatma davranışı, pencere konumlandırma, ses/görüntü ayarları ve altyazı işleme üzerinde geniş kapsamlı kontrol sağlar.

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | Aranacak dosya adı veya deseni. Varsayılan '*' şeklindedir. 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Tüm mevcut sürücüler arasında arama yap |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Alt dizinlere yineleme yapma |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Dizin geçişi sırasında sembolik bağlantıları ve birleşim noktalarını takip edin. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Göreli aramalarda hiçbir öğe bulunamazken ağaçta yukarı doğru aramaya devam etmek için maksimum özyineleme derinliği. 0, devre dışı anlamına gelir. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Sonuçlara dahil edilecek maksimum dosya boyutu bayt cinsinden. 0 sınırsız anlamına gelir. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Sonuçlara dahil edilecek bayt cinsinden minimum dosya boyutu. 0, minimum olmadığı anlamına gelir. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Yalnızca bu tarih/saatten (UTC) sonra değiştirilen dosyaları dahil et. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Yalnızca bu tarih/saatten (UTC) önce değiştirilen dosyaları dahil et. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Atlanacak dosya öznitelikleri (ör. Sistem, Gizli veya Yok). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Boru hattı girdisinden aranacak dosya adı veya deseni. Varsayılan "*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | Medya dosyalarının kaydedileceği oynatma listesi yolu. Belirtilmezse, oynatma listesi geçici bir dizine kaydedilir. |
| `-Width` | Int32 | — | — | 1 | `-1` | Pencerenin başlangıç genişliği |
| `-Height` | Int32 | — | — | 2 | `-1` | Pencerenin başlangıç yüksekliği |
| `-X` | Int32 | — | — | 3 | `-999999` | Pencerenin başlangıç X konumu |
| `-Y` | Int32 | — | — | 4 | `-999999` | Pencerenin başlangıçtaki Y konumu |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | VLC Player Penceresine gönderilecek tuş vuruşları, GenXdev\Send-Key cmdlet'inin belgelerine bakın |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Dizin görevleri için maksimum paralellik derecesi |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | İsteğe bağlı: saniye cinsinden iptal zaman aşımı |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | VLC'ye tuş gönderirken kaçış kontrol karakterlerini ve değiştiricileri atla |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | VLC'ye tuş gönderirken Enter yerine Shift+Enter kullanın |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | VLC'ye tuş gönderirken farklı girdi dizeleri arasındaki milisaniye cinsinden gecikme |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tuşları gönderdikten sonra VLC penceresinde klavye odağını tut |
| `-Monitor` | Int32 | — | — | Named | `-2` | Kullanılacak monitör, 0 = varsayılan, -1 = at |
| `-AspectRatio` | String | — | — | Named | — | Kaynak en-boy oranı |
| `-Crop` | String | — | — | Named | — | Video kırpma |
| `-SubtitleFile` | String | — | — | Named | — | Alt yazı dosyasını kullan |
| `-SubtitleScale` | Int32 | — | — | Named | — | Altyazı metni ölçekleme faktörü |
| `-SubtitleLanguage` | String | — | — | Named | — | Altyazı dili |
| `-AudioLanguage` | String | — | — | Named | — | Ses dili |
| `-PreferredAudioLanguage` | String | — | — | Named | — | Tercih edilen ses dili |
| `-HttpProxy` | String | — | — | Named | — | HTTP vekil sunucusu |
| `-HttpProxyPassword` | String | — | — | Named | — | HTTP proxy şifresi |
| `-VerbosityLevel` | Int32 | — | — | Named | — | Ayrıntı düzeyi |
| `-SubdirectoryBehavior` | String | — | — | Named | — | Alt dizin davranışı |
| `-IgnoredExtensions` | String | — | — | Named | — | Yoksayılan uzantılar |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | VLC yürütülebilir dosyasının yolu |
| `-ReplayGainMode` | String | — | — | Named | — | Ses yüksekliği tekrar oynatma modu |
| `-ReplayGainPreamp` | Single | — | — | Named | — | Yeniden çalma kazancı ön yükselticisi |
| `-ForceDolbySurround` | String | — | — | Named | — | Dolby Surround algılamasını zorla |
| `-AudioFilters` | String[] | — | — | Named | — | Ses filtreleri |
| `-Visualization` | String | — | — | Named | — | Ses görselleştirmeleri |
| `-Deinterlace` | String | — | — | Named | — | Titreşim Giderme |
| `-DeinterlaceMode` | String | — | — | Named | — | Geçmeli çözme modu |
| `-VideoFilters` | String[] | — | — | Named | — | Video filtre modülü |
| `-VideoFilterModules` | String[] | — | — | Named | — | Video filtre modülleri |
| `-Modules` | String[] | — | — | Named | — | Modüller |
| `-AudioFilterModules` | String[] | — | — | Named | — | Ses filtre modülleri |
| `-AudioVisualization` | String | — | — | Named | — | Ses görselleştirme modu |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | Tercih edilen altyazı dili |
| `-IgnoredFileExtensions` | String | — | — | Named | — | Yoksayılan dosya uzantıları |
| `-Arguments` | String | — | — | Named | — | Ek bağımsız değişkenler |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Arama sonuçlarına alternatif veri akışlarını dahil et |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | Oynatma listesine yalnızca video dosyalarını ekleyin |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | Çalma listesine yalnızca ses dosyalarını ekleyin |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | Yalnızca oynatma listesindeki resimleri ekleyin |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Ayrıca oynatma listesine videolar ekleyin |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Ayrıca oynatma listesine ses dosyalarını da ekleyin |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Ayrıca oynatma listesine resimler ekleyin |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Pencerenin kenarlıklarını kaldırır |
| `-Left` | SwitchParameter | — | — | Named | — | Pencereyi ekranın sol tarafına yerleştir |
| `-Right` | SwitchParameter | — | — | Named | — | Pencereyi ekranın sağ tarafına yerleştir |
| `-Top` | SwitchParameter | — | — | Named | — | Pencereyi ekranın üst tarafına yerleştir |
| `-Bottom` | SwitchParameter | — | — | Named | — | Pencereyi ekranın alt tarafına yerleştir |
| `-Centered` | SwitchParameter | — | — | Named | — | Pencereyi ekranın ortasına yerleştir |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Pencereye F11 gönderir |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | Her zaman üstte |
| `-Random` | SwitchParameter | — | — | Named | — | Dosyaları sonsuza kadar rastgele oynat |
| `-Loop` | SwitchParameter | — | — | Named | — | .EXTERNALHELP Microsoft.PowerShell.Utility-help.xml |
| `-Repeat` | SwitchParameter | — | — | Named | — | Geçerli öğeyi yinele |
| `-StartPaused` | SwitchParameter | — | — | Named | — | Duraklatılmış Başlangıç |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | Oynat ve çıkış |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | Sesi devre dışı bırak |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | Altyazıları devre dışı bırak |
| `-AutoScale` | SwitchParameter | — | — | Named | — | Video Otomatik Ölçeklendirme |
| `-HighPriority` | SwitchParameter | — | — | Named | — | İşlemin önceliğini artırın |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | Ses zaman uzatmayı etkinleştir |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Yeni bir VLC medya oynatıcı örneği aç |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | Video duvar kağıdı modunu etkinleştir |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | Ses zaman germeyi etkinleştir |
| `-Close` | SwitchParameter | — | — | Named | — | VLC medya oynatıcı penceresini kapat |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Pencereyi Powershell'den farklı bir monitörde tam ekran yapacak veya aynı monitörde Powershell ile yan yana koyacaktır |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | VLC penceresini açtıktan sonra odakla |
| `-SetForeground` | SwitchParameter | — | — | Named | — | VLC penceresini açıldıktan sonra ön plana getir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Pencereyi büyüt |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | VLC açıldıktan sonra PowerShell pencere odağını geri yükler. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI tercihleri için oturumda depolanan alternatif ayarları kullan |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Oturumda AI tercihleri için saklanan alternatif ayarları temizle |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ayarları yalnızca kalıcı tercihlerde sakla, oturumu etkilemeden |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Dosyalar ve dizinler için büyük/küçük harf duyarlılığını alır veya ayarlar |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Dizin dolaşımı için maksimum özyineleme derinliği. 0 sınırsız anlamına gelir. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | Bu joker karakter desenleriyle eşleşen dosyaları veya dizinleri hariç tut (ör. *.tmp, *\\bin\\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | Arama tarafından bulunan dosyaları döndürür |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | VLC'yi açmadan arama tarafından bulunan dosyaları döndürür |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | Her işlem için pencere yardımcısını döndürür |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

Geçerli dizindeki tüm medya dosyalarını varsayılan VLC ayarlarını kullanarak açar.

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

Yalnızca Resimler klasöründeki resim dosyalarını tam ekran modunda açar; 'vlcmedia' takma adı kullanılır.

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

Döngü etkinleştirilmiş video dosyalarını 'media' takma adını kullanarak açar.

## Parameter Details

### `-Name <String[]>`

> Aranacak dosya adı veya deseni. Varsayılan '*' şeklindedir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'*'` |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

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
### `-NoRecurse`

> Alt dizinlere yineleme yapma

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Dizin geçişi sırasında sembolik bağlantıları ve birleşim noktalarını takip edin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-InputObject <Object>`

> Boru hattı girdisinden aranacak dosya adı veya deseni. Varsayılan "*"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PlaylistPath <String>`

> Medya dosyalarının kaydedileceği oynatma listesi yolu. Belirtilmezse, oynatma listesi geçici bir dizine kaydedilir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.Path]::GetTempFileName() + '.m3u'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Pencerenin başlangıç genişliği

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Pencerenin başlangıç yüksekliği

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Pencerenin başlangıç X konumu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> Pencerenin başlangıçtaki Y konumu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> VLC Player Penceresine gönderilecek tuş vuruşları, GenXdev\Send-Key cmdlet'inin belgelerine bakın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | *(none)* |
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
### `-SendKeyEscape`

> VLC'ye tuş gönderirken kaçış kontrol karakterlerini ve değiştiricileri atla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> VLC'ye tuş gönderirken Enter yerine Shift+Enter kullanın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> VLC'ye tuş gönderirken farklı girdi dizeleri arasındaki milisaniye cinsinden gecikme

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Tuşları gönderdikten sonra VLC penceresinde klavye odağını tut

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Kullanılacak monitör, 0 = varsayılan, -1 = at

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AspectRatio <String>`

> Kaynak en-boy oranı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Crop <String>`

> Video kırpma

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleFile <String>`

> Alt yazı dosyasını kullan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleScale <Int32>`

> Altyazı metni ölçekleme faktörü

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleLanguage <String>`

> Altyazı dili

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioLanguage <String>`

> Ses dili

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredAudioLanguage <String>`

> Tercih edilen ses dili

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxy <String>`

> HTTP vekil sunucusu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxyPassword <String>`

> HTTP proxy şifresi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VerbosityLevel <Int32>`

> Ayrıntı düzeyi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubdirectoryBehavior <String>`

> Alt dizin davranışı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredExtensions <String>`

> Yoksayılan uzantılar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VLCPath <String>`

> VLC yürütülebilir dosyasının yolu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainMode <String>`

> Ses yüksekliği tekrar oynatma modu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainPreamp <Single>`

> Yeniden çalma kazancı ön yükselticisi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceDolbySurround <String>`

> Dolby Surround algılamasını zorla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilters <String[]>`

> Ses filtreleri

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Visualization <String>`

> Ses görselleştirmeleri

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Deinterlace <String>`

> Titreşim Giderme

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DeinterlaceMode <String>`

> Geçmeli çözme modu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilters <String[]>`

> Video filtre modülü

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilterModules <String[]>`

> Video filtre modülleri

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Modules <String[]>`

> Modüller

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilterModules <String[]>`

> Ses filtre modülleri

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioVisualization <String>`

> Ses görselleştirme modu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredSubtitleLanguage <String>`

> Tercih edilen altyazı dili

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredFileExtensions <String>`

> Yoksayılan dosya uzantıları

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Arguments <String>`

> Ek bağımsız değişkenler

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-OnlyVideos`

> Oynatma listesine yalnızca video dosyalarını ekleyin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAudio`

> Çalma listesine yalnızca ses dosyalarını ekleyin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPictures`

> Yalnızca oynatma listesindeki resimleri ekleyin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeVideos`

> Ayrıca oynatma listesine videolar ekleyin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAudio`

> Ayrıca oynatma listesine ses dosyalarını da ekleyin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludePictures`

> Ayrıca oynatma listesine resimler ekleyin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Pencerenin kenarlıklarını kaldırır

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Pencereyi ekranın sol tarafına yerleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> Pencereyi ekranın sağ tarafına yerleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> Pencereyi ekranın üst tarafına yerleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> Pencereyi ekranın alt tarafına yerleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Pencereyi ekranın ortasına yerleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> Pencereye F11 gönderir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AlwaysOnTop`

> Her zaman üstte

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Random`

> Dosyaları sonsuza kadar rastgele oynat

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Shuffle` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Loop`

> .EXTERNALHELP Microsoft.PowerShell.Utility-help.xml

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repeat`

> Geçerli öğeyi yinele

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StartPaused`

> Duraklatılmış Başlangıç

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayAndExit`

> Oynat ve çıkış

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableAudio`

> Sesi devre dışı bırak

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableSubtitles`

> Altyazıları devre dışı bırak

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScale`

> Video Otomatik Ölçeklendirme

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HighPriority`

> İşlemin önceliğini artırın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableTimeStretch`

> Ses zaman uzatmayı etkinleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> Yeni bir VLC medya oynatıcı örneği aç

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableWallpaperMode`

> Video duvar kağıdı modunu etkinleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableAudioTimeStretch`

> Ses zaman germeyi etkinleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Close`

> VLC medya oynatıcı penceresini kapat

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Pencereyi Powershell'den farklı bir monitörde tam ekran yapacak veya aynı monitörde Powershell ile yan yana koyacaktır

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> VLC penceresini açtıktan sonra odakla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> VLC penceresini açıldıktan sonra ön plana getir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Pencereyi büyüt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> VLC açıldıktan sonra PowerShell pencere odağını geri yükler.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> AI tercihleri için oturumda depolanan alternatif ayarları kullan

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

> Oturumda AI tercihleri için saklanan alternatif ayarları temizle

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

> Ayarları yalnızca kalıcı tercihlerde sakla, oturumu etkilemeden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
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
### `-Exclude <String[]>`

> Bu joker karakter desenleriyle eşleşen dosyaları veya dizinleri hariç tut (ör. *.tmp, *\\bin\\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\\.git\\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Arama tarafından bulunan dosyaları döndürür

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruNoOpen`

> VLC'yi açmadan arama tarafından bulunan dosyaları döndürür

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruWindow`

> Her işlem için pencere yardımcısını döndürür

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

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MediaFileCreationDate.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VlcMediaPlayerRepeat.md)
