# Open-BingCopilotQuery

> **Module:** GenXdev.Queries.AI | **Type:** Function | **Aliases:** `aibc`

## Synopsis

> Bir Bing CoPilot sorgusunu web tarayıcısında açar

## Description

Bir Bing CoPilot sorgusunu web tarayıcısında açar. İşlev, temeldeki Open-WebsiteAndPerformQuery işlevini kullanarak sorguyu otomatik olarak yazar ve gönderir. Bu, PowerShell'den Microsoft Copilot ile etkileşim kurmak için uygun bir yol sağlar.

## Syntax

```powershell
Open-BingCopilotQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Yürütülecek sorgu. |
| `-Language` | String | — | — | 1 | — | Döndürülen arama sonuçlarının dili |
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
| `-Monitor` | Int32 | — | — | Named | `-1` | Kullanılacak monitör, 0 = varsayılan, -1 = atılır, -2 = Yapılandırılmış ikincil monitör, varsayılan -1, konumlandırma yok |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Tam ekran modunda açar |
| `-Width` | Int32 | — | — | Named | `-1` | Web tarayıcı penceresinin başlangıç genişliği |
| `-Height` | Int32 | — | — | Named | `-1` | Web tarayıcı penceresinin başlangıç yüksekliği |
| `-X` | Int32 | — | — | Named | `-999999` | Web tarayıcı penceresinin başlangıç X konumu |
| `-Y` | Int32 | — | — | Named | `-999999` | Web tarayıcı penceresinin başlangıç Y konumu |
| `-Left` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın sol tarafına yerleştir |
| `-Right` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın sağ tarafına yerleştir |
| `-Top` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın üst tarafına yerleştir |
| `-Bottom` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın alt kenarına yerleştir |
| `-Centered` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ekranın ortasına yerleştir |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Tarayıcı kontrollerini gizle |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Tarayıcı eklentilerinin yüklenmesini önle |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Açılır pencere engelleyiciyi devre dışı bırak |
| `-AcceptLang` | String | — | — | Named | `$null` | Tarayıcının kabul-dil http başlığını ayarlayın |
| `-KeysToSend` | String[] | — | — | Named | — | Tarayıcı penceresine gönderilecek tuş vuruşları, GenXdev\Send-Key cmdlet belgelerine bakın |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Açıldıktan sonra tarayıcı penceresine odaklan |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Açıldıktan sonra tarayıcı penceresini ön plana getir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Pencereyi konumlandırdıktan sonra büyüt |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Pencereyi konumlandırdıktan sonra normal duruma geri yükle |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell pencere odağını geri yükle |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Mevcut tarayıcı penceresini yeniden kullanma, bunun yerine yeni bir tane oluştur |
| `-PassThru` | SwitchParameter | — | — | Named | — | Tarayıcı işleminin bir [System.Diagnostics.Process] nesnesini döndürür |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Tuş gönderirken kontrol karakterlerini kaçır |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | PowerShell'e tuş gönderdikten sonra klavye odağının PowerShell'e geri dönmesini engelle |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Normal Enter yerine satır sonu için Shift+Enter gönder |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Farklı anahtar dizileri gönderme arasındaki milisaniye cinsinden gecikme |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Tarayıcı penceresinin kenarlıklarını kaldırır. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Tarayıcı profili için yalnızca oturum modunu kullan. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Tarayıcı oturumunu/profilini açmadan önce temizle. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Tarayıcı oturumunu/profil yüklemeyi atla. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Tarayıcı penceresini ya PowerShell'den farklı bir monitörde tam ekran ya da aynı monitörde PowerShell ile yan yana konumlandırın. |

## Examples

### Open-BingCopilotQuery -Queries "How to write better PowerShell functions?"

```powershell
Open-BingCopilotQuery -Queries "How to write better PowerShell functions?"
```

### aibc "What is the capital of France?"

```powershell
aibc "What is the capital of France?"
```

## Parameter Details

### `-Queries <String[]>`

> Yürütülecek sorgu.

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

> Döndürülen arama sonuçlarının dili

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
### `-ShowWindow`

> Tam ekran modunda açar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
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
### `-AcceptLang <String>`

> Tarayıcının kabul-dil http başlığını ayarlayın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
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

> Tarayıcı profili için yalnızca oturum modunu kullan.

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

> Tarayıcı oturumunu/profilini açmadan önce temizle.

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

> Tarayıcı oturumunu/profil yüklemeyi atla.

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

- [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-ChatGPTQuery.md)
- [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-CloudLLMChat.md)
- [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-DeepSearchQuery.md)
- [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GithubCopilotQuery.md)
- [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-GoogleGeminiQuery.md)
- [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-XGrokQuery.md)
