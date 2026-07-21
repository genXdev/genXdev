# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize`

## Synopsis

> Diplomatik veya nazik dili doğrudan, net ve açık sözlü dile dönüştürür.

## Description

Bu fonksiyon diplomatik dili alır ve kibar veya politik olarak doğru dilin ardındaki gerçek anlamı ortaya çıkarmak için tercüme eder. Örtmeceli ifadeleri doğrudan ifadelere dönüştürmek için AI dil modellerini kullanarak iletişimi net ve anlaşılır hale getirir. Fonksiyon özellikle politik ifadeleri, iş iletişimlerini veya gerçek anlamın diplomatik dil tarafından gizlenebileceği herhangi bir metni analiz etmek için kullanışlıdır.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Diplomatik dilden dönüştürülecek metin |
| `-Instructions` | String | — | — | 1 | `''` | .PARAMETER ProductId
Alınacak ürünün kimliği. |
| `-Temperature` | Double | — | — | Named | `0.0` | Yanıtın rastgelelik derecesi için sıcaklık (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | LLM sorgusunun türü |
| `-Model` | String | — | — | Named | — | AI işlemleri için kullanılacak model tanımlayıcısı veya deseni |
| `-ApiEndpoint` | String | — | — | Named | — | Yapay zeka işlemleri için API uç noktası URL'si |
| `-ApiKey` | String | — | — | Named | — | Kimlik doğrulamalı AI işlemleri için API anahtarı |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | LLM'nin JSON şemaları için desteği olmadığını belirtir |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI işlemleri için saniye cinsinden zaman aşımı |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Tercih veri dosyaları için veritabanı yolu |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Dönüştürülmüş metni panoya kopyala |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI tercihleri için oturumda depolanan alternatif ayarları kullan |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Oturumda AI tercihleri için saklanan alternatif ayarları temizle |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ayarları yalnızca kalıcı tercihlerde sakla, oturumu etkilemeden |
| `-Attachments` | Object[] | — | — | Named | — | AI işlemine eklenecek ekler. |
| `-ImageDetail` | String | — | — | Named | — | Yapay zeka işleme için görüntü ayrıntı düzeyi. |
| `-Functions` | Object[] | — | — | Named | — | AI modeline sunulacak fonksiyonlar. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | AI modeline gösterilecek cmdlet'ler. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Onay gerektirmeyen araç işlev adları. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | ### `Enable-PSRemoting`
# AÇIKLAMA
# `Enable-PSRemoting` cmdlet'i, bu bilgisayarda PowerShell uzaktan iletişimini yapılandırır. Varsayılan olarak, Windows PowerShell uzaktan iletişimi etkinleştirildiğinde, WinRM hizmetini başlatır, hizmet türünü Otomatik Olarak Başlatılacak şekilde ayarlar, tüm genel IP adreslerini dinleyen bir HTTP uç noktası oluşturur ve bir güvenlik duvarı kuralı için özel ve genel ağlarda gelen trafiğe izin verir.
# 
# Bu cmdlet, PowerShell uzaktan iletişimini geçici olarak engelleyen 'Yalnızca Yerel PowerShell (LocalAccountTokenFilterPolicy)' güvenlik ayarına sahip olan standart (etki alanı yöneticisi olmayan) yönetici hesaplarını yönetme adımlarını da içeren Enable-PSRemoting cmdlet'inin bir uygulamasını başlatır.
# 
# Bu cmdlet, yeniden başlatma (Restart-Computer) ve diğer işlemler sırasında uzaktan yeniden başlatma erişimine olanak tanıyan bir güvenlik duvarı kuralı da ekler. Güvenlik duvarı kuralını görüntülemek için PowerShell'de şu komutu çalıştırın: `Get-NetFirewallRule -Name 'WINRM-HTTP-In-TCP-PSRemoting'`
# 
# NOT: Bu cmdlet yalnızca Windows platformlarında kullanılabilir.
# 
# ## ÖRNEKLER
# 
# ### Örnek 1: Uzaktan iletişimi yapılandırma
# 
# Bu komut, sunucu üzerinde PowerShell uzaktan iletişimini etkinleştirir. Çalıştırma ilkesini yapılandırmak zorunda değilsiniz; ancak Uzak Bilgisayar Yönetimi (WinRM) yapılandırmasını etkilediği için çalıştırma ilkesi bilgisi önemlidir.
# 
# ```powershell
# Enable-PSRemoting -Force
# ```
# 
# ### Örnek 2: Uzaktan iletişimi etkinleştirme
# 
# Bu komutlar, bir iş istasyonunda PowerShell uzaktan iletişimini etkinleştirir.
# 
# ```powershell
# Set-ExecutionPolicy RemoteSigned
# Get-ExecutionPolicy
# Enable-PSRemoting
# ```
# 
# ## PARAMETRELER
# 
# ### -Force
# Kullanıcıyı uyarmadan cmdlet'i çalıştırmak için kullanılır.
# 
# ```yaml
# Type: SwitchParameter
# Parameter Sets: (All)
# Aliases: 
# Required: False
# Position: Named
# Default value: False
# Accept pipeline input: False
# Accept wildcard characters: False
# ```
# 
# ### -SkipNetworkProfileCheck
# Windows işletim sisteminin özel ve genel ağlarda güvenlik duvarı kuralını atlar. Bu parametre, bir sunucu çekirdeği yüklemesinde bir WinRM dinleyicisi oluşturmak istiyorsanız kullanılır.
# 
# ```yaml
# Type: SwitchParameter
# Parameter Sets: (All)
# Aliases: 
# Required: False
# Position: Named
# Default value: False
# Accept pipeline input: False
# Accept wildcard characters: False
# ```
# 
# ### -Confirm
# Cmdlet'i çalıştırmadan önce sizden onay ister.
# 
# ```yaml
# Type: SwitchParameter
# Parameter Sets: (All)
# Aliases: cf
# Required: False
# Position: Named
# Default value: 
# Accept pipeline input: False
# Accept wildcard characters: False
# ```
# 
# ### -WhatIf
# Cmdlet çalıştırıldığında ne olacağını gösterir. Cmdlet çalıştırılmaz.
# 
# ```yaml
# Type: SwitchParameter
# Parameter Sets: (All)
# Aliases: wi
# Required: False
# Position: Named
# Default value: 
# Accept pipeline input: False
# Accept wildcard characters: False
# ```
# 
# ### CommonParameters
# Bu cmdlet şu ortak parametreleri destekler: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction ve -WarningVariable. Daha fazla bilgi için bkz. [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).
# 
# ## GİRİŞLER
# 
# ### None
# Bu cmdlet'e nesne gönderemezsiniz.
# 
# ## ÇIKTILAR
# 
# ### System.String
# Bu cmdlet, eylemlerinin sonucunu açıklayan dizeler döndürür.
# 
# ## NOTLAR
# 
# PowerShell uzaktan iletişimi, yalnızca Windows PowerShell 2.0 veya üzeri çalıştıran Windows sistemlerinde varsayılan olarak etkindir. Başka bir sürüm çalıştırıyorsanız, `Enable-PSRemoting` cmdlet'ini çalıştırın.
# 
# PowerShell uzaktan iletişimi, yalnızca Birleşik Ağ'a bağlı bir ağda çalışır. Genel veya özel bir ağa bağlıysanız, aktif ağ profillerinde güvenlik duvarı kuralları oluşturulmayacaktır. `-SkipNetworkProfileCheck` parametresini kullanarak bu sınırlamayı aşabilirsiniz.
# 
# Grup İlkesi aracılığıyla PowerShell uzaktan iletişimini devre dışı bırakma ayarı vardır. Bu ayar, bu cmdlet kullanılarak geçersiz kılınamaz.
# 
# ## İLGİLİ BAĞLANTILAR
# 
# [about_Remote](https://go.microsoft.com/fwlink/?LinkID=252642)
# 
# [about_Remote_Requirements](https://go.microsoft.com/fwlink/?LinkID=252643)
# 
# [Disable-PSRemoting](https://go.microsoft.com/fwlink/?LinkID=144300)
# 
# [Get-PSSession](https://go.microsoft.com/fwlink/?LinkID=128202)
# 
# [New-PSSession](https://go.microsoft.com/fwlink/?LinkID=135220)
# 
# [Remove-PSSession](https://go.microsoft.com/fwlink/?LinkID=135228)
# 
# [Register-PSSessionConfiguration](https://go.microsoft.com/fwlink/?LinkID=144299)
# 
# [Set-PSSessionConfiguration](https://go.microsoft.com/fwlink/?LinkID=144301)
# 
# [WinRM Güvenlik Duvarı Kuralı](https://go.microsoft.com/fwlink/?LinkId=252644)
# 
# [about_Execution_Policies](https://go.microsoft.com/fwlink/?LinkID=135170)
# 
# [about_PSSessions](https://go.microsoft.com/fwlink/?LinkID=135181)
# 
# [about_Session_Configurations](https://go.microsoft.com/fwlink/?LinkID=145152) |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .SYNOPSIS
Bir veya daha fazla PowerShell uç noktasına (PSSessionConfiguration) veya Microsoft.PowerShell.PowerShellSessionConfiguration özelliğine sahip bir kaynağa PowerShell çalıştırılabilir dosyası ekler.

.DESCRIPTION
Register-PowerShellExecutable cmdlet'i, bir veya daha fazla PowerShell uç noktasına (PSSessionConfiguration) veya Microsoft.PowerShell.PowerShellSessionConfiguration özelliğine sahip bir kaynağa PowerShell çalıştırılabilir dosyası ekler. Bir çalıştırılabilir dosyayı kaydettiğinizde, yalnızca ilgili uç noktalar etkilenir, sistem genelindeki varsayılan PowerShell çalıştırılabilir dosyası değil.

Parametreler aracılığıyla bir dizi uç nokta veya kaynak belirtmediğiniz sürece cmdlet, oturum yapılandırmasını temsil eden bir nesne almalıdır.

Bu cmdlet, iyi bilinen bir uç nokta veya bir uç nokta yapılandırma kaynağı belirten bir dize de alabilir.

Bu cmdlet aşağıdaki PowerShell sürümleri için çalıştırılabilir dosyaları kaydeder:
- PowerShell 7+ (Windows, Linux ve macOS)
- Windows PowerShell 5.1 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI işleme sırasında düşünceleri yüksek sesle söyleyin. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Bu işlem için oturum önbelleğini devre dışı bırak. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Yapay zeka işleminde varsayılan araçların kullanımına izin ver. |
| `-AudioTemperature` | Double | — | — | Named | — | AI ses üretimi için ses sıcaklığı. |
| `-TemperatureResponse` | Double | — | — | Named | — | AI yanıt üretimi için sıcaklık. |
| `-CpuThreads` | Int32 | — | — | Named | — | AI işlemi için kullanılacak CPU iş parçacığı sayısı. |
| `-SuppressRegex` | String[] | — | — | Named | — | Yapay zeka çıktısında bastırılacak regex. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Yapay zeka ses işleme için ses bağlam boyutu. |
| `-SilenceThreshold` | Double | — | — | Named | — | Yapay zeka ses işleme için sessizlik eşiği. |
| `-LengthPenalty` | Double | — | — | Named | — | AI dizi oluşturma için uzunluk cezası. |
| `-EntropyThreshold` | Double | — | — | Named | — | AI çıktısı için entropi eşiği. |
| `-LogProbThreshold` | Double | — | — | Named | — | AI çıktısı için log olasılık eşiği. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Yapay zeka ses işleme için konuşma eşiği yok. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Belirtilen Azure Depolama blob kapsayıcısındaki tüm blok bloblarının hiyerarşik bir listesini alır.

.DESCRIPTION
    Bu cmdlet, belirtilen Azure Depolama blob kapsayıcısındaki tüm blok bloblarının hiyerarşik bir listesini alır.
    Kapsayıcıda bir blob anlık görüntüsü varsa, bu cmdlet onu da alır.

.PARAMETER Container
    Blob kapsayıcısı nesnesini belirtir.
    Kapsayıcı nesnesini almak için New-AzStorageContainer cmdlet'ini kullanın.

.PARAMETER Prefix
    Belirtilen ön eke sahip blobları ve blob dizinlerini filtreler.

.PARAMETER Delimiter
    Blobların adlarındaki sınırlayıcı karakteri belirtir.
    Varsayılan değer eğik çizgidir (/).
    Sınırlayıcı, bir dosya sisteminde klasör yolu sınırlayıcısı gibi çalışan ve sanal bir dizin yapısı oluşturan tek bir karakter veya karakter dizesidir.
    Çoğu Azure Depolama hesabı, bir kapsayıcıdaki nesneleri hiyerarşik olarak düzenlemek için varsayılan sınırlayıcı olarak eğik çizgiyi (/) kullanır.
    Sınırlayıcı, blob adında ilk kez göründükten sonra blob adının sonuna kadar olan tüm karakterleri kapsayan bir dize olarak değerlendirilir.

.PARAMETER IncludeDeleted
    Bu parametre belirtildiğinde, cmdlet silinen blobları içerir.
    Varsayılan olarak, silinen bloblar dahil edilmez.
    $true:$false veya $false:$true gibi bir Boole değeri kullanabilirsiniz.

.PARAMETER MaxCount
    Bu cmdlet'in döndürdüğü maksimum sonuç sayısını belirtir.
    Varsayılan değer 5000'dir.

.PARAMETER ContinuationToken
    Blob listesi için devamlılık belirtecini belirtir.
    Devamlılık belirteci almak için Get-AzStorageBlob cmdlet'ini kullanın.

.PARAMETER ClientTimeoutPerRequest
    İstemci tarafı zaman aşımını saniye cinsinden belirtir.
    Varsayılan değer 100'dür.

.PARAMETER Context
    Azure Depolama hesabı bağlamını belirtir.
    Bağlam nesnesi oluşturmak için New-AzStorageContext cmdlet'ini kullanın.

.PARAMETER ServerTimeoutPerRequest
    Sunucu tarafı zaman aşımını saniye cinsinden belirtir.
    Varsayılan değer 100'dür.

.PARAMETER DefaultProfile
    Azure ile iletişim için kullanılan kimlik bilgileri, hesap, kiracı ve abonelik.

.INPUTS
    Microsoft.WindowsAzure.Commands.Common.Storage.ResourceModel.AzureStorageContainer
    Bu cmdlet bir depolama kapsayıcısı nesnesini girdi olarak kabul eder.

.OUTPUTS
    Microsoft.WindowsAzure.Commands.Common.Storage.ResourceModel.AzureStorageBlob
    Bu cmdlet AzureStorageBlob nesnelerini döndürür.

.ÖRNEK 1
    Get-AzStorageBlob -Container "container01" -Blob "blob*"

    Bu komut, "container01" kapsayıcısında adı "blob" ile başlayan tüm blobları alır.

.ÖRNEK 2
    Get-AzStorageBlob -Container "container01" -IncludeDeleted

    Bu komut, "container01" kapsayıcısındaki tüm blobları, varsa silinenleri de dahil ederek alır.

.ÖRNEK 3
    Get-AzStorageBlob -Container "container01" -MaxCount 10 -ContinuationToken $token

    Bu komut, "container01" kapsayıcısındaki blobları alırken, istek başına en fazla 10 sonuç döndürür ve devamlılık belirteci kullanır.

.ÖRNEK 4
    Get-AzStorageBlob -Container "container01" -Prefix "abc" -Delimiter "/"

    Bu komut, "container01" kapsayıcısında ön eki "abc" olan ve sınırlayıcı olarak eğik çizgi kullanan blobları alır.

.ÖRNEK 5
    Get-AzStorageBlob -Container $container

    Bu komut, bir kapsayıcı nesnesi kullanarak blobları alır. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | ExternalIPAddress

Gösterge Panelinde görüntülenen harici IP adresini alır. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Yapay zeka ses çıkışı için VOX'u devre dışı bırak. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Yapay zeka sesi için masaüstü ses yakalamayı kullanın. |
| `-NoContext` | SwitchParameter | — | — | Named | — | .ÖRNEK

PS C:\>Get-AppLockerPolicy -Local | Test-AppLockerPolicy -Path C:\Windows\System32\*.exe -User Everyone

Bu komut, C:\Windows\System32 dizinindeki tüm yürütülebilir dosyaları, herkes için geçerli olan yerel AppLocker ilkesine göre test eder. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | AI için ışın arama örnekleme stratejisini kullanın. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Yalnızca yapay zekadan gelen yanıtları döndür. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | ```
PSTop PC'lerde Yönetim - Yeni ve Güncellenmiş Özellikler

Bu bölüm, son iki yılda eklenen veya güncellenen yeni özellikleri tanımlar. PowerShell 5.1 ile birlikte gönderilen yeni özellikler de dahil edilmiştir.

PowerShell 5.1'de Yeni

PowerShell Konsolu Desteği * Yenilendi
PowerShellGet * Yeni
PowerShell Direct * Yeni
Paket Yönetimi * Yeni
PowerShell Sürüm 5.0'da Yeni

Sınıflar * Yeni
PowerShell Sürüm 4.0'da Yeni

PowerShell Uzaktan İletişim için Windows PowerShell İş Akışı * Yeni
PowerShell Sürüm 3.0'da Yeni

Windows PowerShell Entegre Komut Dosyası Ortamı (ISE) * Yenilendi
PowerShell Sürüm 2.0'da Yeni

PowerShell Uzaktan İletişim * Yeni
Arka Plan İşleri * Yeni
``` |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Yapay zeka çıktısındaki işaretleme bloğu türlerini filtreleyin. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Araç çağrıları için maksimum geri arama uzunluğu. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Parameter Details

### `-Text <String>`

> Diplomatik dilden dönüştürülecek metin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> .PARAMETER ProductId
Alınacak ürünün kimliği.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Yanıtın rastgelelik derecesi için sıcaklık (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> LLM sorgusunun türü

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
### `-SetClipboard`

> Dönüştürülmüş metni panoya kopyala

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-Attachments <Object[]>`

> AI işlemine eklenecek ekler.

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

> Yapay zeka işleme için görüntü ayrıntı düzeyi.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Object[]>`

> AI modeline sunulacak fonksiyonlar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <Object[]>`

> AI modeline gösterilecek cmdlet'ler.

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

> Onay gerektirmeyen araç işlev adları.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> ### `Enable-PSRemoting`
# AÇIKLAMA
# `Enable-PSRemoting` cmdlet'i, bu bilgisayarda PowerShell uzaktan iletişimini yapılandırır. Varsayılan olarak, Windows PowerShell uzaktan iletişimi etkinleştirildiğinde, WinRM hizmetini başlatır, hizmet türünü Otomatik Olarak Başlatılacak şekilde ayarlar, tüm genel IP adreslerini dinleyen bir HTTP uç noktası oluşturur ve bir güvenlik duvarı kuralı için özel ve genel ağlarda gelen trafiğe izin verir.
# 
# Bu cmdlet, PowerShell uzaktan iletişimini geçici olarak engelleyen 'Yalnızca Yerel PowerShell (LocalAccountTokenFilterPolicy)' güvenlik ayarına sahip olan standart (etki alanı yöneticisi olmayan) yönetici hesaplarını yönetme adımlarını da içeren Enable-PSRemoting cmdlet'inin bir uygulamasını başlatır.
# 
# Bu cmdlet, yeniden başlatma (Restart-Computer) ve diğer işlemler sırasında uzaktan yeniden başlatma erişimine olanak tanıyan bir güvenlik duvarı kuralı da ekler. Güvenlik duvarı kuralını görüntülemek için PowerShell'de şu komutu çalıştırın: `Get-NetFirewallRule -Name 'WINRM-HTTP-In-TCP-PSRemoting'`
# 
# NOT: Bu cmdlet yalnızca Windows platformlarında kullanılabilir.
# 
# ## ÖRNEKLER
# 
# ### Örnek 1: Uzaktan iletişimi yapılandırma
# 
# Bu komut, sunucu üzerinde PowerShell uzaktan iletişimini etkinleştirir. Çalıştırma ilkesini yapılandırmak zorunda değilsiniz; ancak Uzak Bilgisayar Yönetimi (WinRM) yapılandırmasını etkilediği için çalıştırma ilkesi bilgisi önemlidir.
# 
# ```powershell
# Enable-PSRemoting -Force
# ```
# 
# ### Örnek 2: Uzaktan iletişimi etkinleştirme
# 
# Bu komutlar, bir iş istasyonunda PowerShell uzaktan iletişimini etkinleştirir.
# 
# ```powershell
# Set-ExecutionPolicy RemoteSigned
# Get-ExecutionPolicy
# Enable-PSRemoting
# ```
# 
# ## PARAMETRELER
# 
# ### -Force
# Kullanıcıyı uyarmadan cmdlet'i çalıştırmak için kullanılır.
# 
# ```yaml
# Type: SwitchParameter
# Parameter Sets: (All)
# Aliases: 
# Required: False
# Position: Named
# Default value: False
# Accept pipeline input: False
# Accept wildcard characters: False
# ```
# 
# ### -SkipNetworkProfileCheck
# Windows işletim sisteminin özel ve genel ağlarda güvenlik duvarı kuralını atlar. Bu parametre, bir sunucu çekirdeği yüklemesinde bir WinRM dinleyicisi oluşturmak istiyorsanız kullanılır.
# 
# ```yaml
# Type: SwitchParameter
# Parameter Sets: (All)
# Aliases: 
# Required: False
# Position: Named
# Default value: False
# Accept pipeline input: False
# Accept wildcard characters: False
# ```
# 
# ### -Confirm
# Cmdlet'i çalıştırmadan önce sizden onay ister.
# 
# ```yaml
# Type: SwitchParameter
# Parameter Sets: (All)
# Aliases: cf
# Required: False
# Position: Named
# Default value: 
# Accept pipeline input: False
# Accept wildcard characters: False
# ```
# 
# ### -WhatIf
# Cmdlet çalıştırıldığında ne olacağını gösterir. Cmdlet çalıştırılmaz.
# 
# ```yaml
# Type: SwitchParameter
# Parameter Sets: (All)
# Aliases: wi
# Required: False
# Position: Named
# Default value: 
# Accept pipeline input: False
# Accept wildcard characters: False
# ```
# 
# ### CommonParameters
# Bu cmdlet şu ortak parametreleri destekler: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction ve -WarningVariable. Daha fazla bilgi için bkz. [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).
# 
# ## GİRİŞLER
# 
# ### None
# Bu cmdlet'e nesne gönderemezsiniz.
# 
# ## ÇIKTILAR
# 
# ### System.String
# Bu cmdlet, eylemlerinin sonucunu açıklayan dizeler döndürür.
# 
# ## NOTLAR
# 
# PowerShell uzaktan iletişimi, yalnızca Windows PowerShell 2.0 veya üzeri çalıştıran Windows sistemlerinde varsayılan olarak etkindir. Başka bir sürüm çalıştırıyorsanız, `Enable-PSRemoting` cmdlet'ini çalıştırın.
# 
# PowerShell uzaktan iletişimi, yalnızca Birleşik Ağ'a bağlı bir ağda çalışır. Genel veya özel bir ağa bağlıysanız, aktif ağ profillerinde güvenlik duvarı kuralları oluşturulmayacaktır. `-SkipNetworkProfileCheck` parametresini kullanarak bu sınırlamayı aşabilirsiniz.
# 
# Grup İlkesi aracılığıyla PowerShell uzaktan iletişimini devre dışı bırakma ayarı vardır. Bu ayar, bu cmdlet kullanılarak geçersiz kılınamaz.
# 
# ## İLGİLİ BAĞLANTILAR
# 
# [about_Remote](https://go.microsoft.com/fwlink/?LinkID=252642)
# 
# [about_Remote_Requirements](https://go.microsoft.com/fwlink/?LinkID=252643)
# 
# [Disable-PSRemoting](https://go.microsoft.com/fwlink/?LinkID=144300)
# 
# [Get-PSSession](https://go.microsoft.com/fwlink/?LinkID=128202)
# 
# [New-PSSession](https://go.microsoft.com/fwlink/?LinkID=135220)
# 
# [Remove-PSSession](https://go.microsoft.com/fwlink/?LinkID=135228)
# 
# [Register-PSSessionConfiguration](https://go.microsoft.com/fwlink/?LinkID=144299)
# 
# [Set-PSSessionConfiguration](https://go.microsoft.com/fwlink/?LinkID=144301)
# 
# [WinRM Güvenlik Duvarı Kuralı](https://go.microsoft.com/fwlink/?LinkId=252644)
# 
# [about_Execution_Policies](https://go.microsoft.com/fwlink/?LinkID=135170)
# 
# [about_PSSessions](https://go.microsoft.com/fwlink/?LinkID=135181)
# 
# [about_Session_Configurations](https://go.microsoft.com/fwlink/?LinkID=145152)

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

> .SYNOPSIS
Bir veya daha fazla PowerShell uç noktasına (PSSessionConfiguration) veya Microsoft.PowerShell.PowerShellSessionConfiguration özelliğine sahip bir kaynağa PowerShell çalıştırılabilir dosyası ekler.

.DESCRIPTION
Register-PowerShellExecutable cmdlet'i, bir veya daha fazla PowerShell uç noktasına (PSSessionConfiguration) veya Microsoft.PowerShell.PowerShellSessionConfiguration özelliğine sahip bir kaynağa PowerShell çalıştırılabilir dosyası ekler. Bir çalıştırılabilir dosyayı kaydettiğinizde, yalnızca ilgili uç noktalar etkilenir, sistem genelindeki varsayılan PowerShell çalıştırılabilir dosyası değil.

Parametreler aracılığıyla bir dizi uç nokta veya kaynak belirtmediğiniz sürece cmdlet, oturum yapılandırmasını temsil eden bir nesne almalıdır.

Bu cmdlet, iyi bilinen bir uç nokta veya bir uç nokta yapılandırma kaynağı belirten bir dize de alabilir.

Bu cmdlet aşağıdaki PowerShell sürümleri için çalıştırılabilir dosyaları kaydeder:
- PowerShell 7+ (Windows, Linux ve macOS)
- Windows PowerShell 5.1

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

> AI işleme sırasında düşünceleri yüksek sesle söyleyin.

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

> Bu işlem için oturum önbelleğini devre dışı bırak.

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

> Yapay zeka işleminde varsayılan araçların kullanımına izin ver.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> AI ses üretimi için ses sıcaklığı.

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

> AI yanıt üretimi için sıcaklık.

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

> AI işlemi için kullanılacak CPU iş parçacığı sayısı.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String[]>`

> Yapay zeka çıktısında bastırılacak regex.

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

> Yapay zeka ses işleme için ses bağlam boyutu.

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

> Yapay zeka ses işleme için sessizlik eşiği.

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

> AI dizi oluşturma için uzunluk cezası.

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

> AI çıktısı için entropi eşiği.

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

> AI çıktısı için log olasılık eşiği.

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

> Yapay zeka ses işleme için konuşma eşiği yok.

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

> .SYNOPSIS
    Belirtilen Azure Depolama blob kapsayıcısındaki tüm blok bloblarının hiyerarşik bir listesini alır.

.DESCRIPTION
    Bu cmdlet, belirtilen Azure Depolama blob kapsayıcısındaki tüm blok bloblarının hiyerarşik bir listesini alır.
    Kapsayıcıda bir blob anlık görüntüsü varsa, bu cmdlet onu da alır.

.PARAMETER Container
    Blob kapsayıcısı nesnesini belirtir.
    Kapsayıcı nesnesini almak için New-AzStorageContainer cmdlet'ini kullanın.

.PARAMETER Prefix
    Belirtilen ön eke sahip blobları ve blob dizinlerini filtreler.

.PARAMETER Delimiter
    Blobların adlarındaki sınırlayıcı karakteri belirtir.
    Varsayılan değer eğik çizgidir (/).
    Sınırlayıcı, bir dosya sisteminde klasör yolu sınırlayıcısı gibi çalışan ve sanal bir dizin yapısı oluşturan tek bir karakter veya karakter dizesidir.
    Çoğu Azure Depolama hesabı, bir kapsayıcıdaki nesneleri hiyerarşik olarak düzenlemek için varsayılan sınırlayıcı olarak eğik çizgiyi (/) kullanır.
    Sınırlayıcı, blob adında ilk kez göründükten sonra blob adının sonuna kadar olan tüm karakterleri kapsayan bir dize olarak değerlendirilir.

.PARAMETER IncludeDeleted
    Bu parametre belirtildiğinde, cmdlet silinen blobları içerir.
    Varsayılan olarak, silinen bloblar dahil edilmez.
    $true:$false veya $false:$true gibi bir Boole değeri kullanabilirsiniz.

.PARAMETER MaxCount
    Bu cmdlet'in döndürdüğü maksimum sonuç sayısını belirtir.
    Varsayılan değer 5000'dir.

.PARAMETER ContinuationToken
    Blob listesi için devamlılık belirtecini belirtir.
    Devamlılık belirteci almak için Get-AzStorageBlob cmdlet'ini kullanın.

.PARAMETER ClientTimeoutPerRequest
    İstemci tarafı zaman aşımını saniye cinsinden belirtir.
    Varsayılan değer 100'dür.

.PARAMETER Context
    Azure Depolama hesabı bağlamını belirtir.
    Bağlam nesnesi oluşturmak için New-AzStorageContext cmdlet'ini kullanın.

.PARAMETER ServerTimeoutPerRequest
    Sunucu tarafı zaman aşımını saniye cinsinden belirtir.
    Varsayılan değer 100'dür.

.PARAMETER DefaultProfile
    Azure ile iletişim için kullanılan kimlik bilgileri, hesap, kiracı ve abonelik.

.INPUTS
    Microsoft.WindowsAzure.Commands.Common.Storage.ResourceModel.AzureStorageContainer
    Bu cmdlet bir depolama kapsayıcısı nesnesini girdi olarak kabul eder.

.OUTPUTS
    Microsoft.WindowsAzure.Commands.Common.Storage.ResourceModel.AzureStorageBlob
    Bu cmdlet AzureStorageBlob nesnelerini döndürür.

.ÖRNEK 1
    Get-AzStorageBlob -Container "container01" -Blob "blob*"

    Bu komut, "container01" kapsayıcısında adı "blob" ile başlayan tüm blobları alır.

.ÖRNEK 2
    Get-AzStorageBlob -Container "container01" -IncludeDeleted

    Bu komut, "container01" kapsayıcısındaki tüm blobları, varsa silinenleri de dahil ederek alır.

.ÖRNEK 3
    Get-AzStorageBlob -Container "container01" -MaxCount 10 -ContinuationToken $token

    Bu komut, "container01" kapsayıcısındaki blobları alırken, istek başına en fazla 10 sonuç döndürür ve devamlılık belirteci kullanır.

.ÖRNEK 4
    Get-AzStorageBlob -Container "container01" -Prefix "abc" -Delimiter "/"

    Bu komut, "container01" kapsayıcısında ön eki "abc" olan ve sınırlayıcı olarak eğik çizgi kullanan blobları alır.

.ÖRNEK 5
    Get-AzStorageBlob -Container $container

    Bu komut, bir kapsayıcı nesnesi kullanarak blobları alır.

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

> ExternalIPAddress

Gösterge Panelinde görüntülenen harici IP adresini alır.

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

> Yapay zeka ses çıkışı için VOX'u devre dışı bırak.

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

> Yapay zeka sesi için masaüstü ses yakalamayı kullanın.

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

> .ÖRNEK

PS C:\>Get-AppLockerPolicy -Local | Test-AppLockerPolicy -Path C:\Windows\System32\*.exe -User Everyone

Bu komut, C:\Windows\System32 dizinindeki tüm yürütülebilir dosyaları, herkes için geçerli olan yerel AppLocker ilkesine göre test eder.

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

> AI için ışın arama örnekleme stratejisini kullanın.

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

> Yalnızca yapay zekadan gelen yanıtları döndür.

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

> ```
PSTop PC'lerde Yönetim - Yeni ve Güncellenmiş Özellikler

Bu bölüm, son iki yılda eklenen veya güncellenen yeni özellikleri tanımlar. PowerShell 5.1 ile birlikte gönderilen yeni özellikler de dahil edilmiştir.

PowerShell 5.1'de Yeni

PowerShell Konsolu Desteği * Yenilendi
PowerShellGet * Yeni
PowerShell Direct * Yeni
Paket Yönetimi * Yeni
PowerShell Sürüm 5.0'da Yeni

Sınıflar * Yeni
PowerShell Sürüm 4.0'da Yeni

PowerShell Uzaktan İletişim için Windows PowerShell İş Akışı * Yeni
PowerShell Sürüm 3.0'da Yeni

Windows PowerShell Entegre Komut Dosyası Ortamı (ISE) * Yenilendi
PowerShell Sürüm 2.0'da Yeni

PowerShell Uzaktan İletişim * Yeni
Arka Plan İşleri * Yeni
```

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

> Yapay zeka çıktısındaki işaretleme bloğu türlerini filtreleyin.

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
## Outputs

- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertFrom-CorporateSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SimularMovieTitles.md)
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
