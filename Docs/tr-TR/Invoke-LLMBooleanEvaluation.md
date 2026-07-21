# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `equalstrue`

## Synopsis

> Bir ifadeyi doğru mu yanlış mı olduğunu belirlemek için AI kullanarak değerlendirir.

## Description

Bu işlev, ifadeleri değerlendirmek ve doğruluk değerlerini belirlemek için AI modellerini kullanır. Girdiyi doğrudan parametreler, işlem hattı veya sistem panosu aracılığıyla kabul edebilir. İşlev, AI modelinden bir boolean sonuç, güven seviyesi ve gerekçe döndürür.

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Değerlendirilecek ifade |
| `-Instructions` | String | — | — | 1 | `''` | AI modelünün ifadeyi nasıl değerlendireceğine dair talimatlar |
| `-Attachments` | String[] | — | — | 2 | `@()` | Eklenecek dosya yolları dizisi |
| `-Temperature` | Double | — | — | Named | `-1` | Yanıtın rastgelelik derecesi için sıcaklık (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Görüntü ayrıntı düzeyi |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Dizi işlev tanımları |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Kullanılacak PowerShell komut tanımları dizisi |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Onay gerektirmeyen komut adları dizisi |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | LLM sorgusunun türü |
| `-Model` | String | — | — | Named | — | AI işlemleri için kullanılacak model tanımlayıcısı veya deseni |
| `-ApiEndpoint` | String | — | — | Named | — | Yapay zeka işlemleri için API uç noktası URL'si |
| `-ApiKey` | String | — | — | Named | — | Kimlik doğrulamalı AI işlemleri için API anahtarı |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | LLM'nin JSON şemaları için desteği olmadığını belirtir |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Tercih veri dosyaları için veritabanı yolu |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Sonucu panoya kopyala |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | .ÖRNEK

PS C:\>Add-Computer -DomainName Domain01 -Credential Domain01\Admin01 -Restart -Force

Bu komut, Etki Alanı01'e bir etki alanı üyesi ekler. Bilgisayarı yeniden başlatmak için -Restart parametresini kullanır. Bilgisayarın yeniden başlatılmasına neden olabilecek kullanıcı istemlerini bastırmak için -Force parametresini kullanır.

PS C:\>Add-Computer -ComputerName Server01 -LocalCredential Server01\Admin01 -DomainName Domain02 -Credential Domain02\Admin02 -Restart -Force

Bu komut, Server01 adlı bir bilgisayarı Etki Alanı02 etki alanına ekler. Bilgisayarda oturum açmak için Server01\Admin01 yerel hesabını kullanır; etki alanına katılmak için Domain02\Admin02 hesabını, tüm kullanıcı istemlerini bastırmak için -Force parametresini kullanır ve komut tamamlandıktan sonra bilgisayarı yeniden başlatır.


AÇIKLAMALAR

Add-Computer cmdlet'i, yerel bilgisayarı veya uzak bilgisayarları bir etki alanına veya çalışma grubuna ekler ve ayrıca bilgisayarı bir etki alanındaki bir kuruluş birimine yerleştirir. Bu cmdlet, yeni bir etki alanı hesabı oluşturmak için etki alanına katılım işlemini gerçekleştirir. Bir kullanıcı hesabı ve etki alanı kimlik bilgileri sağlamazsanız, varsayılan geçerli kullanıcının etki alanı hesabı ve kimlik bilgileri kullanılır.

Add-Computer parametreleri olmadan kullanıldığında, yerel bilgisayarı geçerli etki alanına ekler. Bilgisayarı bir çalışma grubuna taşımak için -WorkGroupName parametresini kullanın.

Bir etki alanı denetleyicisini bir etki alanına eklemek için Install-ADDSDomainController cmdlet'ini kullanın.

Bu cmdlet, Windows PowerShell 3.0 ile sunulmuştur.


PARAMETRELER

-Credential 

Bu eylemi gerçekleştirme iznine sahip bir kullanıcı hesabını belirtir. Geçerli kullanıcının bu eylemi gerçekleştirme izni yoksa varsayılan geçerli kullanıcıdır.

Tür: PSCredential
Pozisyon: 2
Varsayılan değer: Yok
Borudan giriş kabul eder: True
Joker karakter kabul eder: False |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Tüm insan tarafından okunabilir metni çevirin. Kod, işaretleme veya yapılandırılmış veri varsa, sözdizimi, yapı ve programlama anahtar kelimeleri, etiketler veya veri formatına özgü öğeler gibi tüm teknik unsurları koruyun. Yalnızca yorumlar, dize değerleri, belgeler veya doğal dil içeriği gibi insan tarafından okunabilir metin kısımlarını çevirin. Tam biçimlendirme, girinti ve satır sonlarını koruyun. Tanımlayıcıları, işlev adlarını, değişkenleri veya teknik anahtar kelimeleri asla çevirmeyin. |
| `-Speak` | SwitchParameter | — | — | Named | — | Yapay zeka yanıtları için metinden konuşmaya özelliğini etkinleştir |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI düşünce yanıtları için metin-konuşma etkinleştir |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Oturumu oturum önbelleğinde saklama |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AI'nın varsayılan araçları ve yetenekleri kullanmasına izin ver |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI tercihleri için oturumda depolanan alternatif ayarları kullan |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Oturumda AI tercihleri için saklanan alternatif ayarları temizle |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ayarları yalnızca kalıcı tercihlerde sakla, oturumu etkilemeden |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .PARAMETER Policy
Geçerli bir Microsoft Entra ID Koşullu Erişim ilkesi nesnesi belirtir.

Bu parametre, Microsoft Graph Beta PowerShell modülünün Get-MgIdentityConditionalAccessPolicy cmdlet'i tarafından döndürülen Koşullu Erişim ilkesi nesnesini kullanmanızı sağlar.

```yaml
Type: Microsoft.Graph.PowerShell.Models.MicrosoftGraphConditionalAccessPolicy
Parameter Sets: Policy
Aliases: None

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
``` |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Belirli türdeki işaretleme bloklarını filtrele |
| `-AudioTemperature` | Double | — | — | Named | — | Ses yanıtı rastgeleliği için sıcaklık |
| `-TemperatureResponse` | Double | — | — | Named | — | Yanıt üretimi için sıcaklık |
| `-Language` | String | — | — | Named | — | tr |
| `-CpuThreads` | Int32 | — | — | Named | — | İşlem için kullanılacak CPU iş parçacığı sayısı |
| `-SuppressRegex` | String | — | — | Named | — | Çıktıdan bastırılacak normal ifade |
| `-AudioContextSize` | Int32 | — | — | Named | — | Ses bağlam boyutu işleme için |
| `-SilenceThreshold` | Double | — | — | Named | — | Ses algılama için sessizlik eşiği |
| `-LengthPenalty` | Double | — | — | Named | — | Dizi oluşturma için uzunluk cezası |
| `-EntropyThreshold` | Double | — | — | Named | — | Çıktı filtrelemesi için entropi eşiği |
| `-LogProbThreshold` | Double | — | — | Named | — | Çıktı filtreleme için log olasılık eşiği |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Ses algılama için konuşma eşiği yok |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Ses çıkışını devre dışı bırak |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Düşünceler için ses çıkışını devre dışı bırak |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX'u (sesle etkinleştirmeyi) devre dışı bırak |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Giriş için masaüstü ses yakalamayı kullanın |
| `-NoContext` | SwitchParameter | — | — | Named | — | PowerShell cmdlet yardım metinlerinden oluşan çevrilecek içeriği talimatlarla karıştırmayın!
Resim eklemeyin veya herhangi bir şey eklemeyin. İçeriği mümkün olduğunca aynen şu dile çevirin: Türkiye Türkçesi. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Işın araması örnekleme stratejisini kullan |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .PARAMETER  Name
Bu cmdlet'e ait parametrelerin adını belirtir. Windows PowerShell adları için joker karakterlere izin verir. Örneğin: "Get-Command -Name Get-ChildItem". Birden fazla ad belirtebilirsiniz. Parametre adları ve değerleri büyük/küçük harfe duyarlı değildir. Geçerli bir parametre adı kullanmalısınız. Değişken adlarına, ifadelere veya komutlara izin verilmez. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Examples

### Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"

```powershell
Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"
```

### "Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation

```powershell
"Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation
```

### equalstrue "2 + 2 = 4" ##############################################################################

```powershell
equalstrue "2 + 2 = 4"
##############################################################################
```

## Parameter Details

### `-Text <String>`

> Değerlendirilecek ifade

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

> AI modelünün ifadeyi nasıl değerlendireceğine dair talimatlar

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

> Sonucu panoya kopyala

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

> .ÖRNEK

PS C:\>Add-Computer -DomainName Domain01 -Credential Domain01\Admin01 -Restart -Force

Bu komut, Etki Alanı01'e bir etki alanı üyesi ekler. Bilgisayarı yeniden başlatmak için -Restart parametresini kullanır. Bilgisayarın yeniden başlatılmasına neden olabilecek kullanıcı istemlerini bastırmak için -Force parametresini kullanır.

PS C:\>Add-Computer -ComputerName Server01 -LocalCredential Server01\Admin01 -DomainName Domain02 -Credential Domain02\Admin02 -Restart -Force

Bu komut, Server01 adlı bir bilgisayarı Etki Alanı02 etki alanına ekler. Bilgisayarda oturum açmak için Server01\Admin01 yerel hesabını kullanır; etki alanına katılmak için Domain02\Admin02 hesabını, tüm kullanıcı istemlerini bastırmak için -Force parametresini kullanır ve komut tamamlandıktan sonra bilgisayarı yeniden başlatır.


AÇIKLAMALAR

Add-Computer cmdlet'i, yerel bilgisayarı veya uzak bilgisayarları bir etki alanına veya çalışma grubuna ekler ve ayrıca bilgisayarı bir etki alanındaki bir kuruluş birimine yerleştirir. Bu cmdlet, yeni bir etki alanı hesabı oluşturmak için etki alanına katılım işlemini gerçekleştirir. Bir kullanıcı hesabı ve etki alanı kimlik bilgileri sağlamazsanız, varsayılan geçerli kullanıcının etki alanı hesabı ve kimlik bilgileri kullanılır.

Add-Computer parametreleri olmadan kullanıldığında, yerel bilgisayarı geçerli etki alanına ekler. Bilgisayarı bir çalışma grubuna taşımak için -WorkGroupName parametresini kullanın.

Bir etki alanı denetleyicisini bir etki alanına eklemek için Install-ADDSDomainController cmdlet'ini kullanın.

Bu cmdlet, Windows PowerShell 3.0 ile sunulmuştur.


PARAMETRELER

-Credential 

Bu eylemi gerçekleştirme iznine sahip bir kullanıcı hesabını belirtir. Geçerli kullanıcının bu eylemi gerçekleştirme izni yoksa varsayılan geçerli kullanıcıdır.

Tür: PSCredential
Pozisyon: 2
Varsayılan değer: Yok
Borudan giriş kabul eder: True
Joker karakter kabul eder: False

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

> AI'nın varsayılan araçları ve yetenekleri kullanmasına izin ver

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
### `-OutputMarkdownBlocksOnly`

> .PARAMETER Policy
Geçerli bir Microsoft Entra ID Koşullu Erişim ilkesi nesnesi belirtir.

Bu parametre, Microsoft Graph Beta PowerShell modülünün Get-MgIdentityConditionalAccessPolicy cmdlet'i tarafından döndürülen Koşullu Erişim ilkesi nesnesini kullanmanızı sağlar.

```yaml
Type: Microsoft.Graph.PowerShell.Models.MicrosoftGraphConditionalAccessPolicy
Parameter Sets: Policy
Aliases: None

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
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

> Belirli türdeki işaretleme bloklarını filtrele

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

> Ses yanıtı rastgeleliği için sıcaklık

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

> Yanıt üretimi için sıcaklık

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> tr

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

> İşlem için kullanılacak CPU iş parçacığı sayısı

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

> Çıktıdan bastırılacak normal ifade

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

> Ses bağlam boyutu işleme için

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

> Ses algılama için sessizlik eşiği

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

> Dizi oluşturma için uzunluk cezası

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

> Çıktı filtrelemesi için entropi eşiği

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

> Çıktı filtreleme için log olasılık eşiği

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

> Ses algılama için konuşma eşiği yok

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

> Ses çıkışını devre dışı bırak

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

> Düşünceler için ses çıkışını devre dışı bırak

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

> VOX'u (sesle etkinleştirmeyi) devre dışı bırak

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

> Giriş için masaüstü ses yakalamayı kullanın

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

> PowerShell cmdlet yardım metinlerinden oluşan çevrilecek içeriği talimatlarla karıştırmayın!
Resim eklemeyin veya herhangi bir şey eklemeyin. İçeriği mümkün olduğunca aynen şu dile çevirin: Türkiye Türkçesi.

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

> Işın araması örnekleme stratejisini kullan

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

> .PARAMETER  Name
Bu cmdlet'e ait parametrelerin adını belirtir. Windows PowerShell adları için joker karakterlere izin verir. Örneğin: "Get-Command -Name Get-ChildItem". Birden fazla ad belirtebilirsiniz. Parametre adları ve değerleri büyük/küçük harfe duyarlı değildir. Geçerli bir parametre adı kullanmalısınız. Değişken adlarına, ifadelere veya komutlara izin verilmez.

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

> The `-MaxToolcallBackLength` parameter.

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

- `Boolean`

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
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageScenesUpdate.md)
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
