# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> WireGuard VPN sunucusu hakkında ayrıntılı durum bilgilerini alır.

## Description

Bu işlev, bir Docker kapsayıcısında çalışan WireGuard VPN sunucusu hakkında arayüz ayrıntıları, dinleme bağlantı noktası, bağlı eşler ve sunucu sağlığı dahil olmak üzere ayrıntılı durum bilgilerini alır. Sunucu durumu, eş sayıları, çalışma süresi ve ağ yapılandırma ayrıntıları dahil olmak üzere WireGuard hizmeti hakkında kapsamlı bilgi sağlar.

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker başlatma işlemini atla (zaten üst işlev tarafından çağrılmışsa kullanılır) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker kabının zorla yeniden oluşturulması ve mevcut verilerin kaldırılması |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Docker kapsayıcısının adı |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Kalıcı depolama için Docker birim adı |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | WireGuard hizmeti için port numarası |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Hizmet sağlık kontrolü için beklenecek maksimum süre (saniye) |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Sağlık denetimleri arasındaki saniye cinsinden aralık |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Kullanılacak özel Docker görüntü adı |
| `-PUID` | String | — | — | 6 | `'1000'` | Kapsayıcıda izinler için kullanıcı kimliği |
| `-PGID` | String | — | — | 7 | `'1000'` | Kapsayıcıdaki izinler için grup kimliği |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Kapsayıcı için kullanılacak saat dilimi |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Kapsayıcı çalıştırılırken pencereyi göster (geçiş) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Pencere kenarlıklarını kaldır (geçişli) |
| `-Width` | Int32 | — | — | 9 | `-1` | Karakter veya piksel cinsinden pencere genişliği (geçiş) |
| `-Height` | Int32 | — | — | 10 | `-1` | Karakter veya piksel cinsinden pencere yüksekliği (geçiş) |
| `-Left` | Int32 | — | — | 11 | — | Pencere sol konumu (geçiş) |
| `-Right` | Int32 | — | — | 12 | — | Pencere sağ konumu (geçiş) |
| `-Bottom` | Int32 | — | — | 13 | — | Pencerenin alt konumu (geçişe izin ver) |
| `-Centered` | SwitchParameter | — | — | Named | — | Pencereyi ortala (geçiş) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Pencereyi tam ekran modunda aç (geçiş) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | İşlem sonrası pencereye odağı geri yükle (geçişli) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Yan yana pencere göster (geçiş) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Pencereyi açtıktan sonra odakla (geçiş) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Pencereyi ön plana getir (geçiş yap) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Pencereye Escape tuşu gönder (geçiş izni ver) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tuş gönderirken klavye odağını koru (geçiş) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Tuş gönderme (geçiş) modundayken tuş göndermek için Shift+Enter kullanın |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Tuşları gönderme arasındaki milisaniye cinsinden gecikme (geçiş) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Yalnızca oturum modu (geçiş) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Oturum verilerini temizle (geçiş) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Oturum başlatmayı atla (geçiş yap) |

## Examples

### Get-WireGuardStatus

```powershell
Get-WireGuardStatus
```

Varsayılan ayarlarla WireGuard sunucusunun durumunu döndürür.

### Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"

```powershell
Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"
```

Docker'ı başlatmadan özel bir kapsayıcı için durum bilgisi alır.

## Parameter Details

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
### `-ContainerName <String>`

> Docker kapsayıcısının adı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
| **Position?** | 1 |
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
| **Position?** | 2 |
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
| **Position?** | 3 |
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
| **Position?** | 4 |
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
| **Position?** | 5 |
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
| **Position?** | 6 |
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
| **Position?** | 7 |
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
| **Position?** | 8 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Kapsayıcı çalıştırılırken pencereyi göster (geçiş)

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

> Pencere kenarlıklarını kaldır (geçişli)

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

> Karakter veya piksel cinsinden pencere genişliği (geçiş)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 9 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Karakter veya piksel cinsinden pencere yüksekliği (geçiş)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 10 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Pencere sol konumu (geçiş)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 11 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Pencere sağ konumu (geçiş)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 12 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Pencerenin alt konumu (geçişe izin ver)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 13 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Pencereyi ortala (geçiş)

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

> Pencereyi tam ekran modunda aç (geçiş)

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

> İşlem sonrası pencereye odağı geri yükle (geçişli)

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

> Yan yana pencere göster (geçiş)

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

> Pencereyi açtıktan sonra odakla (geçiş)

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

> Pencereyi ön plana getir (geçiş yap)

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

> Pencereye Escape tuşu gönder (geçiş izni ver)

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

> Tuş gönderirken klavye odağını koru (geçiş)

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

> Tuş gönderme (geçiş) modundayken tuş göndermek için Shift+Enter kullanın

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

> Tuşları gönderme arasındaki milisaniye cinsinden gecikme (geçiş)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 14 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Yalnızca oturum modu (geçiş)

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

> Oturum verilerini temizle (geçiş)

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

> Oturum başlatmayı atla (geçiş yap)

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

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WireGuardPeers.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Reset-WireGuardConfiguration.md)
