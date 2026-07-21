# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Ortak özelliklere dayalı olarak benzer film başlıklarını bulur.

## Description

Sağlanan filmleri inceleyerek ortak özellikleri bulur ve 10 benzer film adından oluşan bir liste döndürür. Giriş filmlerindeki kalıpları ve temaları belirlemek için yapay zeka kullanarak ilgili öneriler sunar.

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-All] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Headless] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Webkit] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | Benzerlikleri analiz edilecek film başlıkları dizisi |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | LLM sorgusunun türü |
| `-Model` | String | — | — | Named | — | AI işlemleri için kullanılacak model tanımlayıcısı veya deseni |
| `-ApiEndpoint` | String | — | — | Named | — | Yapay zeka işlemleri için API uç noktası URL'si |
| `-ApiKey` | String | — | — | Named | — | Kimlik doğrulamalı AI işlemleri için API anahtarı |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | LLM'nin JSON şemaları için desteği olmadığını belirtir |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI işlemleri için saniye cinsinden zaman aşımı |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Tercih veri dosyaları için veritabanı yolu |
| `-Temperature` | Double | — | — | Named | `-1` | Yanıtın rastgelelik derecesi için sıcaklık (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Her sonuç için IMDB aramalarını açar |
| `-Language` | String | — | — | Named | — | IMDb araması veya tarayıcı oturumu için dil |
| `-Monitor` | Int32 | — | — | Named | `-1` | Tarayıcı penceresi yerleşimi için dizin veya adı izleyin |
| `-Width` | Int32 | — | — | Named | `-1` | Tarayıcı penceresinin genişliği piksel cinsinden |
| `-Height` | Int32 | — | — | Named | `-1` | Tarayıcı penceresinin piksel cinsinden yüksekliği |
| `-AcceptLang` | String | — | — | Named | — | Tarayıcı oturumu için Accept-Language HTTP başlığı |
| `-Private` | SwitchParameter | — | — | Named | — | Tarayıcıyı gizli/özel modda aç |
| `-Chrome` | SwitchParameter | — | — | Named | — | Tarayıcı oturumu için Google Chrome'u kullanın |
| `-Chromium` | SwitchParameter | — | — | Named | — | Tarayıcı oturumu için Chromium kullan |
| `-Firefox` | SwitchParameter | — | — | Named | — | Tarayıcı oturumu için Mozilla Firefox kullanın |
| `-Left` | Int32 | — | — | Named | — | Tarayıcı penceresinin soldan konumu (piksel cinsinden) |
| `-Right` | Int32 | — | — | Named | — | Tarayıcı penceresinin piksel cinsinden doğru konumu |
| `-Bottom` | Int32 | — | — | Named | — | Tarayıcı penceresinin alt konumu piksel cinsinden |
| `-Centered` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın ortasında aç |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Tarayıcıyı tam ekran modunda aç |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Uygulama modunda tarayıcıyı aç (minimal UI) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Oturum için tarayıcı eklentilerini devre dışı bırak |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Tarayıcı oturumunda açılır pencere engelleyiciyi devre dışı bırak |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Açıldıktan sonra tarayıcı penceresine odaklan |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Açıldıktan sonra tarayıcı penceresini ön plana getir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini açtıktan sonra büyüt |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Tarayıcıyı kapattıktan sonra odağı önceki pencereye geri yükle |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Her IMDB sonucunu yeni bir tarayıcı penceresinde aç |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.imdb.com/search/title/ |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Yalnızca URL'yi döndürün, tarayıcıyı açmayın |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Tarayıcı açıldıktan sonra Escape tuşunu gönder |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tuş gönderdikten sonra tarayıcıda klavye odağını tut |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Tarayıcıya tuş gönderirken Shift+Enter kullanın |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Tarayıcıya tuş gönderme arasındaki gecikme (milisaniye cinsinden) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Kenarlıksız tarayıcı penceresi aç |
| `-PlayWright` | SwitchParameter | — | — | Named | — | İşletim Sistemi Tarayıcısı Yerine Playwright Tarafından Yönetilen Tarayıcıyı Kullanın |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright tarafından yönetilen WebKit tarayıcısını açar. -PlayWright anlamına gelir. |
| `-Headless` | SwitchParameter | — | — | Named | — | Tarayıcıyı görünür bir pencere olmadan çalıştırın |
| `-All` | SwitchParameter | — | — | Named | — | Tüm kayıtlı modern tarayıcılarda açar |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Her sonuç için tarayıcı pencerelerini yan yana açın |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI tercihleri için oturumda depolanan alternatif ayarları kullan |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Oturumda AI tercihleri için saklanan alternatif ayarları temizle |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ayarları yalnızca kalıcı tercihlerde sakla, oturumu etkilemeden |
| `-Instructions` | String | — | — | Named | — | .DESCRIPTION
    Add-CIPolicyRule cmdlet'i, yeni sistem güvenlik ilkelerine kurallar eklemenizi sağlar.
    Bu komut, bir XML dosyasına yeni bir kural düğümü ekleyerek çalışır.
    Kullanıcı, kuralın hangi parametrelere göre eklenmesi gerektiğini belirleyebilir.
    Hedef sistem, mevcut bir Windows Defender Uygulama Denetimi (WDAC) ilkesi olabilir. |
| `-Attachments` | String[] | — | — | Named | — | Eklenecek dosya yolları dizisi |
| `-ImageDetail` | String | — | — | Named | — | Görüntü işleme için görüntü ayrıntı düzeyi. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Yapay zeka modeli tarafından işleme sırasında çağrılabilen işlev tanımları dizisi. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | AI'nın çağırabileceği araçlar olarak kullanılacak PowerShell komut tanımları dizisi. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Yürütmeden önce onay gerektirmeyen komut adları dizisi. |
| `-AudioTemperature` | Double | — | — | Named | — | Ses üretimi için sıcaklık. |
| `-TemperatureResponse` | Double | — | — | Named | — | Yanıt oluşturma sıcaklığı. |
| `-CpuThreads` | Int32 | — | — | Named | — | Kullanılacak CPU iş parçacığı sayısı. |
| `-SuppressRegex` | String | — | — | Named | — | Belirli çıktıları bastırmak için düzenli ifade. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Ses bağlam boyutu işleme için. |
| `-SilenceThreshold` | Double | — | — | Named | — | Ses işleme için sessizlik eşiği. |
| `-LengthPenalty` | Double | — | — | Named | — | Dizi üretimi için uzunluk cezası. |
| `-EntropyThreshold` | Double | — | — | Named | — | Çıktı filtrelemesi için entropi eşiği. |
| `-LogProbThreshold` | Double | — | — | Named | — | Çıktı filtreleme için log olasılık eşiği. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Ses algılama için konuşma eşiği yok. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Konuşma çıkışını devre dışı bırak. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Düşünce konuşma çıktısını devre dışı bırak. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX'u (ses aktivasyonu) devre dışı bırak. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Masaüstü ses yakalamayı kullanın. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Bağlam kullanımını devre dışı bırak. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Işın demeti arama stratejisini kullanın. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Örnek Çıktı:

```
PS C:\> Remove-AppvClientPackage -Name "MyApp" -Version 1
```

Bu komut, adı "MyApp" ve sürümü 1 olan App-V İstemci Paketini kaldırır. |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Belirtildiğinde, işlemin ardından sonuçtaki dize listesini sistem panosuna geri kopyalar. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | ### Çeviri

.Name
    Get-Process

.Synopsis
    Yerel bilgisayarda çalışan işlemleri alır.

.Syntax
    Get-Process [[-Name] <string[]>] [-ComputerName <string[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]

.Description
    Get-Process cmdlet'i yerel bilgisayardaki işlemleri alır. Bir işlemi işlem adına veya işlem kimliğine (PID) göre alabilir veya tüm işlemlerin bir listesini getirebiliriz. Ayrıca işlemler hakkında modül ve dosya sürümü bilgisi gibi ayrıntılı bilgiler alabiliriz.

.Parameters
    -Name <string[]>
        Alınacak işlemlerin adlarını belirtir. Birden fazla ad belirtmek için virgülle ayırın. Joker karakterlere izin verilir. Parametre adı "-Name" isteğe bağlıdır.

    -ComputerName <string[]>
        İşlemlerin alınacağı bilgisayarın adını belirtir. Varsayılan yerel bilgisayardır. Birden fazla bilgisayar belirtmek için virgülle ayırın. Bilgisayar adları, NetBIOS adı, IP adresi veya tam nitelikli etki alanı adı (FQDN) olabilir.

    -Module
        İşlem tarafından yüklenen modüller hakkında bilgi alır.

    -FileVersionInfo
        İşlem için dosya sürümü bilgisi alır.

    <CommonParameters>
        Bu cmdlet, -Verbose, -Debug, -ErrorAction, -ErrorVariable, -WarningAction, -WarningVariable, -OutBuffer, -OutVariable, -PipelineVariable ve -InformationAction genel parametrelerini destekler. Daha fazla bilgi için about_CommonParameters konusuna bakın.

.Inputs
    System.String[]
        Bir işlem adı veya işlem adları dizisini Get-Process'a yönlendirebilirsiniz.

.Outputs
    System.Diagnostics.Process, System.Diagnostics.ProcessModule, System.Diagnostics.FileVersionInfo
        Varsayılan olarak Get-Process System.Diagnostics.Process nesnesi döndürür. -Module parametresini kullandığınızda System.Diagnostics.ProcessModule nesnesi döndürür. -FileVersionInfo parametresini kullandığınızda System.Diagnostics.FileVersionInfo nesnesi döndürür.

.Notes
    Get-Process, PowerShell'deki İşlem nesnelerini kullanır.

.Examples
    -------------------------- Örnek 1: Tüm işlemler --------------------------

    Get-Process

    Bu komut bilgisayarda çalışan tüm işlemleri alır.

    -------------------------- Örnek 2: Bir işlemi ada göre al --------------------------

    Get-Process -Name explorer

    Bu komut 'explorer' adlı işlemi alır.

    -------------------------- Örnek 3: İşlemleri joker karakterle filtrele --------------------------

    Get-Process -Name n*

    Bu komut adı 'n' ile başlayan tüm işlemleri alır.

    -------------------------- Örnek 4: Bir işlemi PID'ye göre al --------------------------

    Get-Process -Id 1234

    Bu komut işlem kimliği 1234 olan işlemi alır.

    -------------------------- Örnek 5: Modül bilgisi ile işlemleri al --------------------------

    Get-Process -Name svchost -Module

    Bu komut svchost işlemleri için yüklenen tüm modülleri alır.

.Related Links
    about_Process
    Debug-Process
    Start-Process
    Stop-Process
    Wait-Process |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Dosyayı $Path1 ve $Path2'de bulunan dosyalarla aynı dosyaya genişletir. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Tüm insan tarafından okunabilir metni çevirin. Kod, işaretleme veya yapılandırılmış veri varsa, sözdizimi, yapı ve programlama anahtar kelimeleri, etiketler veya veri formatına özgü öğeler gibi tüm teknik unsurları koruyun. Yalnızca yorumlar, dize değerleri, belgeler veya doğal dil içeriği gibi insan tarafından okunabilir metin kısımlarını çevirin. Tam biçimlendirme, girinti ve satır sonlarını koruyun. Tanımlayıcıları, işlev adlarını, değişkenleri veya teknik anahtar kelimeleri asla çevirmeyin. |
| `-Speak` | SwitchParameter | — | — | Named | — | Yapay zeka yanıtları için metinden konuşmaya özelliğini etkinleştir |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI düşünce yanıtları için metin-konuşma etkinleştir |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Oturumu oturum önbelleğinde saklama |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AI modeli için varsayılan araçları etkinleştirin. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .EXTERNALHELP Get-ReplicationGroup.ps1 help file |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Belirli işaretleme bloğu türleri için filtrele. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Araç çağrıları için maksimum geri arama uzunluğu. |

## Examples

### Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb

```powershell
Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb
```

### moremovietitle "The Matrix","Inception" -imdb

```powershell
moremovietitle "The Matrix","Inception" -imdb
```

## Parameter Details

### `-Movies <String[]>`

> Benzerlikleri analiz edilecek film başlıkları dizisi

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> LLM sorgusunun türü

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'Knowledge'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI işlemleri için kullanılacak model tanımlayıcısı veya deseni

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> Yapay zeka işlemleri için API uç noktası URL'si

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> Kimlik doğrulamalı AI işlemleri için API anahtarı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> LLM'nin JSON şemaları için desteği olmadığını belirtir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> AI işlemleri için saniye cinsinden zaman aşımı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

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
### `-Temperature <Double>`

> Yanıtın rastgelelik derecesi için sıcaklık (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OpenInImdb`

> Her sonuç için IMDB aramalarını açar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `imdb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> IMDb araması veya tarayıcı oturumu için dil

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Tarayıcı penceresi yerleşimi için dizin veya adı izleyin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Tarayıcı penceresinin genişliği piksel cinsinden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Tarayıcı penceresinin piksel cinsinden yüksekliği

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Tarayıcı oturumu için Accept-Language HTTP başlığı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Tarayıcıyı gizli/özel modda aç

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Tarayıcı oturumu için Google Chrome'u kullanın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Tarayıcı oturumu için Chromium kullan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Tarayıcı oturumu için Mozilla Firefox kullanın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Tarayıcı penceresinin soldan konumu (piksel cinsinden)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Tarayıcı penceresinin piksel cinsinden doğru konumu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Tarayıcı penceresinin alt konumu piksel cinsinden

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

> Tarayıcı penceresini ekranın ortasında aç

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

> Tarayıcıyı tam ekran modunda aç

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Uygulama modunda tarayıcıyı aç (minimal UI)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> Oturum için tarayıcı eklentilerini devre dışı bırak

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> Tarayıcı oturumunda açılır pencere engelleyiciyi devre dışı bırak

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Açıldıktan sonra tarayıcı penceresine odaklan

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

> Açıldıktan sonra tarayıcı penceresini ön plana getir

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

> Tarayıcı penceresini açtıktan sonra büyüt

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

> Tarayıcıyı kapattıktan sonra odağı önceki pencereye geri yükle

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> Her IMDB sonucunu yeni bir tarayıcı penceresinde aç

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> https://www.imdb.com/search/title/

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> Yalnızca URL'yi döndürün, tarayıcıyı açmayın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Tarayıcı açıldıktan sonra Escape tuşunu gönder

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Tuş gönderdikten sonra tarayıcıda klavye odağını tut

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Tarayıcıya tuş gönderirken Shift+Enter kullanın

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

> Tarayıcıya tuş gönderme arasındaki gecikme (milisaniye cinsinden)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Kenarlıksız tarayıcı penceresi aç

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> İşletim Sistemi Tarayıcısı Yerine Playwright Tarafından Yönetilen Tarayıcıyı Kullanın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Playwright tarafından yönetilen WebKit tarayıcısını açar. -PlayWright anlamına gelir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> Tarayıcıyı görünür bir pencere olmadan çalıştırın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> Tüm kayıtlı modern tarayıcılarda açar

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

> Her sonuç için tarayıcı pencerelerini yan yana açın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
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
### `-Instructions <String>`

> .DESCRIPTION
    Add-CIPolicyRule cmdlet'i, yeni sistem güvenlik ilkelerine kurallar eklemenizi sağlar.
    Bu komut, bir XML dosyasına yeni bir kural düğümü ekleyerek çalışır.
    Kullanıcı, kuralın hangi parametrelere göre eklenmesi gerektiğini belirleyebilir.
    Hedef sistem, mevcut bir Windows Defender Uygulama Denetimi (WDAC) ilkesi olabilir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> Eklenecek dosya yolları dizisi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Görüntü işleme için görüntü ayrıntı düzeyi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Yapay zeka modeli tarafından işleme sırasında çağrılabilen işlev tanımları dizisi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> AI'nın çağırabileceği araçlar olarak kullanılacak PowerShell komut tanımları dizisi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Yürütmeden önce onay gerektirmeyen komut adları dizisi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Ses üretimi için sıcaklık.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> Yanıt oluşturma sıcaklığı.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Kullanılacak CPU iş parçacığı sayısı.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Belirli çıktıları bastırmak için düzenli ifade.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Ses bağlam boyutu işleme için.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> Ses işleme için sessizlik eşiği.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> Dizi üretimi için uzunluk cezası.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> Çıktı filtrelemesi için entropi eşiği.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> Çıktı filtreleme için log olasılık eşiği.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> Ses algılama için konuşma eşiği yok.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> Konuşma çıkışını devre dışı bırak.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> Düşünce konuşma çıktısını devre dışı bırak.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> VOX'u (ses aktivasyonu) devre dışı bırak.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Masaüstü ses yakalamayı kullanın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> Bağlam kullanımını devre dışı bırak.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Işın demeti arama stratejisini kullanın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> Örnek Çıktı:

```
PS C:\> Remove-AppvClientPackage -Name "MyApp" -Version 1
```

Bu komut, adı "MyApp" ve sürümü 1 olan App-V İstemci Paketini kaldırır.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetClipboard`

> Belirtildiğinde, işlemin ardından sonuçtaki dize listesini sistem panosuna geri kopyalar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> ### Çeviri

.Name
    Get-Process

.Synopsis
    Yerel bilgisayarda çalışan işlemleri alır.

.Syntax
    Get-Process [[-Name] <string[]>] [-ComputerName <string[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]

.Description
    Get-Process cmdlet'i yerel bilgisayardaki işlemleri alır. Bir işlemi işlem adına veya işlem kimliğine (PID) göre alabilir veya tüm işlemlerin bir listesini getirebiliriz. Ayrıca işlemler hakkında modül ve dosya sürümü bilgisi gibi ayrıntılı bilgiler alabiliriz.

.Parameters
    -Name <string[]>
        Alınacak işlemlerin adlarını belirtir. Birden fazla ad belirtmek için virgülle ayırın. Joker karakterlere izin verilir. Parametre adı "-Name" isteğe bağlıdır.

    -ComputerName <string[]>
        İşlemlerin alınacağı bilgisayarın adını belirtir. Varsayılan yerel bilgisayardır. Birden fazla bilgisayar belirtmek için virgülle ayırın. Bilgisayar adları, NetBIOS adı, IP adresi veya tam nitelikli etki alanı adı (FQDN) olabilir.

    -Module
        İşlem tarafından yüklenen modüller hakkında bilgi alır.

    -FileVersionInfo
        İşlem için dosya sürümü bilgisi alır.

    <CommonParameters>
        Bu cmdlet, -Verbose, -Debug, -ErrorAction, -ErrorVariable, -WarningAction, -WarningVariable, -OutBuffer, -OutVariable, -PipelineVariable ve -InformationAction genel parametrelerini destekler. Daha fazla bilgi için about_CommonParameters konusuna bakın.

.Inputs
    System.String[]
        Bir işlem adı veya işlem adları dizisini Get-Process'a yönlendirebilirsiniz.

.Outputs
    System.Diagnostics.Process, System.Diagnostics.ProcessModule, System.Diagnostics.FileVersionInfo
        Varsayılan olarak Get-Process System.Diagnostics.Process nesnesi döndürür. -Module parametresini kullandığınızda System.Diagnostics.ProcessModule nesnesi döndürür. -FileVersionInfo parametresini kullandığınızda System.Diagnostics.FileVersionInfo nesnesi döndürür.

.Notes
    Get-Process, PowerShell'deki İşlem nesnelerini kullanır.

.Examples
    -------------------------- Örnek 1: Tüm işlemler --------------------------

    Get-Process

    Bu komut bilgisayarda çalışan tüm işlemleri alır.

    -------------------------- Örnek 2: Bir işlemi ada göre al --------------------------

    Get-Process -Name explorer

    Bu komut 'explorer' adlı işlemi alır.

    -------------------------- Örnek 3: İşlemleri joker karakterle filtrele --------------------------

    Get-Process -Name n*

    Bu komut adı 'n' ile başlayan tüm işlemleri alır.

    -------------------------- Örnek 4: Bir işlemi PID'ye göre al --------------------------

    Get-Process -Id 1234

    Bu komut işlem kimliği 1234 olan işlemi alır.

    -------------------------- Örnek 5: Modül bilgisi ile işlemleri al --------------------------

    Get-Process -Name svchost -Module

    Bu komut svchost işlemleri için yüklenen tüm modülleri alır.

.Related Links
    about_Process
    Debug-Process
    Start-Process
    Stop-Process
    Wait-Process

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> Dosyayı $Path1 ve $Path2'de bulunan dosyalarla aynı dosyaya genişletir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> Tüm insan tarafından okunabilir metni çevirin. Kod, işaretleme veya yapılandırılmış veri varsa, sözdizimi, yapı ve programlama anahtar kelimeleri, etiketler veya veri formatına özgü öğeler gibi tüm teknik unsurları koruyun. Yalnızca yorumlar, dize değerleri, belgeler veya doğal dil içeriği gibi insan tarafından okunabilir metin kısımlarını çevirin. Tam biçimlendirme, girinti ve satır sonlarını koruyun. Tanımlayıcıları, işlev adlarını, değişkenleri veya teknik anahtar kelimeleri asla çevirmeyin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> Yapay zeka yanıtları için metinden konuşmaya özelliğini etkinleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> AI düşünce yanıtları için metin-konuşma etkinleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> Oturumu oturum önbelleğinde saklama

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowDefaultTools`

> AI modeli için varsayılan araçları etkinleştirin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> .EXTERNALHELP Get-ReplicationGroup.ps1 help file

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> Belirli işaretleme bloğu türleri için filtrele.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Araç çağrıları için maksimum geri arama uzunluğu.

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ScriptExecutionErrorFixPrompt.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Update-AllImageMetaData.md)
