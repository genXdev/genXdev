# EnsureWireGuard

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> يضمن تثبيت خدمة WireGuard VPN وتشغيلها عبر حاوية Docker.

## Description

تقوم هذه الوظيفة بإعداد وإدارة خدمة VPN الخاصة بـ WireGuard باستخدام Docker Desktop. تضمن تلقائيًا تشغيل Docker Desktop، وتسحب أحدث صورة Docker لـ WireGuard، وتُنشئ وحدات تخزين دائمة، وتُدير دورة حياة الحاوية بما في ذلك مراقبة الصحة وإمكانية إعادة التشغيل.

WireGuard هو VPN بسيط وسريع وحديث يستخدم أحدث التشفير. يوفر أداءً متفوقًا وبساطة مقارنة بحلول VPN التقليدية مثل OpenVPN، مع تكلفة إعداد قليلة ودعم ممتاز عبر المنصات.

## Syntax

```powershell
EnsureWireGuard [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
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
| `-ShowWindow` | SwitchParameter | — | — | Named | — | عرض نافذة Docker Desktop أثناء التهيئة |
| `-NoBorders` | SwitchParameter | — | — | Named | — | إزالة حدود النافذة |
| `-Width` | Int32 | — | — | Named | `-1` | العرض الأولي للنافذة |
| `-Height` | Int32 | — | — | Named | `-1` | الارتفاع الأولي للنافذة |
| `-Left` | SwitchParameter | — | — | Named | — | وضع النافذة على الجانب الأيسر من الشاشة |
| `-Right` | SwitchParameter | — | — | Named | — | وضع النافذة على الجانب الأيمن من الشاشة |
| `-Bottom` | SwitchParameter | — | — | Named | — | ضع النافذة على الجانب السفلي من الشاشة |
| `-Centered` | SwitchParameter | — | — | Named | — | وضع النافذة في وسط الشاشة |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | قم بتكبير النافذة |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | استعادة تركيز نافذة PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | سيؤدي ذلك إما إلى ضبط النافذة على وضع ملء الشاشة على شاشة مختلفة عن Powershell، أو وضعها جنباً إلى جنب مع Powershell على نفس الشاشة |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | تركيز النافذة بعد الفتح |
| `-SetForeground` | SwitchParameter | — | — | Named | — | تعيين النافذة إلى المقدمة بعد الفتح |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | قم بتجاوز أحرف التحكم والمعدلات عند إرسال المفاتيح |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | الحفاظ على تركيز لوحة المفاتيح على النافذة المستهدفة عند إرسال المفاتيح |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | استخدم Shift+Enter بدلاً من Enter عند إرسال المفاتيح |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | التأخير بين السلاسل النصية المختلفة عند إرسال المفاتيح بالمللي ثانية |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة |
| `-Force` | SwitchParameter | — | — | Named | — | إعادة بناء حاوية Docker بالقوة وإزالة البيانات الموجودة |

## Examples

### EnsureWireGuard

```powershell
EnsureWireGuard
```

### EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821

```powershell
EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821
```

### EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120

```powershell
EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120
```

### EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"

```powershell
EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"
```

### EnsureWireGuard -Force

```powershell
EnsureWireGuard -Force
```

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
### `-ShowWindow`

> عرض نافذة Docker Desktop أثناء التهيئة

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

> إزالة حدود النافذة

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

> العرض الأولي للنافذة

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

> الارتفاع الأولي للنافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> وضع النافذة على الجانب الأيسر من الشاشة

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

> وضع النافذة على الجانب الأيمن من الشاشة

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

> ضع النافذة على الجانب السفلي من الشاشة

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

> وضع النافذة في وسط الشاشة

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

> قم بتكبير النافذة

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

> استعادة تركيز نافذة PowerShell

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

> سيؤدي ذلك إما إلى ضبط النافذة على وضع ملء الشاشة على شاشة مختلفة عن Powershell، أو وضعها جنباً إلى جنب مع Powershell على نفس الشاشة

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

> تركيز النافذة بعد الفتح

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

> تعيين النافذة إلى المقدمة بعد الفتح

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

> قم بتجاوز أحرف التحكم والمعدلات عند إرسال المفاتيح

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

> الحفاظ على تركيز لوحة المفاتيح على النافذة المستهدفة عند إرسال المفاتيح

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

> استخدم Shift+Enter بدلاً من Enter عند إرسال المفاتيح

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

> التأخير بين السلاسل النصية المختلفة عند إرسال المفاتيح بالمللي ثانية

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

> استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي

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

> مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي

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

> تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
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
## Outputs

- `Boolean`

## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-WireGuardPeer.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Reset-WireGuardConfiguration.md)
