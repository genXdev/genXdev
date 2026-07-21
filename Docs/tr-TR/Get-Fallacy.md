# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext`

## Synopsis

> AI destekli algılama kullanarak mantıksal safsataları belirlemek için metni analiz eder.

## Description

Bu işlev, Wikipedia'nın Safsatalar Listesi üzerinde eğitilmiş bir yapay zeka modeli kullanarak sağlanan metindeki mantıksal safsataları tespit eder. Bulunan her safsata hakkında ilgili alıntı, safsata adı, açıklama, izah ve resmi sınıflandırma dahil olmak üzere ayrıntılı bilgi döndürür. İşlev, tutarlı çıktı sağlamak için yapılandırılmış bir yanıt formatı kullanır.

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | Yardım Alma Cmdlet'i: Add-BitsFile

KISA AÇIKLAMA
Bir BITS aktarımına dosya ekler.

SÖZ DİZİMİ
Add-BitsFile [-BitsJob] <BitsJob[]> [[-Source] <String[]>] [[-Destination] <String[]>] [-DownloadType] [-Temporary] [-FileCount <UInt32>] [-WhatIf] [-Confirm] [<CommonParameters>]

Add-BitsFile [-BitsJob] <BitsJob[]> [[-Source] <String[]>] [[-Destination] <String[]>] [-UploadType] [-FileCount <UInt32>] [-WhatIf] [-Confirm] [<CommonParameters>]

Add-BitsFile [-BitsJob] <BitsJob[]> [[-Source] <String[]>] [[-Destination] <String[]>] [-UploadReplyType] [-FileCount <UInt32>] [-WhatIf] [-Confirm] [<CommonParameters>]

AÇIKLAMA
Add-BitsFile cmdlet'i, bir BITS aktarım işine dosya ekler. Parametrelerle aktarım türünü (indirme, yükleme, yükleme-yanıt) ve hedef ile kaynak yollarını belirtebilirsiniz.

Bu cmdlet, BITS iş oluşturma sırasında veya iş duraklatılmış durumdayken dosya eklemeyi destekler. Devam eden bir işe yeni dosyalar eklenemez.

BITS aktarımları hakkında daha fazla bilgi için TechNet ve Windows Kütüphanesi'ne bakın.

ÖRNEKLER

ÖRNEK 1
Bu örnek, yeni bir BITS indirme işi oluşturur ve ona dosyalar ekler.

PS C:\>$BitsJob = Start-BitsJob -DisplayName 'Dosyaİndir' -TransferType Download
PS C:\>Add-BitsFile -BitsJob $BitsJob -Source @('https://example.com/dosya1.zip', 'https://example.com/dosya2.zip') -Destination @('C:\İndirilenler\dosya1.zip', 'C:\İndirilenler\dosya2.zip')

ÖRNEK 2
Bu örnek, mevcut bir BITS işine birden çok dosya ekler.

PS C:\>$ExistingJob = Get-BitsJob -Name 'Mevcutİş'
PS C:\>Add-BitsFile -BitsJob $ExistingJob -Source 'https://example.com/dosya3.zip' -Destination 'C:\İndirilenler\dosya3.zip'

PARAMETRELER

-BitsJob <BitsJob[]>
Dosyaların ekleneceği BITS işini belirtir. Get-BitsJob veya Start-BitsJob kullanılarak alınan bir BitsJob nesnesini kabul eder.

-Source <String[]>
İndirilecek veya yüklenecek dosyanın kaynak yolunu (URL veya UNC yolu) belirtir.

-Destination <String[]>
Dosyanın hedef yolunu belirtir.

-DownloadType
Eklenecek dosyanın bir indirme olduğunu belirtir. Bu varsayılan türdür.

-UploadType
Eklenecek dosyanın bir yükleme olduğunu belirtir.

-UploadReplyType
Eklenecek dosyanın bir yükleme-yanıt işi olduğunu belirtir.

-Temporary
Dosyanın geçici olduğunu belirtir.

-FileCount <UInt32>
Her kaynak ve hedef çifti için eklenecek dosya sayısını belirtir.

-WhatIf
Cmdlet'in çalıştırılması durumunda ne olacağını gösterir. Cmdlet çalıştırılmaz.

-Confirm
Cmdlet'i çalıştırmadan önce onay ister.

<CommonParameters>
Bu cmdlet, -Verbose, -Debug, -ErrorAction, -ErrorVariable, -WarningAction, -WarningVariable, -OutBuffer, -OutVariable ve -InformationVariable genel parametrelerini destekler. Daha fazla bilgi için, about_CommonParameters konusuna bakın.

GİRİŞ TÜRLERİ
Microsoft.BackgroundIntelligentTransfer.Management.BitsJob
Get-BitsJob veya Start-BitsJob'dan BitsJob nesnelerini Add-BitsFile'a gönderebilirsiniz.

ÇIKIŞ TÜRLERİ
Microsoft.BackgroundIntelligentTransfer.Management.BitsFile
Add-BitsFile, eklenen dosyaları temsil eden BitsFile nesneleri döndürür.

NOTLAR
· Bu cmdlet, BITS yönetici grubunun bir üyesi veya yönetici ayrıcalıklarıyla çalıştırılmalıdır.
· İşin türü değiştirilemez; dosyalar yalnızca aynı türde eklenebilir.
· Kaynak ve hedef parametreleri eşit sayıda öğe içermelidir, aksi takdirde cmdlet başarısız olur.

İLGİLİ BAĞLANTILAR
· Start-BitsJob
· Get-BitsJob
· Remove-BitsJob
· about_BITS |
| `-Instructions` | String | — | — | 1 | `''` | .DESCRIPTION
    Add-CIPolicyRule cmdlet'i, yeni sistem güvenlik ilkelerine kurallar eklemenizi sağlar.
    Bu komut, bir XML dosyasına yeni bir kural düğümü ekleyerek çalışır.
    Kullanıcı, kuralın hangi parametrelere göre eklenmesi gerektiğini belirleyebilir.
    Hedef sistem, mevcut bir Windows Defender Uygulama Denetimi (WDAC) ilkesi olabilir. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Eklenecek dosya yolları dizisi |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Dizi işlev tanımları |
| `-ImageDetail` | String | — | — | Named | `'low'` | Görüntü ayrıntı düzeyi |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Onay gerektirmeyen komut adları dizisi |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Kullanılacak PowerShell komut tanımları dizisi |
| `-Temperature` | Double | — | — | Named | `-1` | Yanıtın rastgelelik derecesi için sıcaklık (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | LLM sorgusunun türü |
| `-Model` | String | — | — | Named | — | AI işlemleri için kullanılacak model tanımlayıcısı veya deseni |
| `-ApiEndpoint` | String | — | — | Named | — | Yapay zeka işlemleri için API uç noktası URL'si |
| `-ApiKey` | String | — | — | Named | — | Kimlik doğrulamalı AI işlemleri için API anahtarı |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI işlemleri için saniye cinsinden zaman aşımı |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Tercih veri dosyaları için veritabanı yolu |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Tüm insan tarafından okunabilir metni çevirin. Kod, işaretleme veya yapılandırılmış veri varsa, sözdizimi, yapı ve programlama anahtar kelimeleri, etiketler veya veri formatına özgü öğeler gibi tüm teknik unsurları koruyun. Yalnızca yorumlar, dize değerleri, belgeler veya doğal dil içeriği gibi insan tarafından okunabilir metin kısımlarını çevirin. Tam biçimlendirme, girinti ve satır sonlarını koruyun. Tanımlayıcıları, işlev adlarını, değişkenleri veya teknik anahtar kelimeleri asla çevirmeyin. |
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
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Oturumu oturum önbelleğinde saklama |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Her sonuç için IMDB aramalarını açar |
| `-AudioTemperature` | Double | — | — | Named | — | Ses üretimi için sıcaklığı kontrol eder. |
| `-TemperatureResponse` | Double | — | — | Named | — | Yanıt oluşturma için sıcaklığı kontrol eder. |
| `-CpuThreads` | Int32 | — | — | Named | — | İşlem için kullanılacak CPU iş parçacığı sayısı. |
| `-SuppressRegex` | String | — | — | Named | — | Belirli çıktıları bastırmak için düzenli ifade. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Ses bağlam boyutu işleme için. |
| `-SilenceThreshold` | Double | — | — | Named | — | Sessizliği algılamak için eşik değeri. |
| `-LengthPenalty` | Double | — | — | Named | — | Daha uzun yanıtlara uygulanan ceza. |
| `-EntropyThreshold` | Double | — | — | Named | — | Yanıt oluşturmada entropi eşiği. |
| `-LogProbThreshold` | Double | — | — | Named | — | Çıktı için log olasılık eşiği. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Seste konuşma olmadığını tespit etmek için eşik değeri. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Cevabı söylemeyi engeller. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Modelin düşüncelerini söylemesini engeller. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX'u (ses aktivasyonu) devre dışı bırakır. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Giriş için masaüstü ses yakalamayı kullanın. |
| `-NoContext` | SwitchParameter | — | — | Named | — | İstek için bağlamı devre dışı bırakır. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Işın demeti arama stratejisini kullanın. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | NAME
    Get-AzRoleAssignment - Azure rol atamalarını listeler.

SÖZ DİZİMİ
    Get-AzRoleAssignment [-DefaultProfile <IAzureContextContainer>] [-ExpandPrincipalGroups] [-IncludeClassicAdministrators] [-Scope <String>] [-RoleDefinitionId <Guid>] [-RoleDefinitionName <String>] [-SignInName <String>] [-ObjectId <String>] [-ResourceGroupName <String>] [-ResourceType <String>] [-ParentResource <String>] [-ResourceName <String>] [-ServicePrincipalName <String>] [<CommonParameters>]

AÇIKLAMA
    Get-AzRoleAssignment cmdlet'i, belirtilen kapsamda etkili olan tüm Azure rol atamalarını listeler.
    Parametre olmadan, bu cmdlet abonelik altındaki tüm rol atamalarını döndürür.
    Bu liste filtreleme parametreleri kullanılarak filtrelenebilir.
    Aşağıdakilerin bir kombinasyonunu kullanmalısınız:
    - Genişletilmiş genel grup üyeliklerini hesaplamak istiyorsanız atananın ObjectId'sini,
    - Atananın SignInName'sini veya ServicePrincipalName'ini belirtin.

PARAMETRELER
    -DefaultProfile <IAzureContextContainer>
        Azure hizmetleriyle iletişim için kullanılan kimlik bilgileri, hesap, kiracı ve abonelik.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? false
        Joker karakterleri kabul et?   false

    -ExpandPrincipalGroups
        Belirtilirse, kullanıcının ait olduğu gruplar (doğrudan üye olduğu gruplar) dahil olmak üzere, atanana doğrudan atanan ve atananın ait olduğu gruplara atanan roller döndürülür.
        Desteklenen yalnızca tek bir kullanıcı için.
        Atananın bir kullanıcıyı belirtmek için -ObjectId veya -SignInName parametrelerini kullanın.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              false
        Ardışık düzen girişini kabul et? false
        Joker karakterleri kabul et?   false

    -IncludeClassicAdministrators
        Belirtilirse, abonelikteki klasik yöneticileri (ortak yöneticiler, hizmet yöneticisi ve oturum açan kişi) listelemek için genişletilir.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              false
        Ardışık düzen girişini kabul et? false
        Joker karakterleri kabul et?   false

    -Scope <String>
        Rol atamasının kapsamı.
        Yaygın biçim: "/subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}" veya "/subscriptions/{SubscriptionId}" veya "/subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/{ProviderName}/{ResourceType}/{ResourceName}".

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByValue, ByPropertyName)
        Joker karakterleri kabul et?   false

    -RoleDefinitionId <Guid>
        Atananın arandığı Rolün Kimliği.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -RoleDefinitionName <String>
        Atananın arandığı Rolün adı. Örneğin: Okuyucu, Katkıda Bulunan, Sanal Ağ Yöneticisi.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -SignInName <String>
        Kullanıcının e-posta adresi.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -ObjectId <String>
        Azure Active Directory'deki kullanıcının, grubun veya hizmet sorumlusunun ObjectId'si.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -ResourceGroupName <String>
        Rol atamasıyla ilgili kaynak grubu adı.
        Kaynak belirten kapsamda geçerli bir filtreleme parametresi.
        Belirtilmişse kaynak grubu kapsamındaki rol atamaları gösterilir.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -ResourceType <String>
        Rol atamasıyla ilgili kaynak türü.
        Kaynak belirten kapsamda geçerli bir filtreleme parametresi.
        Belirtilmişse kaynak (veya üst) kapsamındaki rol atamalarını almak için ResourceName ve ResourceGroupName ile birlikte kullanılmalıdır.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -ParentResource <String>
        Rol atamasının (alt kaynak olarak) alındığı, hiyerarşideki üst kaynak.
        Kaynak belirten kapsamda geçerli bir filtreleme parametresi.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -ResourceName <String>
        Rol atamasıyla ilgili kaynağın adı.
        Kaynak belirten kapsamda geçerli bir filtreleme parametresi.
        Belirtilmişse kaynak türü kapsamındaki rol atamalarını almak için ResourceType ve ResourceGroupName ile birlikte kullanılmalıdır.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -ServicePrincipalName <String>
        Hizmet sorumlusunun SPN'si.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    <CommonParameters>
        Bu cmdlet, aşağıdaki ortak parametreleri destekler: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable ve OutVariable. Daha fazla bilgi için bkz.
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).

GİRİŞLER
    Microsoft.Azure.Commands.Resources.Models.Authorization.PSRoleDefinition

ÇIKIŞLAR
    Microsoft.Azure.Commands.Resources.Models.Authorization.PSRoleAssignment

NOTLAR
    Anahtar sözcükler: azure, azurerm, arm, kaynak, yönetim, yönetici, kaynak grubu, şablon, dağıtım |
| `-Speak` | SwitchParameter | — | — | Named | — | Yapay zeka yanıtları için metinden konuşmaya özelliğini etkinleştir |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI düşünce yanıtları için metin-konuşma etkinleştir |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI tercihleri için oturumda depolanan alternatif ayarları kullan |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Oturumda AI tercihleri için saklanan alternatif ayarları temizle |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ayarları yalnızca kalıcı tercihlerde sakla, oturumu etkilemeden |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Araç çağrıları için maksimum geri arama uzunluğu. |

## Examples

### Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " + "and he was a politician")

```powershell
Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " +
"and he was a politician")
```

Sağlanan metni mantıksal safsatalar açısından analiz eder ve tespit edilen safsatalar hakkında yapılandırılmış bilgi döndürür.

### "This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1

```powershell
"This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1
```

Odaklı analiz için düşük sıcaklıkla metin analizi yapmak üzere işlem hattı girdisini kullanır.

### dispicetext "Everyone knows this is true"

```powershell
dispicetext "Everyone knows this is true"
```

Metni mantıksal yanılgılar açısından analiz etmek için takma adı kullanır.

## Parameter Details

### `-InputObject <Object>`

> Yardım Alma Cmdlet'i: Add-BitsFile

KISA AÇIKLAMA
Bir BITS aktarımına dosya ekler.

SÖZ DİZİMİ
Add-BitsFile [-BitsJob] <BitsJob[]> [[-Source] <String[]>] [[-Destination] <String[]>] [-DownloadType] [-Temporary] [-FileCount <UInt32>] [-WhatIf] [-Confirm] [<CommonParameters>]

Add-BitsFile [-BitsJob] <BitsJob[]> [[-Source] <String[]>] [[-Destination] <String[]>] [-UploadType] [-FileCount <UInt32>] [-WhatIf] [-Confirm] [<CommonParameters>]

Add-BitsFile [-BitsJob] <BitsJob[]> [[-Source] <String[]>] [[-Destination] <String[]>] [-UploadReplyType] [-FileCount <UInt32>] [-WhatIf] [-Confirm] [<CommonParameters>]

AÇIKLAMA
Add-BitsFile cmdlet'i, bir BITS aktarım işine dosya ekler. Parametrelerle aktarım türünü (indirme, yükleme, yükleme-yanıt) ve hedef ile kaynak yollarını belirtebilirsiniz.

Bu cmdlet, BITS iş oluşturma sırasında veya iş duraklatılmış durumdayken dosya eklemeyi destekler. Devam eden bir işe yeni dosyalar eklenemez.

BITS aktarımları hakkında daha fazla bilgi için TechNet ve Windows Kütüphanesi'ne bakın.

ÖRNEKLER

ÖRNEK 1
Bu örnek, yeni bir BITS indirme işi oluşturur ve ona dosyalar ekler.

PS C:\>$BitsJob = Start-BitsJob -DisplayName 'Dosyaİndir' -TransferType Download
PS C:\>Add-BitsFile -BitsJob $BitsJob -Source @('https://example.com/dosya1.zip', 'https://example.com/dosya2.zip') -Destination @('C:\İndirilenler\dosya1.zip', 'C:\İndirilenler\dosya2.zip')

ÖRNEK 2
Bu örnek, mevcut bir BITS işine birden çok dosya ekler.

PS C:\>$ExistingJob = Get-BitsJob -Name 'Mevcutİş'
PS C:\>Add-BitsFile -BitsJob $ExistingJob -Source 'https://example.com/dosya3.zip' -Destination 'C:\İndirilenler\dosya3.zip'

PARAMETRELER

-BitsJob <BitsJob[]>
Dosyaların ekleneceği BITS işini belirtir. Get-BitsJob veya Start-BitsJob kullanılarak alınan bir BitsJob nesnesini kabul eder.

-Source <String[]>
İndirilecek veya yüklenecek dosyanın kaynak yolunu (URL veya UNC yolu) belirtir.

-Destination <String[]>
Dosyanın hedef yolunu belirtir.

-DownloadType
Eklenecek dosyanın bir indirme olduğunu belirtir. Bu varsayılan türdür.

-UploadType
Eklenecek dosyanın bir yükleme olduğunu belirtir.

-UploadReplyType
Eklenecek dosyanın bir yükleme-yanıt işi olduğunu belirtir.

-Temporary
Dosyanın geçici olduğunu belirtir.

-FileCount <UInt32>
Her kaynak ve hedef çifti için eklenecek dosya sayısını belirtir.

-WhatIf
Cmdlet'in çalıştırılması durumunda ne olacağını gösterir. Cmdlet çalıştırılmaz.

-Confirm
Cmdlet'i çalıştırmadan önce onay ister.

<CommonParameters>
Bu cmdlet, -Verbose, -Debug, -ErrorAction, -ErrorVariable, -WarningAction, -WarningVariable, -OutBuffer, -OutVariable ve -InformationVariable genel parametrelerini destekler. Daha fazla bilgi için, about_CommonParameters konusuna bakın.

GİRİŞ TÜRLERİ
Microsoft.BackgroundIntelligentTransfer.Management.BitsJob
Get-BitsJob veya Start-BitsJob'dan BitsJob nesnelerini Add-BitsFile'a gönderebilirsiniz.

ÇIKIŞ TÜRLERİ
Microsoft.BackgroundIntelligentTransfer.Management.BitsFile
Add-BitsFile, eklenen dosyaları temsil eden BitsFile nesneleri döndürür.

NOTLAR
· Bu cmdlet, BITS yönetici grubunun bir üyesi veya yönetici ayrıcalıklarıyla çalıştırılmalıdır.
· İşin türü değiştirilemez; dosyalar yalnızca aynı türde eklenebilir.
· Kaynak ve hedef parametreleri eşit sayıda öğe içermelidir, aksi takdirde cmdlet başarısız olur.

İLGİLİ BAĞLANTILAR
· Start-BitsJob
· Get-BitsJob
· Remove-BitsJob
· about_BITS

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
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
| **Position?** | 1 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> Eklenecek dosya yolları dizisi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Dizi işlev tanımları

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Görüntü ayrıntı düzeyi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'low'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Onay gerektirmeyen komut adları dizisi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Kullanılacak PowerShell komut tanımları dizisi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
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
| **Default value** | `-1` |
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
### `-AudioTemperature <Double>`

> Ses üretimi için sıcaklığı kontrol eder.

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

> Yanıt oluşturma için sıcaklığı kontrol eder.

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

> İşlem için kullanılacak CPU iş parçacığı sayısı.

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

> Sessizliği algılamak için eşik değeri.

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

> Daha uzun yanıtlara uygulanan ceza.

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

> Yanıt oluşturmada entropi eşiği.

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

> Çıktı için log olasılık eşiği.

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

> Seste konuşma olmadığını tespit etmek için eşik değeri.

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

> Cevabı söylemeyi engeller.

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

> Modelin düşüncelerini söylemesini engeller.

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

> VOX'u (ses aktivasyonu) devre dışı bırakır.

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

> Giriş için masaüstü ses yakalamayı kullanın.

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

> İstek için bağlamı devre dışı bırakır.

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

> NAME
    Get-AzRoleAssignment - Azure rol atamalarını listeler.

SÖZ DİZİMİ
    Get-AzRoleAssignment [-DefaultProfile <IAzureContextContainer>] [-ExpandPrincipalGroups] [-IncludeClassicAdministrators] [-Scope <String>] [-RoleDefinitionId <Guid>] [-RoleDefinitionName <String>] [-SignInName <String>] [-ObjectId <String>] [-ResourceGroupName <String>] [-ResourceType <String>] [-ParentResource <String>] [-ResourceName <String>] [-ServicePrincipalName <String>] [<CommonParameters>]

AÇIKLAMA
    Get-AzRoleAssignment cmdlet'i, belirtilen kapsamda etkili olan tüm Azure rol atamalarını listeler.
    Parametre olmadan, bu cmdlet abonelik altındaki tüm rol atamalarını döndürür.
    Bu liste filtreleme parametreleri kullanılarak filtrelenebilir.
    Aşağıdakilerin bir kombinasyonunu kullanmalısınız:
    - Genişletilmiş genel grup üyeliklerini hesaplamak istiyorsanız atananın ObjectId'sini,
    - Atananın SignInName'sini veya ServicePrincipalName'ini belirtin.

PARAMETRELER
    -DefaultProfile <IAzureContextContainer>
        Azure hizmetleriyle iletişim için kullanılan kimlik bilgileri, hesap, kiracı ve abonelik.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? false
        Joker karakterleri kabul et?   false

    -ExpandPrincipalGroups
        Belirtilirse, kullanıcının ait olduğu gruplar (doğrudan üye olduğu gruplar) dahil olmak üzere, atanana doğrudan atanan ve atananın ait olduğu gruplara atanan roller döndürülür.
        Desteklenen yalnızca tek bir kullanıcı için.
        Atananın bir kullanıcıyı belirtmek için -ObjectId veya -SignInName parametrelerini kullanın.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              false
        Ardışık düzen girişini kabul et? false
        Joker karakterleri kabul et?   false

    -IncludeClassicAdministrators
        Belirtilirse, abonelikteki klasik yöneticileri (ortak yöneticiler, hizmet yöneticisi ve oturum açan kişi) listelemek için genişletilir.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              false
        Ardışık düzen girişini kabul et? false
        Joker karakterleri kabul et?   false

    -Scope <String>
        Rol atamasının kapsamı.
        Yaygın biçim: "/subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}" veya "/subscriptions/{SubscriptionId}" veya "/subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/{ProviderName}/{ResourceType}/{ResourceName}".

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByValue, ByPropertyName)
        Joker karakterleri kabul et?   false

    -RoleDefinitionId <Guid>
        Atananın arandığı Rolün Kimliği.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -RoleDefinitionName <String>
        Atananın arandığı Rolün adı. Örneğin: Okuyucu, Katkıda Bulunan, Sanal Ağ Yöneticisi.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -SignInName <String>
        Kullanıcının e-posta adresi.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -ObjectId <String>
        Azure Active Directory'deki kullanıcının, grubun veya hizmet sorumlusunun ObjectId'si.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -ResourceGroupName <String>
        Rol atamasıyla ilgili kaynak grubu adı.
        Kaynak belirten kapsamda geçerli bir filtreleme parametresi.
        Belirtilmişse kaynak grubu kapsamındaki rol atamaları gösterilir.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -ResourceType <String>
        Rol atamasıyla ilgili kaynak türü.
        Kaynak belirten kapsamda geçerli bir filtreleme parametresi.
        Belirtilmişse kaynak (veya üst) kapsamındaki rol atamalarını almak için ResourceName ve ResourceGroupName ile birlikte kullanılmalıdır.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -ParentResource <String>
        Rol atamasının (alt kaynak olarak) alındığı, hiyerarşideki üst kaynak.
        Kaynak belirten kapsamda geçerli bir filtreleme parametresi.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -ResourceName <String>
        Rol atamasıyla ilgili kaynağın adı.
        Kaynak belirten kapsamda geçerli bir filtreleme parametresi.
        Belirtilmişse kaynak türü kapsamındaki rol atamalarını almak için ResourceType ve ResourceGroupName ile birlikte kullanılmalıdır.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    -ServicePrincipalName <String>
        Hizmet sorumlusunun SPN'si.

        Gerekli mi?                    false
        Konum?                         named
        Varsayılan değer?              none
        Ardışık düzen girişini kabul et? true (ByPropertyName)
        Joker karakterleri kabul et?   false

    <CommonParameters>
        Bu cmdlet, aşağıdaki ortak parametreleri destekler: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable ve OutVariable. Daha fazla bilgi için bkz.
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).

GİRİŞLER
    Microsoft.Azure.Commands.Resources.Models.Authorization.PSRoleDefinition

ÇIKIŞLAR
    Microsoft.Azure.Commands.Resources.Models.Authorization.PSRoleAssignment

NOTLAR
    Anahtar sözcükler: azure, azurerm, arm, kaynak, yönetim, yönetici, kaynak grubu, şablon, dağıtım

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

- `Object[]`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIMetaLanguage.md)
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
