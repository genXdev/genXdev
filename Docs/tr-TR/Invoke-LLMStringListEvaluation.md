# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getlist`, `getstring`

## Synopsis

> AI analizi kullanarak giriş metninden ilgili dizeleri çıkarır veya oluşturur.

## Description

Bu işlev, giriş metnini analiz etmek ve ilgili dizelerin bir listesini çıkarmak veya oluşturmak için AI modellerini kullanır. Metni işleyerek anahtar noktaları belirleyebilir, listelerden öğeler çıkarabilir veya ilgili kavramlar oluşturabilir. Giriş, parametreler aracılığıyla doğrudan, işlem hattından veya sistem panosundan sağlanabilir. İşlev bir dize dizisi döndürür ve isteğe bağlı olarak sonuçları panoya kopyalar.

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | . DESCRIPTION
    Get-AppvClientPackage, bir paket nesnesi döndürür.

PARAMETRELER
    -All
        Bu cmdlet'in, kullanıcıya atanmış tüm paketleri döndürmesini belirtir.

    -Name
        Belirtilen ada sahip paketleri döndürür. Joker karakterlere izin verilir.

    -PackageId
        Belirtilen GUID'e sahip bir paketi döndürür. GUID, tırnak işaretleri içine alınmalıdır.

    -VersionId
        Belirtilen GUID'e sahip bir paket sürümünü döndürür. GUID, tırnak işaretleri içine alınmalıdır.

    -AllUsers
        Tüm kullanıcılar için yayınlanan ve atanmış paketler dahil olmak üzere tüm paketleri döndürür.

    -UserSID
        Belirtilen SID'ye sahip kullanıcı adına paketleri döndürür. Bu parametre SID veya herhangi bir SID belirtecek'NT AUTHORITY\*' dönüşümleri içerebilir.

    -Global
        Yayınlanmış bir paket döndürür.

    <CommonParameters>
        Bu cmdlet aşağıdaki ortak parametreleri destekler: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable ve OutVariable. Daha fazla bilgi için bkz.
        about_CommonParameters.

ÖRNEK 1
    Get-AppvClientPackage -Name "AppV*" |
| `-Instructions` | String | — | — | 1 | `''` | .DESCRIPTION
    Add-CIPolicyRule cmdlet'i, yeni sistem güvenlik ilkelerine kurallar eklemenizi sağlar.
    Bu komut, bir XML dosyasına yeni bir kural düğümü ekleyerek çalışır.
    Kullanıcı, kuralın hangi parametrelere göre eklenmesi gerektiğini belirleyebilir.
    Hedef sistem, mevcut bir Windows Defender Uygulama Denetimi (WDAC) ilkesi olabilir. |
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
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI işlemleri için saniye cinsinden zaman aşımı |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Dosyayı $Path1 ve $Path2'de bulunan dosyalarla aynı dosyaya genişletir. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Tüm insan tarafından okunabilir metni çevirin. Kod, işaretleme veya yapılandırılmış veri varsa, sözdizimi, yapı ve programlama anahtar kelimeleri, etiketler veya veri formatına özgü öğeler gibi tüm teknik unsurları koruyun. Yalnızca yorumlar, dize değerleri, belgeler veya doğal dil içeriği gibi insan tarafından okunabilir metin kısımlarını çevirin. Tam biçimlendirme, girinti ve satır sonlarını koruyun. Tanımlayıcıları, işlev adlarını, değişkenleri veya teknik anahtar kelimeleri asla çevirmeyin. |
| `-Speak` | SwitchParameter | — | — | Named | — | Yapay zeka yanıtları için metinden konuşmaya özelliğini etkinleştir |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI düşünce yanıtları için metin-konuşma etkinleştir |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Oturumu oturum önbelleğinde saklama |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AI modeli için varsayılan araçları etkinleştir |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI tercihleri için oturumda depolanan alternatif ayarları kullan |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Oturumda AI tercihleri için saklanan alternatif ayarları temizle |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ayarları yalnızca kalıcı tercihlerde sakla, oturumu etkilemeden |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .EXTERNALHELP Get-ReplicationGroup.ps1 help file |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Belirli işaretleme bloğu türleri için filtrele. |
| `-AudioTemperature` | Double | — | — | Named | — | Ses yanıtı rastgeleliği için sıcaklık. |
| `-TemperatureResponse` | Double | — | — | Named | — | Metin yanıtı rastgeleliği için sıcaklık. |
| `-Language` | String | — | — | Named | — | tr-TR |
| `-CpuThreads` | Int32 | — | — | Named | — | Kullanılacak CPU iş parçacığı sayısı. |
| `-SuppressRegex` | String | — | — | Named | — | Belirli çıktıları bastırmak için düzenli ifade. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Ses bağlam boyutu işleme için. |
| `-SilenceThreshold` | Double | — | — | Named | — | Ses algılama için sessizlik eşiği. |
| `-LengthPenalty` | Double | — | — | Named | — | Dizi üretimi için uzunluk cezası. |
| `-EntropyThreshold` | Double | — | — | Named | — | Çıktı filtrelemesi için entropi eşiği. |
| `-LogProbThreshold` | Double | — | — | Named | — | Çıktı filtreleme için log olasılık eşiği. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Ses algılama için konuşma eşiği yok. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Konuşma çıkışını devre dışı bırak. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Düşünceler için ses çıkışını devre dışı bırak. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX'u (ses aktivasyonu) devre dışı bırak. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Masaüstü ses yakalamayı kullanın. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Bağlam kullanımını devre dışı bırak. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Işın demeti arama stratejisini kullanın. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Örnek Çıktı:

```
PS C:\> Remove-AppvClientPackage -Name "MyApp" -Version 1
```

Bu komut, adı "MyApp" ve sürümü 1 olan App-V İstemci Paketini kaldırır. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Araç çağrıları için maksimum geri arama uzunluğu. |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Parameter Details

### `-Text <String>`

> . DESCRIPTION
    Get-AppvClientPackage, bir paket nesnesi döndürür.

PARAMETRELER
    -All
        Bu cmdlet'in, kullanıcıya atanmış tüm paketleri döndürmesini belirtir.

    -Name
        Belirtilen ada sahip paketleri döndürür. Joker karakterlere izin verilir.

    -PackageId
        Belirtilen GUID'e sahip bir paketi döndürür. GUID, tırnak işaretleri içine alınmalıdır.

    -VersionId
        Belirtilen GUID'e sahip bir paket sürümünü döndürür. GUID, tırnak işaretleri içine alınmalıdır.

    -AllUsers
        Tüm kullanıcılar için yayınlanan ve atanmış paketler dahil olmak üzere tüm paketleri döndürür.

    -UserSID
        Belirtilen SID'ye sahip kullanıcı adına paketleri döndürür. Bu parametre SID veya herhangi bir SID belirtecek'NT AUTHORITY\*' dönüşümleri içerebilir.

    -Global
        Yayınlanmış bir paket döndürür.

    <CommonParameters>
        Bu cmdlet aşağıdaki ortak parametreleri destekler: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable ve OutVariable. Daha fazla bilgi için bkz.
        about_CommonParameters.

ÖRNEK 1
    Get-AppvClientPackage -Name "AppV*"

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

> AI modeli için varsayılan araçları etkinleştir

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
### `-AudioTemperature <Double>`

> Ses yanıtı rastgeleliği için sıcaklık.

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

> Metin yanıtı rastgeleliği için sıcaklık.

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

> tr-TR

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

> Ses algılama için sessizlik eşiği.

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

> Düşünceler için ses çıkışını devre dışı bırak.

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

- `String[]`

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
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMQuery.md)
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
