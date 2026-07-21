# Get-ImageDetectedFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> يتعرف على الوجوه في صورة مرفوعة من خلال مقارنتها بوجوه معروفة باستخدام DeepStack.

## Description

تقوم هذه الوظيفة بتحليل ملف صورة لتحديد الوجوه من خلال مقارنتها بالوجوه المعروفة في قاعدة البيانات. تستخدم واجهة برمجة تطبيقات DeepStack المحلية للتعرف على الوجوه والتي تعمل على منفذ قابل للتكوين، وتعيد مطابقات الوجوه مع درجات الثقة الخاصة بها. تدعم الوظيفة تسريع GPU، وعتبات ثقة مخصصة، وإدارة حاويات Docker.

## Syntax

```powershell
Get-ImageDetectedFaces -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | المسار المحلي لملف الصورة المراد تحليله |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.5` | الحد الأدنى لعتبة الثقة (0.0-1.0). القيمة الافتراضية هي 0.5 |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | اسم حاوية Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | اسم حجم Docker للتخزين الدائم |
| `-ServicePort` | Int32 | — | — | Named | `5000` | رقم المنفذ لخدمة DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | الحد الأقصى للوقت بالثواني لانتظار فحص خدمة الصحة |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | الفترة الزمنية بالثواني بين محاولات فحص الصحة |
| `-ImageName` | String | — | — | Named | — | اسم صورة Docker المخصصة لاستخدامها |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | تخطي تهيئة Docker (تُستخدم عندما يتم استدعاؤها بالفعل بواسطة دالة أصلية) |
| `-Force` | SwitchParameter | — | — | Named | — | إعادة بناء حاوية Docker بالقوة وإزالة البيانات الموجودة |
| `-UseGPU` | SwitchParameter | — | — | Named | — | استخدم الإصدار المسرع بواسطة وحدة معالجة الرسومات (يتطلب بطاقة رسوميات NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | عرض نافذة Docker Desktop أثناء التهيئة |

## Examples

### Get-ImageDetectedFaces -ImagePath "C:\Users\YourName\test.jpg" `                        -ConfidenceThreshold 0.5 `                        -ContainerName "deepstack_face_recognition" `                        -VolumeName "deepstack_face_data" `                        -ServicePort 5000 `                        -HealthCheckTimeout 60 `                        -HealthCheckInterval 3 Recognizes faces in the specified image using full parameter names.

```powershell
Get-ImageDetectedFaces -ImagePath "C:\Users\YourName\test.jpg" `
                       -ConfidenceThreshold 0.5 `
                       -ContainerName "deepstack_face_recognition" `
                       -VolumeName "deepstack_face_data" `
                       -ServicePort 5000 `
                       -HealthCheckTimeout 60 `
                       -HealthCheckInterval 3
Recognizes faces in the specified image using full parameter names.
```

### Get-ImageDetectedFaces "C:\photos\family.jpg" -Force -UseGPU Recognizes faces using positional parameter and aliases.

```powershell
Get-ImageDetectedFaces "C:\photos\family.jpg" -Force -UseGPU
Recognizes faces using positional parameter and aliases.
```

### "C:\Users\YourName\test.jpg" | Get-ImageDetectedFaces Recognizes faces using pipeline input.

```powershell
"C:\Users\YourName\test.jpg" | Get-ImageDetectedFaces
Recognizes faces using pipeline input.
```

## Parameter Details

### `-ImagePath <String>`

> المسار المحلي لملف الصورة المراد تحليله

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConfidenceThreshold <Double>`

> الحد الأدنى لعتبة الثقة (0.0-1.0). القيمة الافتراضية هي 0.5

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> اسم حاوية Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | *(none)* |
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
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Unregister-Face.md)
