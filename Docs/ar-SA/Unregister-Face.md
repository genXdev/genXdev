# Unregister-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> يقوم بحذف وجه مسجل حسب معرفه من DeepStack.

## Description

تحذف هذه الدالة وجهًا من نظام التعرف على الوجوه في DeepStack باستخدام معرفه الفريد. تتواصل مع نقطة نهاية API لإزالة بيانات الوجه المسجلة من النظام بشكل دائم.

## Syntax

```powershell
Unregister-Face -Identifier <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | المعرف الفريد للوجه المراد حذفه من نظام DeepStack |
| `-ContainerName` | String | — | — | 1 | `'deepstack_face_recognition'` | اسم حاوية Docker |
| `-VolumeName` | String | — | — | 2 | `'deepstack_face_data'` | اسم حجم Docker للتخزين الدائم |
| `-ServicePort` | Int32 | — | — | 3 | `5000` | رقم المنفذ لخدمة DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 4 | `60` | الحد الأقصى للوقت بالثواني لانتظار فحص خدمة الصحة |
| `-HealthCheckInterval` | Int32 | — | — | 5 | `3` | الفترة الزمنية بالثواني بين محاولات فحص الصحة |
| `-ImageName` | String | — | — | 6 | — | اسم صورة Docker المخصصة لاستخدامها |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | تخطي تهيئة Docker (تُستخدم عندما يتم استدعاؤها بالفعل بواسطة دالة أصلية) |
| `-Force` | SwitchParameter | — | — | Named | — | إعادة بناء حاوية Docker بالقوة وإزالة البيانات الموجودة |
| `-UseGPU` | SwitchParameter | — | — | Named | — | استخدم الإصدار المسرع بواسطة وحدة معالجة الرسومات (يتطلب بطاقة رسوميات NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | عرض نافذة Docker Desktop أثناء التهيئة |

## Examples

### Unregister-Face -Identifier "JohnDoe" -NoDockerInitialize $false `     -ContainerName "deepstack_face_recognition" -ServicePort 5000

```powershell
Unregister-Face -Identifier "JohnDoe" -NoDockerInitialize $false `
    -ContainerName "deepstack_face_recognition" -ServicePort 5000
```

### rface "JohnDoe"

```powershell
rface "JohnDoe"
```

## Parameter Details

### `-Identifier <String>`

> المعرف الفريد للوجه المراد حذفه من نظام DeepStack

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> اسم حاوية Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
| **Position?** | 2 |
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
| **Position?** | 3 |
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
| **Position?** | 4 |
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
| **Position?** | 5 |
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
| **Position?** | 6 |
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
## Outputs

- `Boolean`

## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Unregister-AllFaces.md)
