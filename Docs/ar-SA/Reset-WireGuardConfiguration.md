# Reset-WireGuardConfiguration

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> يقوم بإعادة تعيين تكوين خادم WireGuard VPN، وإزالة جميع النظراء.

## Description

تقوم هذه الوظيفة بإعادة ضبط تكوين خادم WireGuard VPN الذي يعمل داخل حاوية Docker عن طريق إزالة جميع النظراء وإنشاء تكوين خادم جديد. هذه عملية تدميرية لا يمكن التراجع عنها وستؤدي إلى إزالة جميع تكوينات النظراء بشكل دائم. تقوم الوظيفة بإيقاف خدمة WireGuard، وإزالة جميع أدلة وملفات تكوين النظراء، وإزالة مفاتيح الخادم، وإعادة تشغيل الحاوية، والتحقق من إنشاء تكوين جديد.

## Syntax

```powershell
Reset-WireGuardConfiguration [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Force] [-NoDockerInitialize] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | اسم حاوية Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | اسم حجم Docker للتخزين الدائم |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | رقم المنفذ لخدمة WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | الحد الأقصى للوقت بالثواني لانتظار فحص خدمة الصحة |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | الفترة الزمنية بالثواني بين محاولات فحص الصحة |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | اسم صورة Docker المخصصة لاستخدامها |
| `-PUID` | String | — | — | 6 | `'1000'` | معرف المستخدم للأذونات في الحاوية |
| `-PGID` | String | — | — | 7 | `'1000'` | معرّف المجموعة للأذونات في الحاوية |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | المنطقة الزمنية لاستخدام الحاوية |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | تخطي تهيئة Docker (تُستخدم عندما يتم استدعاؤها بالفعل بواسطة دالة أصلية) |
| `-Force` | SwitchParameter | — | — | Named | — | إعادة تعيين قسري بدون تأكيد |

## Examples

### Reset-WireGuardConfiguration

```powershell
Reset-WireGuardConfiguration
```

يقوم بإعادة تعيين تكوين WireGuard إلى الإعدادات الافتراضية ويطلب التأكيد قبل المتابعة.

### Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"

```powershell
Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"
```

إعادة تعيين تكوين WireGuard لاسم حاوية مخصص دون مطالبات تأكيد.

## Parameter Details

### `-ContainerName <String>`

> اسم حاوية Docker

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

> اسم حجم Docker للتخزين الدائم

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

> رقم المنفذ لخدمة WireGuard

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

> الحد الأقصى للوقت بالثواني لانتظار فحص خدمة الصحة

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

> الفترة الزمنية بالثواني بين محاولات فحص الصحة

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

> اسم صورة Docker المخصصة لاستخدامها

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

> معرف المستخدم للأذونات في الحاوية

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

> معرّف المجموعة للأذونات في الحاوية

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

> المنطقة الزمنية لاستخدام الحاوية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 8 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> تخطي تهيئة Docker (تُستخدم عندما يتم استدعاؤها بالفعل بواسطة دالة أصلية)

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

> إعادة تعيين قسري بدون تأكيد

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-WireGuardPeer.md)
