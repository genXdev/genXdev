# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces`

## Synopsis

> อัปเดตโปรไฟล์การจดจำใบหน้าทั้งหมดจากไฟล์รูปภาพในไดเรกทอรี faces

## Description

ฟังก์ชันนี้ปรับปรุงฐานข้อมูลการจดจำใบหน้าด้วยรูปภาพทั้งหมดที่พบใน
ไดเรกทอรีใบหน้าที่ระบุ กระบวนการประกอบด้วย:
1. ตรวจสอบให้แน่ใจว่าบริการจดจำใบหน้าทำงานอยู่
2. ประมวลผลรูปภาพทั้งหมดในโฟลเดอร์ของแต่ละบุคคล ลงทะเบียนใบหน้าทั้งหมดสำหรับ
   บุคคลนั้นด้วยตัวระบุเดียว (ชื่อโฟลเดอร์) ในการดำเนินการแบบแบตช์
3. รองรับตรรกะการลองใหม่สำหรับการลงทะเบียนที่ล้มเหลว

โฟลเดอร์ของแต่ละบุคคลสามารถมีรูปภาพได้หลายรูป และรูปภาพทั้งหมดจะถูก
ลงทะเบียนภายใต้ตัวระบุเดียวกัน (ชื่อบุคคล) ในการเรียก API ครั้งเดียว
กำจัดความจำเป็นสำหรับคำต่อท้าย _1, _2 ฯลฯ

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | ไดเรกทอรีที่มีรูปภาพใบหน้าที่จัดเรียงตามโฟลเดอร์ของแต่ละบุคคล หากไม่ได้ระบุ จะใช้การตั้งค่าไดเรกทอรีใบหน้าที่กำหนดไว้ |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | จำนวนครั้งสูงสุดในการลองใหม่สำหรับการลงทะเบียนที่ล้มเหลว |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | ชื่อสำหรับคอนเทนเนอร์ Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | ชื่อของวอลุ่ม Docker สำหรับที่เก็บข้อมูลแบบถาวร |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | หมายเลขพอร์ตสำหรับบริการ DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | เวลาสูงสุดในหน่วยวินาทีที่รอการตรวจสอบสถานะบริการ |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | ช่วงเวลาเป็นวินาทีระหว่างการตรวจสอบสถานะ |
| `-ImageName` | String | — | — | 7 | — | ชื่ออิมเมจ Docker ที่กำหนดเองที่จะใช้ |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | ข้ามการเริ่มต้น Docker Desktop (ใช้เมื่อถูกเรียกจากฟังก์ชันหลักแล้ว) |
| `-Force` | SwitchParameter | — | — | Named | — | บังคับให้ลงทะเบียนใบหน้าใหม่ทั้งหมด |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | เปลี่ยนชื่อไฟล์ภาพที่ล้มเหลวในการประมวลผลเนื่องจากไม่พบใบหน้า |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | บังคับสร้าง Docker container ใหม่และลบข้อมูลที่มีอยู่ |
| `-UseGPU` | SwitchParameter | — | — | Named | — | ใช้เวอร์ชันที่เร่งด้วย GPU (ต้องใช้ GPU ของ NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | แสดงหน้าต่าง Docker Desktop ระหว่างการเริ่มต้นระบบ |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | หากระบุ ให้ใช้เฉพาะเซสชันเท่านั้น (อย่าบันทึกการเปลี่ยนแปลงลงในฐานข้อมูลการตั้งค่า) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | หากระบุ ให้ล้างการกำหนดลักษณะเซสชันปัจจุบันก่อนใช้งาน |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางไปยังฐานข้อมูลการตั้งค่าที่ใช้สำหรับพาธรูทของใบหน้าที่รู้จัก |
| `-SkipSession` | SwitchParameter | — | — | Named | — | หากระบุ ให้ข้ามตรรกะเซสชันเมื่อดึงเส้นทางรากของใบหน้าที่รู้จัก |

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

> ไดเรกทอรีที่มีรูปภาพใบหน้าที่จัดเรียงตามโฟลเดอร์ของแต่ละบุคคล หากไม่ได้ระบุ จะใช้การตั้งค่าไดเรกทอรีใบหน้าที่กำหนดไว้

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

> จำนวนครั้งสูงสุดในการลองใหม่สำหรับการลงทะเบียนที่ล้มเหลว

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

> ชื่อสำหรับคอนเทนเนอร์ Docker

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

> ชื่อของวอลุ่ม Docker สำหรับที่เก็บข้อมูลแบบถาวร

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

> หมายเลขพอร์ตสำหรับบริการ DeepStack

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

> เวลาสูงสุดในหน่วยวินาทีที่รอการตรวจสอบสถานะบริการ

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

> ช่วงเวลาเป็นวินาทีระหว่างการตรวจสอบสถานะ

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

> ชื่ออิมเมจ Docker ที่กำหนดเองที่จะใช้

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

> ข้ามการเริ่มต้น Docker Desktop (ใช้เมื่อถูกเรียกจากฟังก์ชันหลักแล้ว)

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

> บังคับให้ลงทะเบียนใบหน้าใหม่ทั้งหมด

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

> เปลี่ยนชื่อไฟล์ภาพที่ล้มเหลวในการประมวลผลเนื่องจากไม่พบใบหน้า

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

> บังคับสร้าง Docker container ใหม่และลบข้อมูลที่มีอยู่

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
### `-SessionOnly`

> หากระบุ ให้ใช้เฉพาะเซสชันเท่านั้น (อย่าบันทึกการเปลี่ยนแปลงลงในฐานข้อมูลการตั้งค่า)

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

> หากระบุ ให้ล้างการกำหนดลักษณะเซสชันปัจจุบันก่อนใช้งาน

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

> เส้นทางไปยังฐานข้อมูลการตั้งค่าที่ใช้สำหรับพาธรูทของใบหน้าที่รู้จัก

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

> หากระบุ ให้ข้ามตรรกะเซสชันเมื่อดึงเส้นทางรากของใบหน้าที่รู้จัก

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

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageEnhancement.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Unregister-Face.md)
