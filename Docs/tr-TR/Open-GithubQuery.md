# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> Bir Github deposu arama sorgusunu bir web tarayıcısında açar veya tüm mevcut niteleyicileri ve arama kategorilerini (depolar, kod, sorunlar, kullanıcılar, commit'ler, tartışmalar, konular, wikiler) destekleyerek GitHub REST API'sine karşı gelişmiş aramalar yürütür.

## Description

Bir Github deposu arama sorgusunu geniş özelleştirme seçenekleriyle bir web tarayıcısında açar veya gelişmiş API aramaları gerçekleştirir. Bu işlev, PowerShell'den Github depolarına birden çok tarayıcı, pencere konumlandırma, dil filtreleme ve klavye otomasyonu desteğiyle hızlı erişim veya API aracılığıyla yapılandırılmış veri alma için güçlü bir arabirim sağlar. Temel özellikler:

- Ardışık düzen girişi ile birden çok arama sorgusu desteği
- Otomatik yerelleştirme ile dile özgü filtreleme
- Çoklu tarayıcı desteği (Edge, Chrome, Firefox)
- Gelişmiş pencere konumlandırma ve monitör seçimi
- Gizli/gizli gezinme modu
- Dikkat dağıtmayan gezinme için uygulama modu
- Klavye otomasyonu ve odak yönetimi
- Programlı kullanım için URL döndürme seçenekleri
- Niteleyiciler, sıralama, sayfalama ile gelişmiş API araması
- Tüm GitHub arama türleri için destek
- Kişisel erişim belirteci ile kimlik doğrulama
- API aramaları için zaman uyumsuz iş yürütme
- Ham JSON veya yapılandırılmış nesne çıktısı

İşlev, web modu için GitHub arama URL'lerini veya API modu için API uç noktalarını otomatik olarak oluşturur ve tüm tarayıcıyla ilgili parametreleri tutarlı davranış için temel Open-Webbrowser işlevine iletir.

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | GitHub'da yürütülecek arama sorguları. Toplu arama için birden çok sorgu ve ardışık düzen girdisini destekler. Her sorgu URL kodlamalı olacak ve GitHub'da arama yapmak için kullanılacaktır. |
| `-Type` | String | — | — | Named | `'Code'` | Aranacak ana kategori. Varsayılan olarak 'Code'. |
| `-In` | String[] | — | — | Named | — | Aranacak alan(lar). Yalnızca seçilen Tür için geçerli seçenekler kabul edilecektir. |
| `-User` | String | — | — | Named | — | Aramayı bir kullanıcının kaynaklarıyla (depolar, kod, sorunlar vb.) sınırlayın. |
| `-Org` | String | — | — | Named | — | Aramayı bir kuruluşla sınırla. |
| `-Repo` | String | — | — | Named | — | Aramayı adlandırılmış bir depo ('sahip/depo') ile kısıtlayın. |
| `-Path` | String | — | — | Named | — | Kod aramasını belirli dosya veya dizin yollarıyla sınırla (GitHub Arama Sözdizimine göre joker karakterler desteklenir). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Sonuçları dosya adına (yol değil) göre filtreleyin. *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Kod aramasını dosya uzantılarıyla sınırla. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Programlama diline göre filtrele. |
| `-Size` | String | — | — | Named | — | Dosya/depo boyutu. Sayısal ve aralık sözdizimini destekler (örneklere bakın). |
| `-State` | String | — | — | Named | — | Sorunlar/PR için. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Sorunlar/PR: belirtilen bir kullanıcı tarafından oluşturulanlarla sınırlandır. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Sorunlar/PR: yalnızca bir kullanıcıya atanmış olanlarla sınırla. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Sorunlar/PR: belirtilen tüm dizelerle etiketlenmelidir. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Sorunlar/PR'ler: belirli meta verilerden yoksun olmalıdır (örneğin, etiket, kilometre taşı). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Sıralama alanı (Türe bağlı). Örn., "stars", "forks", "updated", vb. |
| `-Order` | String | — | — | Named | — | Sıralama için "artan" veya "azalan" düzeni. |
| `-PerPage` | Int32 | — | — | Named | `10` | Sayfa boyutu (maksimum 100). |
| `-Page` | Int32 | — | — | Named | `1` | Sayfa numarası, sayfalanmış sonuçlar için. |
| `-Token` | String | — | — | Named | — | GitHub OAuth veya Kişisel Erişim Belirteci. Sağlanmazsa, GITHUB_TOKEN veya ortam değişkenini kullanır. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Tarayıcının kabul dili http başlığını ayarlar. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Farklı tuş dizileri gönderme arasındaki milisaniye cinsinden gecikme. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Sonuçların görüntüleneceği monitör. 0 = varsayılan, -1 = at, -2 = ikincil. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | Tarayıcı penceresinin başlangıç genişliği. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | Tarayıcı penceresinin başlangıç yüksekliği. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | Tarayıcı penceresinin başlangıçtaki X konumu. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | Tarayıcı penceresinin başlangıç Y konumu. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Tarayıcı penceresine gönderilecek tuş vuruşları, GenXdev\Send-Key cmdlet'inin belgelerine bakın. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Yalnızca büyük/küçük harf duyarlı sonuçlarla eşle (desteklenen durumlarda). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Aramayı bir PowerShell işi olarak eşzamanlı olmayan şekilde çalıştırın. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | Set-TransportService anahtarlarını etkinleştirin veya devre dışı bırakın. TransportService, işletim sistemi hizmetlerini ağ bağlantıları üzerinden kullanılabilir hale getirir. Bu hizmet devre dışı bırakılırsa, bilgisayar ağ üzerinden uzaktan yönetilemez. *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Web tarayıcısında açmak yerine API modunu kullanın. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Anonim arama için tarayıcıyı gizli/özel gezinti modunda açar. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Hata ayıklama bağlantı noktasını zorla etkinleştir, gerekirse mevcut tarayıcıları durdur. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Arama sonuçlarını Microsoft Edge tarayıcısında açar. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Arama sonuçlarını Google Chrome tarayıcısında açar. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Arama sonuçlarını varsayılan tarayıcıya bağlı olarak Microsoft Edge veya Google Chrome'da açar. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Arama sonuçlarını Mozilla Firefox tarayıcısında açar. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | İşletim Sistemi Tarayıcısı Yerine Playwright Tarafından Yönetilen Tarayıcıyı Kullanın |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright tarafından yönetilen WebKit tarayıcısını açar. -PlayWright anlamına gelir. |
| `-Headless` | SwitchParameter | — | — | Named | — | Tarayıcıyı görünür bir pencere olmadan çalıştırın |
| `-All` | SwitchParameter | — | — | Named | — | Tüm kayıtlı modern tarayıcılarda açar |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Tarayıcıyı tam ekran modunda açar. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın sol tarafına yerleştirin. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın sağ tarafına yerleştirin. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın üst kısmına yerleştirin. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın alt kenarına yerleştirin. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın ortasına yerleştirin. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Tarayıcı kontrollerini gizle. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Tarayıcı uzantılarının yüklenmesini önleyin. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Tarayıcıdaki pop-up engelleyiciyi devre dışı bırakın. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini açtıktan sonra odaklayın. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Açıldıktan sonra tarayıcı penceresini ön plana getir. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Pencereyi konumlandırdıktan sonra büyütün. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell pencere odağını geri yükle. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Mevcut tarayıcı penceresini yeniden kullanma, bunun yerine yeni bir tane oluştur. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Web modunda tarayıcı işleminin veya API modunda sorgu nesnesinin bir [System.Diagnostics.Process] nesnesini döndürür. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Cmdlet'i kullanmadan önce yardımı güncellemek için Update-Help cmdlet'ini çalıştırın. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Web tarayıcısını açtıktan sonra URL'yi döndürün. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Anahtarları gönderirken kontrol karakterlerini kaçış karakteri ile kullanın. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tuşları gönderdikten sonra klavye odağının PowerShell'e dönmesini engelle. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Normal Enter yerine satır sonları için Shift+Enter gönder. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Daha temiz bir görünüm için pencere kenarlıklarını ve başlık çubuğunu kaldırın. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini aynı monitörde PowerShell ile yan yana yerleştirin. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Oturumda tercihler için alternatif ayarları kullanın. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Oturumda kayıtlı alternatif tercih ayarlarını temizle. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ayarları yalnızca kalıcı tercihlerde sakla, oturumu etkilemeden. *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Parameter Details

### `-Query <String[]>`

> GitHub'da yürütülecek arama sorguları. Toplu arama için birden çok sorgu ve ardışık düzen girdisini destekler. Her sorgu URL kodlamalı olacak ve GitHub'da arama yapmak için kullanılacaktır.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Queries` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Type <String>`

> Aranacak ana kategori. Varsayılan olarak 'Code'.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Code'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-In <String[]>`

> Aranacak alan(lar). Yalnızca seçilen Tür için geçerli seçenekler kabul edilecektir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-User <String>`

> Aramayı bir kullanıcının kaynaklarıyla (depolar, kod, sorunlar vb.) sınırlayın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Org <String>`

> Aramayı bir kuruluşla sınırla.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repo <String>`

> Aramayı adlandırılmış bir depo ('sahip/depo') ile kısıtlayın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> Kod aramasını belirli dosya veya dizin yollarıyla sınırla (GitHub Arama Sözdizimine göre joker karakterler desteklenir).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Filename <String>`

> Sonuçları dosya adına (yol değil) göre filtreleyin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Extension <String>`

> Kod aramasını dosya uzantılarıyla sınırla.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Language <String>`

> Programlama diline göre filtrele.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Size <String>`

> Dosya/depo boyutu. Sayısal ve aralık sözdizimini destekler (örneklere bakın).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-State <String>`

> Sorunlar/PR için.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Author <String>`

> Sorunlar/PR: belirtilen bir kullanıcı tarafından oluşturulanlarla sınırlandır.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Assignee <String>`

> Sorunlar/PR: yalnızca bir kullanıcıya atanmış olanlarla sınırla.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Labels <String[]>`

> Sorunlar/PR: belirtilen tüm dizelerle etiketlenmelidir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-No <String[]>`

> Sorunlar/PR'ler: belirli meta verilerden yoksun olmalıdır (örneğin, etiket, kilometre taşı).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-SortBy <String>`

> Sıralama alanı (Türe bağlı). Örn., "stars", "forks", "updated", vb.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Order <String>`

> Sıralama için "artan" veya "azalan" düzeni.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerPage <Int32>`

> Sayfa boyutu (maksimum 100).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `10` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Int32>`

> Sayfa numarası, sayfalanmış sonuçlar için.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> GitHub OAuth veya Kişisel Erişim Belirteci. Sağlanmazsa, GITHUB_TOKEN veya ortam değişkenini kullanır.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-AcceptLang <String>`

> Tarayıcının kabul dili http başlığını ayarlar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Farklı tuş dizileri gönderme arasındaki milisaniye cinsinden gecikme.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Monitor <Int32>`

> Sonuçların görüntüleneceği monitör. 0 = varsayılan, -1 = at, -2 = ikincil.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Width <Int32>`

> Tarayıcı penceresinin başlangıç genişliği.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Height <Int32>`

> Tarayıcı penceresinin başlangıç yüksekliği.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-X <Int32>`

> Tarayıcı penceresinin başlangıçtaki X konumu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Y <Int32>`

> Tarayıcı penceresinin başlangıç Y konumu.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-KeysToSend <String[]>`

> Tarayıcı penceresine gönderilecek tuş vuruşları, GenXdev\Send-Key cmdlet'inin belgelerine bakın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-CaseSensitive`

> Yalnızca büyük/küçük harf duyarlı sonuçlarla eşle (desteklenen durumlarda).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsJob`

> Aramayı bir PowerShell işi olarak eşzamanlı olmayan şekilde çalıştırın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-RawResponse`

> Set-TransportService anahtarlarını etkinleştirin veya devre dışı bırakın. TransportService, işletim sistemi hizmetlerini ağ bağlantıları üzerinden kullanılabilir hale getirir. Bu hizmet devre dışı bırakılırsa, bilgisayar ağ üzerinden uzaktan yönetilemez.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Api`

> Web tarayıcısında açmak yerine API modunu kullanın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Private`

> Anonim arama için tarayıcıyı gizli/özel gezinti modunda açar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Force`

> Hata ayıklama bağlantı noktasını zorla etkinleştir, gerekirse mevcut tarayıcıları durdur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Edge`

> Arama sonuçlarını Microsoft Edge tarayıcısında açar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chrome`

> Arama sonuçlarını Google Chrome tarayıcısında açar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chromium`

> Arama sonuçlarını varsayılan tarayıcıya bağlı olarak Microsoft Edge veya Google Chrome'da açar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Firefox`

> Arama sonuçlarını Mozilla Firefox tarayıcısında açar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
### `-FullScreen`

> Tarayıcıyı tam ekran modunda açar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Left`

> Tarayıcı penceresini ekranın sol tarafına yerleştirin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Right`

> Tarayıcı penceresini ekranın sağ tarafına yerleştirin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Top`

> Tarayıcı penceresini ekranın üst kısmına yerleştirin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Bottom`

> Tarayıcı penceresini ekranın alt kenarına yerleştirin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Centered`

> Tarayıcı penceresini ekranın ortasına yerleştirin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ApplicationMode`

> Tarayıcı kontrollerini gizle.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBrowserExtensions`

> Tarayıcı uzantılarının yüklenmesini önleyin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-DisablePopupBlocker`

> Tarayıcıdaki pop-up engelleyiciyi devre dışı bırakın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-FocusWindow`

> Tarayıcı penceresini açtıktan sonra odaklayın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SetForeground`

> Açıldıktan sonra tarayıcı penceresini ön plana getir.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Maximize`

> Pencereyi konumlandırdıktan sonra büyütün.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-RestoreFocus`

> PowerShell pencere odağını geri yükle.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NewWindow`

> Mevcut tarayıcı penceresini yeniden kullanma, bunun yerine yeni bir tane oluştur.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PassThru`

> Web modunda tarayıcı işleminin veya API modunda sorgu nesnesinin bir [System.Diagnostics.Process] nesnesini döndürür.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> Cmdlet'i kullanmadan önce yardımı güncellemek için Update-Help cmdlet'ini çalıştırın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ReturnOnlyURL`

> Web tarayıcısını açtıktan sonra URL'yi döndürün.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyEscape`

> Anahtarları gönderirken kontrol karakterlerini kaçış karakteri ile kullanın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Tuşları gönderdikten sonra klavye odağının PowerShell'e dönmesini engelle.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyUseShiftEnter`

> Normal Enter yerine satır sonları için Shift+Enter gönder.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBorders`

> Daha temiz bir görünüm için pencere kenarlıklarını ve başlık çubuğunu kaldırın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SideBySide`

> Tarayıcı penceresini aynı monitörde PowerShell ile yan yana yerleştirin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SessionOnly`

> Oturumda tercihler için alternatif ayarları kullanın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ClearSession`

> Oturumda kayıtlı alternatif tercih ayarlarını temizle.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SkipSession`

> Ayarları yalnızca kalıcı tercihlerde sakla, oturumu etkilemeden.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-BuiltWithSiteInfo.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-YoutubeQuery.md)
