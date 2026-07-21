# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces`

## Synopsis

> يقوم بتحديث جميع ملفات التعرف على الوجوه من ملفات الصور في دليل الوجوه.

## Description

تقوم هذه الوظيفة بتحديث قاعدة بيانات التعرف على الوجوه بجميع الصور الموجودة في دليل الوجوه المحدد. تتضمن العملية ما يلي:
1. التأكد من أن خدمة التعرف على الوجوه قيد التشغيل
2. معالجة جميع الصور في مجلد كل شخص، وتسجيل جميع الوجوه لذلك الشخص بمعرف واحد (اسم المجلد) في عملية دفعة واحدة
3. دعم منطق إعادة المحاولة للعمليات الفاشلة

يمكن أن يحتوي مجلد كل شخص على صور متعددة، وسيتم تسجيل جميع الصور تحت نفس المعرف (اسم الشخص) في استدعاء API واحد، مما يلغي الحاجة إلى اللواحق مثل _1، _2، إلخ.

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | المجلد الذي يحتوي على صور الوجوه منظمة في مجلدات حسب الأشخاص. إذا لم يتم تحديده، يستخدم تفضيل مجلد الوجوه المكون. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | الحد الأقصى لعدد محاولات إعادة التسجيل للطلبات الفاشلة |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | اسم حاوية Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | اسم حجم Docker للتخزين الدائم |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | رقم المنفذ لخدمة DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | الحد الأقصى للوقت بالثواني لانتظار فحص خدمة الصحة |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | الفترة الزمنية بالثواني بين محاولات فحص الصحة |
| `-ImageName` | String | — | — | 7 | — | اسم صورة Docker المخصصة لاستخدامها |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | تجاوز تهيئة سطح المكتب لـ Docker (تُستخدم عند استدعائها بالفعل بواسطة الوظيفة الأم) |
| `-Force` | SwitchParameter | — | — | Named | — | إعادة تسجيل جميع الوجوه قسرًا |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | إعادة تسمية ملفات الصور الفاشلة التي لم تتم معالجتها بسبب عدم وجود وجه |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | إعادة بناء حاوية Docker بالقوة وإزالة البيانات الموجودة |
| `-UseGPU` | SwitchParameter | — | — | Named | — | استخدم الإصدار المسرع بواسطة وحدة معالجة الرسومات (يتطلب بطاقة رسوميات NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | عرض نافذة Docker Desktop أثناء التهيئة |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | إذا تم التحديد، استخدم الجلسة فقط (لا تحفظ التغييرات في قاعدة بيانات التفضيلات). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | إذا تم التحديد، قم بمسح تفضيلات الجلسة الحالية قبل الاستخدام. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | المسار إلى قاعدة بيانات التفضيلات لاستخدامها في المسار الجذر للوجوه المعروفة. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | إذا تم التحديد، فتجاوز منطق الجلسة عند استرداد المسار الجذر للوجوه المعروفة. |

## Examples

### Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `     -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `     -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3

```powershell
Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `
    -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `
    -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3
```

### Register-AllFaces Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"

```powershell
Register-AllFaces
Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"
```

### updatefaces -RenameFailed ##############################################################################

```powershell
updatefaces -RenameFailed
##############################################################################
```

## Parameter Details

### `-FacesDirectory <String>`

> المجلد الذي يحتوي على صور الوجوه منظمة في مجلدات حسب الأشخاص. إذا لم يتم تحديده، يستخدم تفضيل مجلد الوجوه المكون.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> الحد الأقصى لعدد محاولات إعادة التسجيل للطلبات الفاشلة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> اسم حاوية Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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
| **Position?** | 3 |
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
| **Position?** | 4 |
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
| **Position?** | 5 |
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
| **Position?** | 6 |
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
| **Position?** | 7 |
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
### `-Force`

> إعادة تسجيل جميع الوجوه قسرًا

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RenameFailed`

> إعادة تسمية ملفات الصور الفاشلة التي لم تتم معالجتها بسبب عدم وجود وجه

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
### `-SessionOnly`

> إذا تم التحديد، استخدم الجلسة فقط (لا تحفظ التغييرات في قاعدة بيانات التفضيلات).

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

> إذا تم التحديد، قم بمسح تفضيلات الجلسة الحالية قبل الاستخدام.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> المسار إلى قاعدة بيانات التفضيلات لاستخدامها في المسار الجذر للوجوه المعروفة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> إذا تم التحديد، فتجاوز منطق الجلسة عند استرداد المسار الجذر للوجوه المعروفة.

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

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageEnhancement.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Unregister-Face.md)
