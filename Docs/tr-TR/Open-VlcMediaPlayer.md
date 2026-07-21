# Open-VlcMediaPlayer

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlc`

## Synopsis

> Kapsamlı yapılandırma seçenekleriyle VLC Media Player'ı başlatır ve kontrol eder.

## Description

Bu işlev, pencere konumlandırma, monitör seçimi, oynatma ayarları, ses ve video filtreleri, altyazı yönetimi, çoklu dil desteği, ağ proxy ayarları ve gelişmiş performans seçenekleri ile VLC Medya Oynatıcı'yı başlatmak ve kontrol etmek için kapsamlı bir arabirim sağlar. İşlev, VLC mevcut değilse otomatik olarak yükleyebilir ve medya oynatma senaryoları için kapsamlı özelleştirme sunar. GenXdev pencere yönetim sistemi ile sorunsuz bir şekilde entegre olur ve Send-Key işlevi aracılığıyla klavye girişi otomasyonunu destekler.

## Syntax

```powershell
Open-VlcMediaPlayer [[-Path] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-FocusWindow] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-KeysToSend <String[]>] [-Left] [-Loop] [-Maximize] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-PassThru] [-PlayAndExit] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | — | — | 0 | — | VLC'de açılacak medya dosyası/ dosyaları veya URL'ler |
| `-Width` | Int32 | — | — | 1 | `-1` | Pencerenin başlangıç genişliği |
| `-Height` | Int32 | — | — | 2 | `-1` | Pencerenin başlangıç yüksekliği |
| `-X` | Int32 | — | — | 3 | `-999999` | Pencerenin başlangıç X konumu |
| `-Y` | Int32 | — | — | 4 | `-999999` | Pencerenin başlangıçtaki Y konumu |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | VLC Player Penceresine gönderilecek tuş vuruşları, GenXdev\Send-Key cmdlet'inin belgelerine bakın |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | VLC'ye tuş gönderirken kaçış kontrol karakterlerini ve değiştiricileri atla |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | VLC'ye tuş gönderirken Enter yerine Shift+Enter kullanın |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | VLC'ye tuş gönderirken farklı girdi dizeleri arasındaki milisaniye cinsinden gecikme |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tuşları gönderdikten sonra VLC penceresinde klavye odağını tut |
| `-Monitor` | Int32 | — | — | Named | `-1` | Kullanılacak monitör, 0 = varsayılan, -1 = at |
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
| `-NoBorders` | SwitchParameter | — | — | Named | — | Pencerenin kenarlıklarını kaldırır |
| `-Left` | SwitchParameter | — | — | Named | — | Pencereyi ekranın sol tarafına yerleştir |
| `-Right` | SwitchParameter | — | — | Named | — | Pencereyi ekranın sağ tarafına yerleştir |
| `-Top` | SwitchParameter | — | — | Named | — | Pencereyi ekranın üst tarafına yerleştir |
| `-Bottom` | SwitchParameter | — | — | Named | — | Pencereyi ekranın alt tarafına yerleştir |
| `-Centered` | SwitchParameter | — | — | Named | — | Pencereyi ekranın ortasına yerleştir |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Pencereye F11 gönderir |
| `-PassThru` | SwitchParameter | — | — | Named | — | Her işlem için pencere yardımcısını döndürür |
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
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | VLC'yi açtıktan sonra PowerShell pencere odağını geri yükle |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI tercihleri için oturumda depolanan alternatif ayarları kullan |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Oturumda AI tercihleri için saklanan alternatif ayarları temizle |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ayarları yalnızca kalıcı tercihlerde sakla, oturumu etkilemeden |

## Examples

### Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0 Opens a video file in fullscreen mode on the primary monitor for immersive viewing experience.

```powershell
Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0
Opens a video file in fullscreen mode on the primary monitor for immersive
viewing experience.
```

### vlc "video.mp4" -fs -m 0 Short form using aliases to open video fullscreen on monitor 0 with minimal typing required.

```powershell
vlc "video.mp4" -fs -m 0
Short form using aliases to open video fullscreen on monitor 0 with minimal
typing required.
```

### Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English" Opens a movie with external subtitles and specific audio language for enhanced viewing with captions.

```powershell
Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English"
Opens a movie with external subtitles and specific audio language for
enhanced viewing with captions.
```

## Parameter Details

### `-Path <String[]>`

> VLC'de açılacak medya dosyası/ dosyaları veya URL'ler

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
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
| **Default value** | `@()` |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | *(none)* |
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
| **Default value** | `50` |
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
| **Default value** | `-1` |
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
### `-PassThru`

> Her işlem için pencere yardımcısını döndürür

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
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

> VLC'yi açtıktan sonra PowerShell pencere odağını geri yükle

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
## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-MediaFile.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VlcMediaPlayerRepeat.md)
