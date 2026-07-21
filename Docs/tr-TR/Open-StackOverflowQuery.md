# Open-StackOverflowQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qso`

## Synopsis

> Stack Overflow arama sorgularını bir web tarayıcısında açar.

## Description

Bir veya daha fazla Stack Overflow arama sorgusunu, kapsamlı tarayıcı ve görüntüleme yapılandırma seçenekleriyle bir web tarayıcısında açar. Bu işlev, Stack Overflow arama işlevselliğinin etrafında, pencere konumlandırma, tarayıcı seçimi ve davranış özelleştirme için kapsamlı seçenekler sunan gelişmiş bir sarmalayıcı sağlar.

Temel özellikler:
- Ardışık düzen girişi ile birden çok arama sorgusu desteği
- Akıllı tarayıcı algılama ve seçimi (Edge, Chrome, Firefox, tüm tarayıcılar)
- Gelişmiş pencere konumlandırma (sol, sağ, üst, alt, ortalanmış, tam ekran)
- Otomatik veya manuel monitör seçimi ile çoklu monitör desteği
- Özel/gizli tarama modu desteği
- Dikkat dağıtmayan tarama için uygulama modu
- Uluslararası arama sonuçları için dil yerelleştirme desteği
- Uzantı ve açılır pencere engelleme seçenekleri
- Odak yönetimi ve pencere manipülasyonu
- Tarayıcı pencerelerine tuş vuruşu otomasyonu
- Otomasyon iş akışları için URL döndürme seçenekleri

İşlev, sistem yeteneklerini otomatik olarak algılar ve davranışı buna göre ayarlar. Sisteme kurulu olmayan tarayıcılar için işlemler hata vermeden sessizce atlanır.

## Syntax

```powershell
Open-StackOverflowQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Stack Overflow'da gerçekleştirilecek arama sorguları |
| `-Language` | String | — | — | 1 | — | Yerelleştirilmiş Stack Overflow içeriği için döndürülen arama sonuçlarının dili |
| `-Monitor` | Int32 | — | — | Named | `-1` | Kullanılacak monitör, 0 = varsayılan, -1 = atılır, -2 = Yapılandırılmış ikincil monitör, varsayılan -1, konumlandırma yok |
| `-Width` | Int32 | — | — | Named | `-1` | Web tarayıcı penceresinin başlangıç genişliği |
| `-Height` | Int32 | — | — | Named | `-1` | Web tarayıcı penceresinin başlangıç yüksekliği |
| `-X` | Int32 | — | — | Named | `-999999` | Web tarayıcı penceresinin başlangıç X konumu |
| `-Y` | Int32 | — | — | Named | `-999999` | Web tarayıcı penceresinin başlangıç Y konumu |
| `-AcceptLang` | String | — | — | Named | — | Tarayıcının kabul-dil http başlığını ayarlayın |
| `-KeysToSend` | String[] | — | — | Named | — | Tarayıcı penceresine gönderilecek tuş vuruşları, GenXdev\Send-Key cmdlet belgelerine bakın |
| `-Private` | SwitchParameter | — | — | Named | — | Gizli/özel tarama modunda açar |
| `-Force` | SwitchParameter | — | — | Named | — | Gerekirse var olan tarayıcıları durdurarak hata ayıklama bağlantı noktasını zorla etkinleştir |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge'de açar |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome'da açar |
| `-Chromium` | SwitchParameter | — | — | Named | — | Varsayılan tarayıcı ne ise Microsoft Edge veya Google Chrome'da açar |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox'ta açar |
| `-PlayWright` | SwitchParameter | — | — | Named | — | İşletim Sistemi Tarayıcısı Yerine Playwright Tarafından Yönetilen Tarayıcıyı Kullanın |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright tarafından yönetilen WebKit tarayıcısını açar. -PlayWright anlamına gelir. |
| `-Headless` | SwitchParameter | — | — | Named | — | Tarayıcıyı görünür bir pencere olmadan çalıştırın |
| `-All` | SwitchParameter | — | — | Named | — | Tüm kayıtlı modern tarayıcılarda açar |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Tam ekran modunda açar |
| `-Left` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın sol tarafına yerleştir |
| `-Right` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın sağ tarafına yerleştir |
| `-Top` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın üst tarafına yerleştir |
| `-Bottom` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın alt kenarına yerleştir |
| `-Centered` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın ortasına yerleştir |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Tarayıcı kontrollerini gizle |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Tarayıcı eklentilerinin yüklenmesini önle |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Açılır pencere engelleyiciyi devre dışı bırak |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Açıldıktan sonra tarayıcı penceresine odaklan |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Açıldıktan sonra tarayıcı penceresini ön plana getir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Pencereyi konumlandırdıktan sonra büyüt |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Pencereyi konumlandırdıktan sonra normal duruma geri yükle |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell pencere odağını geri yükle |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Mevcut tarayıcı penceresini yeniden kullanma, bunun yerine yeni bir tane oluştur |
| `-PassThru` | SwitchParameter | — | — | Named | — | Tarayıcı işleminin bir [System.Diagnostics.Process] nesnesini döndürür |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Tarayıcıyı açma, sadece URL'yi döndür |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Web tarayıcıyı açtıktan sonra URL'yi döndürür |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Tuş gönderirken kontrol karakterlerini kaçır |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | PowerShell'e tuş gönderdikten sonra klavye odağının PowerShell'e geri dönmesini engelle |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Normal Enter yerine satır sonu için Shift+Enter gönder |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Farklı anahtar dizileri gönderme arasındaki milisaniye cinsinden gecikme |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Tarayıcı penceresinin kenarlıklarını kaldırır. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Stack Overflow arama tercihleri için oturumda saklanan alternatif ayarları kullan |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Stack Overflow arama tercihleri için oturumda depolanan alternatif ayarları temizle |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ayarları yalnızca kalıcı tercihlere kaydet, Stack Overflow araması için oturumu etkilemeden. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ya PowerShell'den farklı bir monitörde tam ekran ya da aynı monitörde PowerShell ile yan yana konumlandırın. |

## Examples

### Open-StackOverflowQuery -Queries "powershell array" -Monitor 0

```powershell
Open-StackOverflowQuery -Queries "powershell array" -Monitor 0
```

Birincil monitörde "powershell array" için bir Stack Overflow araması açar.

### qso "powershell array" -mon 0

```powershell
qso "powershell array" -mon 0
```

Monitör konumlandırması ile takma adı kullanarak Stack Overflow araması açar.

### "powershell", "array manipulation" | Open-StackOverflowQuery -Language "English" -Chrome

```powershell
"powershell", "array manipulation" | Open-StackOverflowQuery -Language "English" -Chrome
```

Chrome'da İngilizce dil tercihiyle birden çok Stack Overflow araması açar.

### Open-StackOverflowQuery -Queries "c# linq" -ReturnURL

```powershell
Open-StackOverflowQuery -Queries "c# linq" -ReturnURL
```

Tarayıcı açmadan Stack Overflow arama URL'sini döndürür.

## Parameter Details

### `-Queries <String[]>`

> Stack Overflow'da gerçekleştirilecek arama sorguları

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Yerelleştirilmiş Stack Overflow içeriği için döndürülen arama sonuçlarının dili

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Kullanılacak monitör, 0 = varsayılan, -1 = atılır, -2 = Yapılandırılmış ikincil monitör, varsayılan -1, konumlandırma yok

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

> Web tarayıcı penceresinin başlangıç genişliği

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

> Web tarayıcı penceresinin başlangıç yüksekliği

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Web tarayıcı penceresinin başlangıç X konumu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> Web tarayıcı penceresinin başlangıç Y konumu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Tarayıcının kabul-dil http başlığını ayarlayın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Tarayıcı penceresine gönderilecek tuş vuruşları, GenXdev\Send-Key cmdlet belgelerine bakın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Gizli/özel tarama modunda açar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Gerekirse var olan tarayıcıları durdurarak hata ayıklama bağlantı noktasını zorla etkinleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Microsoft Edge'de açar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Google Chrome'da açar

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

> Varsayılan tarayıcı ne ise Microsoft Edge veya Google Chrome'da açar

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

> Firefox'ta açar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
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
### `-FullScreen`

> Tam ekran modunda açar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Tarayıcı penceresini ekranın sol tarafına yerleştir

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

> Tarayıcı penceresini ekranın sağ tarafına yerleştir

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

> Tarayıcı penceresini ekranın üst tarafına yerleştir

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

> Tarayıcı penceresini ekranın alt kenarına yerleştir

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

> Tarayıcı penceresini ekranın ortasına yerleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Tarayıcı kontrollerini gizle

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

> Tarayıcı eklentilerinin yüklenmesini önle

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

> Açılır pencere engelleyiciyi devre dışı bırak

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

> Pencereyi konumlandırdıktan sonra büyüt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> Pencereyi konumlandırdıktan sonra normal duruma geri yükle

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

> PowerShell pencere odağını geri yükle

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

> Mevcut tarayıcı penceresini yeniden kullanma, bunun yerine yeni bir tane oluştur

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Tarayıcı işleminin bir [System.Diagnostics.Process] nesnesini döndürür

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

> Tarayıcıyı açma, sadece URL'yi döndür

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

> Web tarayıcıyı açtıktan sonra URL'yi döndürür

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

> Tuş gönderirken kontrol karakterlerini kaçır

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

> PowerShell'e tuş gönderdikten sonra klavye odağının PowerShell'e geri dönmesini engelle

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

> Normal Enter yerine satır sonu için Shift+Enter gönder

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

> Farklı anahtar dizileri gönderme arasındaki milisaniye cinsinden gecikme

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

> Tarayıcı penceresinin kenarlıklarını kaldırır.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Stack Overflow arama tercihleri için oturumda saklanan alternatif ayarları kullan

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

> Stack Overflow arama tercihleri için oturumda depolanan alternatif ayarları temizle

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

> Ayarları yalnızca kalıcı tercihlere kaydet, Stack Overflow araması için oturumu etkilemeden.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Tarayıcı penceresini ya PowerShell'den farklı bir monitörde tam ekran ya da aynı monitörde PowerShell ile yan yana konumlandırın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-BuiltWithSiteInfo.md)
- [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GithubQuery.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-SimularWebSiteInfo.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-YoutubeQuery.md)
