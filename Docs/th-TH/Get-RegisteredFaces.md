# Get-RegisteredFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> ดึงรายการของตัวระบุใบหน้าที่ลงทะเบียนทั้งหมดจาก DeepStack

## Description

ฟังก์ชันนี้เชื่อมต่อกับ API การรู้จำใบหน้า DeepStack ในเครื่องและดึงข้อมูล
ตัวระบุใบหน้าที่ลงทะเบียนทั้งหมด โดยใช้จุดสิ้นสุด /v1/vision/face/list เพื่อ
สอบถามบริการ DeepStack และส่งคืนอาร์เรย์ของสตริงตัวระบุใบหน้า ฟังก์ชัน
จัดการการเริ่มต้นคอนเทนเนอร์ Docker, การสื่อสาร API และการจัดการข้อผิดพลาด
สำหรับสถานการณ์ล้มเหลวต่างๆ

## Syntax

```powershell
Get-RegisteredFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | ข้ามการเริ่มต้น Docker (ใช้เมื่อถูกเรียกจากฟังก์ชันหลักอยู่แล้ว) |
| `-Force` | SwitchParameter | — | — | Named | — | บังคับสร้าง Docker container ใหม่และลบข้อมูลที่มีอยู่ |
| `-UseGPU` | SwitchParameter | — | — | Named | — | ใช้เวอร์ชันที่เร่งด้วย GPU (ต้องใช้ GPU ของ NVIDIA) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | ชื่อสำหรับคอนเทนเนอร์ Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | ชื่อของวอลุ่ม Docker สำหรับที่เก็บข้อมูลแบบถาวร |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | หมายเลขพอร์ตสำหรับบริการ DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | เวลาสูงสุดในหน่วยวินาทีที่รอการตรวจสอบสถานะบริการ |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | ช่วงเวลาเป็นวินาทีระหว่างการตรวจสอบสถานะ |
| `-ImageName` | String | — | — | 5 | — | ชื่ออิมเมจ Docker ที่กำหนดเองที่จะใช้ |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | แสดงหน้าต่าง Docker Desktop ระหว่างการเริ่มต้นระบบ |

## Examples

### Get-RegisteredFaces

```powershell
Get-RegisteredFaces
```

ตัวอย่างนี้ดึงข้อมูลใบหน้าที่ลงทะเบียนทั้งหมดโดยใช้พารามิเตอร์เริ่มต้น

### Get-RegisteredFaces -Force -UseGPU

```powershell
Get-RegisteredFaces -Force -UseGPU
```

ตัวอย่างนี้บังคับให้สร้างคอนเทนเนอร์ใหม่และใช้การเร่งความเร็วด้วย GPU

### Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080

```powershell
Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080
```

ตัวอย่างนี้ใช้ชื่อคอนเทนเนอร์และหมายเลขพอร์ตที่กำหนดเอง

### Get-RegisteredFaces | Where-Object { $_ -like "John*" }

```powershell
Get-RegisteredFaces |
Where-Object { $_ -like "John*" }
```

ตัวอย่างนี้ดึงใบหน้าทั้งหมดและกรองเฉพาะที่ขึ้นต้นด้วย "John"

## Parameter Details

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
### `-ContainerName <String>`

> ชื่อสำหรับคอนเทนเนอร์ Docker

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

> ชื่อของวอลุ่ม Docker สำหรับที่เก็บข้อมูลแบบถาวร

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

> หมายเลขพอร์ตสำหรับบริการ DeepStack

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

> เวลาสูงสุดในหน่วยวินาทีที่รอการตรวจสอบสถานะบริการ

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

> ช่วงเวลาเป็นวินาทีระหว่างการตรวจสอบสถานะ

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

> ชื่ออิมเมจ Docker ที่กำหนดเองที่จะใช้

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
## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageDetectedScenes.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Unregister-Face.md)
