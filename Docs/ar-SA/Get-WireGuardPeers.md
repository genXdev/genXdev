# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> يحصل على معلومات حول جميع أقران WireGuard VPN المكونة على النظام.

## Description

تقوم هذه الوظيفة باسترجاع معلومات شاملة حول جميع نظراء WireGuard VPN المهيئين على الخادم الذي يعمل داخل حاوية Docker. توفر معلومات مفصلة تتضمن أسماء النظير، والمفاتيح العامة، وعناوين IP المسموح بها، ونقاط نهاية الاتصال، وحالة المصافحة، وإحصائيات نقل البيانات، وحالة الاتصال الحالية. يمكن للوظيفة العمل بالتنسيق مع الوظائف الأم أو إدارة تهيئة حاوية Docker بشكل مستقل.

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | تخطي تهيئة Docker (تُستخدم عندما يتم استدعاؤها بالفعل بواسطة دالة أصلية) |
| `-Force` | SwitchParameter | — | — | Named | — | إعادة بناء حاوية Docker بالقوة وإزالة البيانات الموجودة |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | اسم حاوية Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | اسم حجم Docker للتخزين الدائم |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | رقم المنفذ لخدمة WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | الحد الأقصى للوقت بالثواني لانتظار فحص خدمة الصحة |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | الفترة الزمنية بالثواني بين محاولات فحص الصحة |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | اسم صورة Docker المخصصة لاستخدامها |
| `-PUID` | String | — | — | 6 | `'1000'` | معرف المستخدم للأذونات في الحاوية |
| `-PGID` | String | — | — | 7 | `'1000'` | معرّف المجموعة للأذونات في الحاوية |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | المنطقة الزمنية لاستخدام الحاوية |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | اعرض نافذة Docker عند تشغيل WireGuard |
| `-NoBorders` | SwitchParameter | — | — | Named | — | إزالة حدود النافذة لنافذة Docker |
| `-Width` | Int32 | — | — | 9 | `-1` | تعيين عرض نافذة Docker |
| `-Height` | Int32 | — | — | 10 | `-1` | تعيين ارتفاع نافذة Docker |
| `-Left` | Int32 | — | — | 11 | — | تعيين الموضع الأيسر لنافذة Docker |
| `-Right` | Int32 | — | — | 12 | — | تعيين الموضع الصحيح لنافذة Docker |
| `-Bottom` | Int32 | — | — | 13 | — | تعيين الموضع السفلي لنافذة Docker |
| `-Centered` | SwitchParameter | — | — | Named | — | قم بتوسيط نافذة Docker على الشاشة |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | قم بتشغيل نافذة Docker في وضع ملء الشاشة |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | إعادة التركيز إلى النافذة السابقة بعد تشغيل Docker |
| `-SideBySide` | SwitchParameter | — | — | Named | — | عرض نافذة Docker جنبًا إلى جنب مع النوافذ الأخرى |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | توجيه نافذة Docker بعد التشغيل |
| `-SetForeground` | SwitchParameter | — | — | Named | — | تعيين نافذة Docker كنافذة أمامية |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | إرسال مفتاح Escape إلى نافذة Docker بعد الإطلاق |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | الاحتفاظ بتركيز لوحة المفاتيح في نافذة Docker بعد الإطلاق |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | استخدم Shift+Enter عند إرسال المفاتيح إلى نافذة Docker |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | التأخير بالمللي ثانية بين إرسال المفاتيح إلى نافذة Docker |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدام الجلسة فقط في نافذة Docker |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الجلسة لنافذة Docker قبل التشغيل |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخطي الجلسة لنافذة Docker |

## Examples

### Get-WireGuardPeers

```powershell
Get-WireGuardPeers
```

### Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `                    -ServicePort 55555

```powershell
Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `
                   -ServicePort 55555
```

## Parameter Details

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

> إعادة بناء حاوية Docker بالقوة وإزالة البيانات الموجودة

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
### `-ShowWindow`

> اعرض نافذة Docker عند تشغيل WireGuard

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

> إزالة حدود النافذة لنافذة Docker

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

> تعيين عرض نافذة Docker

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

> تعيين ارتفاع نافذة Docker

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

> تعيين الموضع الأيسر لنافذة Docker

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

> تعيين الموضع الصحيح لنافذة Docker

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

> تعيين الموضع السفلي لنافذة Docker

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

> قم بتوسيط نافذة Docker على الشاشة

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

> قم بتشغيل نافذة Docker في وضع ملء الشاشة

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

> إعادة التركيز إلى النافذة السابقة بعد تشغيل Docker

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

> عرض نافذة Docker جنبًا إلى جنب مع النوافذ الأخرى

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

> توجيه نافذة Docker بعد التشغيل

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

> تعيين نافذة Docker كنافذة أمامية

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

> إرسال مفتاح Escape إلى نافذة Docker بعد الإطلاق

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

> الاحتفاظ بتركيز لوحة المفاتيح في نافذة Docker بعد الإطلاق

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

> استخدم Shift+Enter عند إرسال المفاتيح إلى نافذة Docker

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

> التأخير بالمللي ثانية بين إرسال المفاتيح إلى نافذة Docker

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

> استخدام الجلسة فقط في نافذة Docker

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

> مسح الجلسة لنافذة Docker قبل التشغيل

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

> تخطي الجلسة لنافذة Docker

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

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Reset-WireGuardConfiguration.md)
