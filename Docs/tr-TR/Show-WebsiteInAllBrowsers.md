# Show-WebsiteInAllBrowsers

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Bir URL'yi eşzamanlı olarak mozaik düzende birden çok tarayıcıda açar.

## Description

Bu işlev, belirtilen URL'yi Chrome, Edge, Firefox ve bir gizli tarama penceresinde açarak tarayıcı pencerelerinden oluşan bir mozaik düzeni oluşturur. Tarayıcılar 2x2 ızgara deseninde düzenlenir:
- Chrome: Sol üst çeyrek
- Edge: Sol alt çeyrek
- Firefox: Sağ üst çeyrek
- Gizli pencere: Sağ alt çeyrek

Open-Webbrowser'daki tüm parametreler desteklenir ve tarayıcı konumlandırmasını, davranışını ve görünümünü kontrol etmek için iletilir. İşlev, tutarlı çeyrek konumlandırması uygulayan ve tarayıcı başlatma parametrelerinin tam özelleştirilmesine izin veren bir sarmalayıcı görevi görür.

## Syntax

```powershell
Show-WebsiteInAllBrowsers -Url <String> [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Tüm tarayıcılarda aynı anda açılacak URL'ler |
| `-Monitor` | Int32 | — | — | Named | `-1` | Kullanılacak monitör, 0 = varsayılan, -1 = at, -2 = Yapılandırılmış ikincil monitör, varsayılan $Global:DefaultSecondaryMonitor veya bulunamazsa 2 |
| `-Width` | Int32 | — | — | Named | `-1` | Web tarayıcı penceresinin başlangıç genişliği |
| `-Height` | Int32 | — | — | Named | `-1` | Web tarayıcı penceresinin başlangıç yüksekliği |
| `-X` | Int32 | — | — | Named | `-999999` | Web tarayıcı penceresinin başlangıç X konumu |
| `-Y` | Int32 | — | — | Named | `-999999` | Web tarayıcı penceresinin başlangıç Y konumu |
| `-AcceptLang` | String | — | — | Named | — | Tarayıcının kabul-dil http başlığını ayarlayın |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Tam ekran modunda açar |
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
| `-Left` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın sol tarafına yerleştir |
| `-Right` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın sağ tarafına yerleştir |
| `-Top` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın üst tarafına yerleştir |
| `-Bottom` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın alt kenarına yerleştir |
| `-Centered` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın ortasına yerleştir |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Tarayıcı kontrollerini gizle |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Tarayıcı eklentilerinin yüklenmesini önle |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Açılır pencere engelleyiciyi devre dışı bırak |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell pencere odağını geri yükle |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Mevcut tarayıcı penceresini yeniden kullanma, bunun yerine yeni bir tane oluştur |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Açıldıktan sonra tarayıcı penceresine odaklan |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Açıldıktan sonra tarayıcı penceresini ön plana getir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Pencereyi konumlandırdıktan sonra büyüt |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Pencereyi konumlandırdıktan sonra normal duruma geri yükle |
| `-KeysToSend` | String[] | — | — | Named | — | Tarayıcı penceresine gönderilecek tuş vuruşları, GenXdev\Send-Key cmdlet belgelerine bakın |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Tuş gönderirken kontrol karakterlerini kaçır |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | PowerShell'e tuş gönderdikten sonra klavye odağının PowerShell'e geri dönmesini engelle |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Normal Enter yerine satır sonu için Shift+Enter gönder |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Farklı anahtar dizileri gönderme arasındaki milisaniye cinsinden gecikme |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Tarayıcı penceresinin kenarlıklarını kaldırır. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ya PowerShell'den farklı bir monitörde tam ekran ya da aynı monitörde PowerShell ile yan yana konumlandırın. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Yapay zeka tercihleri için oturumda depolanan alternatif ayarları kullanın. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Yapay zeka tercihleri için oturumda depolanan alternatif ayarları temizleyin. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ayarları yalnızca kalıcı tercihlerde sakla, oturumu etkilemeden. |

## Examples

### Show-WebsiteInAllBrowsers -Url "https://www.github.com" Opens github.com in four different browsers arranged in a mosaic layout.

```powershell
Show-WebsiteInAllBrowsers -Url "https://www.github.com"
Opens github.com in four different browsers arranged in a mosaic layout.
```

### "https://www.github.com" | Show-UrlInAllBrowsers Uses the function's alias and pipeline input to achieve the same result.

```powershell
"https://www.github.com" | Show-UrlInAllBrowsers
Uses the function's alias and pipeline input to achieve the same result.
```

## Parameter Details

### `-Url <String>`

> Tüm tarayıcılarda aynı anda açılacak URL'ler

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Value`, `Uri`, `FullName`, `Website`, `WebsiteUrl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Kullanılacak monitör, 0 = varsayılan, -1 = at, -2 = Yapılandırılmış ikincil monitör, varsayılan $Global:DefaultSecondaryMonitor veya bulunamazsa 2

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
### `-SessionOnly`

> Yapay zeka tercihleri için oturumda depolanan alternatif ayarları kullanın.

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

> Yapay zeka tercihleri için oturumda depolanan alternatif ayarları temizleyin.

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

> Ayarları yalnızca kalıcı tercihlerde sakla, oturumu etkilemeden.

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-WebbrowserTabLocation.md)
