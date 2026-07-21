# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> يزيل جميع الوجوه المسجلة من نظام التعرف على الوجوه DeepStack.

## Description

تقوم هذه الوظيفة بمسح جميع الوجوه المسجلة من قاعدة بيانات التعرف على الوجوه في DeepStack عن طريق إزالة جميع ملفات الوجوه من دليل تخزين البيانات وإعادة تشغيل الخدمة لتحميل سجل وجوه فارغ. هذه عملية تدميرية لا يمكن التراجع عنها وستؤدي إلى إزالة جميع بيانات الوجوه المسجلة بشكل دائم.

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | تجاوز مطالبات التأكيد عند إزالة جميع الوجوه المسجلة |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | تجاوز تهيئة سطح المكتب لـ Docker (تُستخدم عند استدعائها بالفعل بواسطة الوظيفة الأم) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | إعادة بناء حاوية Docker بالقوة وإزالة البيانات الموجودة |
| `-UseGPU` | SwitchParameter | — | — | Named | — | استخدم الإصدار المسرع بواسطة وحدة معالجة الرسومات (يتطلب بطاقة رسوميات NVIDIA) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | اسم حاوية Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | اسم حجم Docker للتخزين الدائم |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | رقم المنفذ لخدمة DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | الحد الأقصى للوقت بالثواني لانتظار فحص خدمة الصحة |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | الفترة الزمنية بالثواني بين محاولات فحص الصحة |
| `-ImageName` | String | — | — | 5 | — | اسم صورة Docker المخصصة لاستخدامها |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | عرض نافذة Docker Desktop أثناء التهيئة |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

يزيل جميع الوجوه المسجلة مع طلب تأكيد.

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

يزيل جميع الوجوه المسجلة بدون طلب تأكيد.

### unregall -Force

```powershell
unregall -Force
```

استخدام الاسم المستعار لإزالة جميع الوجوه دون تأكيد.

## Parameter Details

### `-Force`

> تجاوز مطالبات التأكيد عند إزالة جميع الوجوه المسجلة

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

> تجاوز تهيئة سطح المكتب لـ Docker (تُستخدم عند استدعائها بالفعل بواسطة الوظيفة الأم)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceRebuild`

> إعادة بناء حاوية Docker بالقوة وإزالة البيانات الموجودة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseGPU`

> استخدم الإصدار المسرع بواسطة وحدة معالجة الرسومات (يتطلب بطاقة رسوميات NVIDIA)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> اسم حاوية Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'deepstack_face_recognition'` |
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
| **Default value** | `'deepstack_face_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> رقم المنفذ لخدمة DeepStack

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `5000` |
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
| **Default value** | *(none)* |
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
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Register-Face.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Unregister-Face.md)
