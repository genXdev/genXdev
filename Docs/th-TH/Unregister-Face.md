# Unregister-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> ลบใบหน้าที่ลงทะเบียนแล้วโดยใช้รหัสประจำตัวจาก DeepStack

## Description

ฟังก์ชันนี้จะลบใบหน้าออกจากระบบจดจำใบหน้าของ DeepStack โดยใช้
ตัวระบุเฉพาะของมัน ฟังก์ชันจะสื่อสารกับปลายทาง API เพื่อลบ
ข้อมูลใบหน้าที่ลงทะเบียนออกจากระบบอย่างถาวร

## Syntax

```powershell
Unregister-Face -Identifier <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | ตัวระบุที่ไม่ซ้ำกันของใบหน้าที่จะลบออกจากระบบ DeepStack |
| `-ContainerName` | String | — | — | 1 | `'deepstack_face_recognition'` | ชื่อสำหรับคอนเทนเนอร์ Docker |
| `-VolumeName` | String | — | — | 2 | `'deepstack_face_data'` | ชื่อของวอลุ่ม Docker สำหรับที่เก็บข้อมูลแบบถาวร |
| `-ServicePort` | Int32 | — | — | 3 | `5000` | หมายเลขพอร์ตสำหรับบริการ DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 4 | `60` | เวลาสูงสุดในหน่วยวินาทีที่รอการตรวจสอบสถานะบริการ |
| `-HealthCheckInterval` | Int32 | — | — | 5 | `3` | ช่วงเวลาเป็นวินาทีระหว่างการตรวจสอบสถานะ |
| `-ImageName` | String | — | — | 6 | — | ชื่ออิมเมจ Docker ที่กำหนดเองที่จะใช้ |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | ข้ามการเริ่มต้น Docker (ใช้เมื่อถูกเรียกจากฟังก์ชันหลักอยู่แล้ว) |
| `-Force` | SwitchParameter | — | — | Named | — | บังคับสร้าง Docker container ใหม่และลบข้อมูลที่มีอยู่ |
| `-UseGPU` | SwitchParameter | — | — | Named | — | ใช้เวอร์ชันที่เร่งด้วย GPU (ต้องใช้ GPU ของ NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | แสดงหน้าต่าง Docker Desktop ระหว่างการเริ่มต้นระบบ |

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

> ตัวระบุที่ไม่ซ้ำกันของใบหน้าที่จะลบออกจากระบบ DeepStack

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

> ชื่อสำหรับคอนเทนเนอร์ Docker

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

> ชื่อของวอลุ่ม Docker สำหรับที่เก็บข้อมูลแบบถาวร

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

> หมายเลขพอร์ตสำหรับบริการ DeepStack

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

> เวลาสูงสุดในหน่วยวินาทีที่รอการตรวจสอบสถานะบริการ

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

> ช่วงเวลาเป็นวินาทีระหว่างการตรวจสอบสถานะ

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

> ชื่ออิมเมจ Docker ที่กำหนดเองที่จะใช้

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

> ข้ามการเริ่มต้น Docker (ใช้เมื่อถูกเรียกจากฟังก์ชันหลักอยู่แล้ว)

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

> บังคับสร้าง Docker container ใหม่และลบข้อมูลที่มีอยู่

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

> ใช้เวอร์ชันที่เร่งด้วย GPU (ต้องใช้ GPU ของ NVIDIA)

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

> แสดงหน้าต่าง Docker Desktop ระหว่างการเริ่มต้นระบบ

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

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Unregister-AllFaces.md)
