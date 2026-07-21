# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Sunucuya yeni bir WireGuard VPN eş (istemci) yapılandırması ekler.

## Description

Bu işlev, bir Docker konteynerinde çalışan WireGuard VPN sunucusuna yeni bir eş ekler. Benzersiz bir IP adresi ile yeni bir istemci yapılandırması oluşturur, gerekli kriptografik anahtarları üretir ve yapılandırma ayrıntılarını döndürür. İşlev, isteğe bağlı olarak yapılandırmayı bir dosyaya kaydedebilir veya mobil cihaz kurulumu için bir QR kodu oluşturabilir. İşlev, eş adlarını doğrular, kopyaları kontrol eder ve çeşitli hata durumlarını sorunsuz bir şekilde yönetir.

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Eşsiz bir eş adı |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | VPN üzerinden yönlendirilecek IP aralıkları |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | Bu eş için kullanılacak DNS sunucuları |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | Eş yapılandırma dosyasının kaydedilmesi gereken yol |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | Docker kapsayıcısının adı |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | Kalıcı depolama için Docker birim adı |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | WireGuard hizmeti için port numarası |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | Hizmet sağlık kontrolü için beklenecek maksimum süre (saniye) |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | Sağlık denetimleri arasındaki saniye cinsinden aralık |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | Kullanılacak özel Docker görüntü adı |
| `-PUID` | String | — | — | 10 | `'1000'` | Kapsayıcıda izinler için kullanıcı kimliği |
| `-PGID` | String | — | — | 11 | `'1000'` | Kapsayıcıdaki izinler için grup kimliği |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | Kapsayıcı için kullanılacak saat dilimi |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | Eş yapılandırmasını bir dosyaya kaydedin |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Hizmet başlatılırken WireGuard penceresini göster |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Hizmet başlatılırken pencere kenarlıklarını kaldır |
| `-Width` | Int32 | — | — | Named | `-1` | Hizmet başlatılırken pencere genişliğini ayarlar |
| `-Height` | Int32 | — | — | Named | `-1` | Hizmet başlatılırken pencere yüksekliğini ayarlayın |
| `-Left` | Int32 | — | — | Named | — | Hizmet başlatılırken pencere sol konumunu ayarlayın |
| `-Right` | Int32 | — | — | Named | — | Hizmet başlatılırken pencere konumunu ayarla |
| `-Bottom` | Int32 | — | — | Named | — | Hizmet başlatılırken pencere alt konumunu ayarla |
| `-Centered` | SwitchParameter | — | — | Named | — | Hizmet başlatılırken pencereyi ortala |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Servisi tam ekran modunda başlat |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Hizmet başlatıldıktan sonra pencereye odağı geri yükleme |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Hizmet başlatılırken pencereyi yan yana göster |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Hizmet başlatıldıktan sonra pencereye odaklan |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Hizmet başlatıldıktan sonra pencereyi ön plana getirin |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Hizmet başlatıldıktan sonra pencereye Escape tuşunu gönder |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Hizmet başlatıldıktan sonra tuş gönderirken klavye odağını koru |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Hizmeti başlattıktan sonra tuş göndermek için Shift+Enter kullanın |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Hizmet başlatıldıktan sonra anahtarları gönderirken milisaniye cinsinden gecikme |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Yalnızca WireGuard hizmeti için oturum kullan |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Hizmet başlatılırken oturumu temizle |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Hizmet başlatılırken oturumu atla |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | Mobil kurulumu kolaylaştırmak için QR kodu oluşturun |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker başlatma işlemini atla (zaten üst işlev tarafından çağrılmışsa kullanılır) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker kabının zorla yeniden oluşturulması ve mevcut verilerin kaldırılması |

## Examples

### Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `     -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `     "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `     -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `     -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `     -PGID "1000" -TimeZone "Etc/UTC"

```powershell
Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `
    -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `
    "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `
    -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `
    -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `
    -PGID "1000" -TimeZone "Etc/UTC"
```

### Add-WireGuardPeer "MyTablet" -ShowQRCode

```powershell
Add-WireGuardPeer "MyTablet" -ShowQRCode
```

## Parameter Details

### `-PeerName <String>`

> Eşsiz bir eş adı

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowedIPs <String>`

> VPN üzerinden yönlendirilecek IP aralıkları

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'0.0.0.0/0, ::/0'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DNS <String>`

> Bu eş için kullanılacak DNS sunucuları

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `'1.1.1.1, 1.0.0.1'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputPath <String>`

> Eş yapılandırma dosyasının kaydedilmesi gereken yol

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `"$env:USERPROFILE\WireGuardConfigs"` |
| **Accept pipeline input?** | False |
| **Aliases** | `outfile`, `OutputFile` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Docker kapsayıcısının adı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `'wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> Kalıcı depolama için Docker birim adı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `'wireguard_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> WireGuard hizmeti için port numarası

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `51839` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Hizmet sağlık kontrolü için beklenecek maksimum süre (saniye)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Sağlık denetimleri arasındaki saniye cinsinden aralık

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 8 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Kullanılacak özel Docker görüntü adı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 9 |
| **Default value** | `'linuxserver/wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PUID <String>`

> Kapsayıcıda izinler için kullanıcı kimliği

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 10 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PGID <String>`

> Kapsayıcıdaki izinler için grup kimliği

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 11 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeZone <String>`

> Kapsayıcı için kullanılacak saat dilimi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 12 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SaveConfig`

> Eş yapılandırmasını bir dosyaya kaydedin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Hizmet başlatılırken WireGuard penceresini göster

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

> Hizmet başlatılırken pencere kenarlıklarını kaldır

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Hizmet başlatılırken pencere genişliğini ayarlar

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

> Hizmet başlatılırken pencere yüksekliğini ayarlayın

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Hizmet başlatılırken pencere sol konumunu ayarlayın

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

> Hizmet başlatılırken pencere konumunu ayarla

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

> Hizmet başlatılırken pencere alt konumunu ayarla

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

> Hizmet başlatılırken pencereyi ortala

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fullscreen`

> Servisi tam ekran modunda başlat

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Hizmet başlatıldıktan sonra pencereye odağı geri yükleme

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Hizmet başlatılırken pencereyi yan yana göster

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

> Hizmet başlatıldıktan sonra pencereye odaklan

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

> Hizmet başlatıldıktan sonra pencereyi ön plana getirin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Hizmet başlatıldıktan sonra pencereye Escape tuşunu gönder

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

> Hizmet başlatıldıktan sonra tuş gönderirken klavye odağını koru

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

> Hizmeti başlattıktan sonra tuş göndermek için Shift+Enter kullanın

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

> Hizmet başlatıldıktan sonra anahtarları gönderirken milisaniye cinsinden gecikme

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Yalnızca WireGuard hizmeti için oturum kullan

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

> Hizmet başlatılırken oturumu temizle

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

> Hizmet başlatılırken oturumu atla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowQRCode`

> Mobil kurulumu kolaylaştırmak için QR kodu oluşturun

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Docker başlatma işlemini atla (zaten üst işlev tarafından çağrılmışsa kullanılır)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Docker kabının zorla yeniden oluşturulması ve mevcut verilerin kaldırılması

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Reset-WireGuardConfiguration.md)
