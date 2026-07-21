# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> จัดการแคชการแปลแบบถาวรด้วยการเขียนดิสก์แบบกลุ่มตามภาษา

## Description

รักษาแคชหน่วยความจำในขอบเขตโมดูลสำหรับ Get-TextTranslation แคชจะถูกแบ่งเป็นไฟล์ JSON ตามภาษาในโฟลเดอร์ $env:LOCALAPPDATA\GenXdev.PowerShell\ การเรียกเพื่อเพิ่มรายการจะถูกจัดกลุ่ม — การเขียนลงดิสก์จะเกิดขึ้นทุกๆ 100 การเปลี่ยนแปลงต่อภาษา หรือเมื่อเรียก -PersistNow -PersistNow ยังล้างแคชในหน่วยความจำเพื่อป้องกันการเติบโตเกินขอบเขตข้ามชุดการประมวลผล

## Syntax

```powershell
Merge-TranslationCache [-GetCache] [<CommonParameters>]

Merge-TranslationCache -Key <String> -Language <String> -Value <String> [<CommonParameters>]

Merge-TranslationCache -PersistNow [<CommonParameters>]

Merge-TranslationCache -ClearCache [<CommonParameters>]

Merge-TranslationCache -PurgeFromCache [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-GetCache` | SwitchParameter | — | — | Named | — | ส่งกลับตารางแคชในหน่วยความจำ *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | รหัสภาษา BCP 47 สำหรับรายการในแคช *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | .SYNOPSIS
    ส่ง Ping ไปยังคอมพิวเตอร์เครื่องอื่น

.DESCRIPTION
    cmdlet Test-Connection จะส่งข้อความคำขอ echo protocol ICMP (Ping) ไปยังคอมพิวเตอร์เครื่องใดเครื่องหนึ่งหรือหลายเครื่อง และส่งกลับการตอบรับ echo reply ซึ่งสามารถใช้ cmdlet นี้เพื่อตรวจสอบว่าคอมพิวเตอร์ใดเครื่องหนึ่งสามารถเข้าถึงได้ผ่านเครือข่ายหรือไม่

.PARAMETER ComputerName
    ระบุคอมพิวเตอร์ที่จะทำการ Ping ซึ่งใช้ชื่อ NetBIOS, ที่อยู่ IP, หรือชื่อ FQDN (Fully Qualified Domain Name) ได้

.PARAMETER Count
    ระบุจำนวนครั้งที่ต้องการ Ping ค่าเริ่มต้นคือ 3

.EXAMPLE
    PS C:\> Test-Connection -ComputerName Server01

    คำสั่งนี้ส่ง Ping ไปยังคอมพิวเตอร์ Server01 *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | . สรุป
Cmdlet ช่วยให้คุณสามารถสร้างและกำหนดค่าเครื่องเสมือน Azure โดยใช้ PowerShell หรือ Azure CLI

คำอธิบาย
Cmdlet New-AzVMConfig สร้างอ็อบเจกต์การกำหนดค่าเครื่องเสมือนที่ปรับแต่งได้ในหน่วยความจำ อ็อบเจกต์นี้ใช้เป็นอินพุตสำหรับ cmdlet New-AzVM เมื่อคุณต้องการปรับใช้หรืออัปเดตเครื่องเสมือน New-AzVMConfig ช่วยให้คุณตั้งค่าคุณสมบัติต่างๆ เช่น ขนาด โซนความพร้อมใช้งาน การตั้งค่าเครือข่าย และอื่นๆ

พารามิเตอร์
-ResourceGroupName <String>
ชื่อของกลุ่มทรัพยากรที่มีเครื่องเสมือนอยู่

-Name <String>
ชื่อของเครื่องเสมือน ชื่อไม่ควรขึ้นต้นด้วยขีดล่างและไม่ควรมีอักขระพิเศษหรือช่องว่าง

-Location <String>
ตำแหน่ง Azure สำหรับเครื่องเสมือน

-Size <String>
ขนาดของเครื่องเสมือน ค่าเริ่มต้นคือ Standard_DS1_v2

-Zone <String[]>
โซนความพร้อมใช้งานสำหรับเครื่องเสมือนเพื่อให้เกิดความซ้ำซ้อน

-SubnetName <String>
ชื่อของซับเน็ตที่เชื่อมต่ออินเทอร์เฟซเครือข่าย

-PublicIpAddressName <String>
ชื่อของที่อยู่ IP สาธารณะ

-SecurityGroupName <String>
ชื่อของกลุ่มความปลอดภัยเครือข่าย

-DataDiskSizeInGb <Int32[]>
ขนาดของดิสก์ข้อมูลเป็น GB

-Linux
ระบุว่าระบบปฏิบัติการคือ Linux

-Windows
ระบุว่าระบบปฏิบัติการคือ Windows *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | เขียนแคชที่สกปรกทั้งหมดลงดิสก์และล้างหน่วยความจำ *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | ล้างแคชในหน่วยความจำและลบไฟล์ดิสก์ทั้งหมด *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | ลบรายการที่ไม่ได้แปลออกจากแคชภาษาทั้งหมดบนดิสก์ *(Parameter set: )* |

## Examples

### $cache = Merge-TranslationCache -GetCache

```powershell
$cache = Merge-TranslationCache -GetCache
```

### Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'

```powershell
Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'
```

### Merge-TranslationCache -PersistNow

```powershell
Merge-TranslationCache -PersistNow
```

### Merge-TranslationCache -PurgeFromCache

```powershell
Merge-TranslationCache -PurgeFromCache
```

## Parameter Details

### `-GetCache`

> ส่งกลับตารางแคชในหน่วยความจำ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Get |

<hr/>
### `-Language <String>`

> รหัสภาษา BCP 47 สำหรับรายการในแคช

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Key <String>`

> .SYNOPSIS
    ส่ง Ping ไปยังคอมพิวเตอร์เครื่องอื่น

.DESCRIPTION
    cmdlet Test-Connection จะส่งข้อความคำขอ echo protocol ICMP (Ping) ไปยังคอมพิวเตอร์เครื่องใดเครื่องหนึ่งหรือหลายเครื่อง และส่งกลับการตอบรับ echo reply ซึ่งสามารถใช้ cmdlet นี้เพื่อตรวจสอบว่าคอมพิวเตอร์ใดเครื่องหนึ่งสามารถเข้าถึงได้ผ่านเครือข่ายหรือไม่

.PARAMETER ComputerName
    ระบุคอมพิวเตอร์ที่จะทำการ Ping ซึ่งใช้ชื่อ NetBIOS, ที่อยู่ IP, หรือชื่อ FQDN (Fully Qualified Domain Name) ได้

.PARAMETER Count
    ระบุจำนวนครั้งที่ต้องการ Ping ค่าเริ่มต้นคือ 3

.EXAMPLE
    PS C:\> Test-Connection -ComputerName Server01

    คำสั่งนี้ส่ง Ping ไปยังคอมพิวเตอร์ Server01

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Value <String>`

> . สรุป
Cmdlet ช่วยให้คุณสามารถสร้างและกำหนดค่าเครื่องเสมือน Azure โดยใช้ PowerShell หรือ Azure CLI

คำอธิบาย
Cmdlet New-AzVMConfig สร้างอ็อบเจกต์การกำหนดค่าเครื่องเสมือนที่ปรับแต่งได้ในหน่วยความจำ อ็อบเจกต์นี้ใช้เป็นอินพุตสำหรับ cmdlet New-AzVM เมื่อคุณต้องการปรับใช้หรืออัปเดตเครื่องเสมือน New-AzVMConfig ช่วยให้คุณตั้งค่าคุณสมบัติต่างๆ เช่น ขนาด โซนความพร้อมใช้งาน การตั้งค่าเครือข่าย และอื่นๆ

พารามิเตอร์
-ResourceGroupName <String>
ชื่อของกลุ่มทรัพยากรที่มีเครื่องเสมือนอยู่

-Name <String>
ชื่อของเครื่องเสมือน ชื่อไม่ควรขึ้นต้นด้วยขีดล่างและไม่ควรมีอักขระพิเศษหรือช่องว่าง

-Location <String>
ตำแหน่ง Azure สำหรับเครื่องเสมือน

-Size <String>
ขนาดของเครื่องเสมือน ค่าเริ่มต้นคือ Standard_DS1_v2

-Zone <String[]>
โซนความพร้อมใช้งานสำหรับเครื่องเสมือนเพื่อให้เกิดความซ้ำซ้อน

-SubnetName <String>
ชื่อของซับเน็ตที่เชื่อมต่ออินเทอร์เฟซเครือข่าย

-PublicIpAddressName <String>
ชื่อของที่อยู่ IP สาธารณะ

-SecurityGroupName <String>
ชื่อของกลุ่มความปลอดภัยเครือข่าย

-DataDiskSizeInGb <Int32[]>
ขนาดของดิสก์ข้อมูลเป็น GB

-Linux
ระบุว่าระบบปฏิบัติการคือ Linux

-Windows
ระบุว่าระบบปฏิบัติการคือ Windows

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-PersistNow`

> เขียนแคชที่สกปรกทั้งหมดลงดิสก์และล้างหน่วยความจำ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Persist |

<hr/>
### `-ClearCache`

> ล้างแคชในหน่วยความจำและลบไฟล์ดิสก์ทั้งหมด

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Clear |

<hr/>
### `-PurgeFromCache`

> ลบรายการที่ไม่ได้แปลออกจากแคชภาษาทั้งหมดบนดิสก์

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Purge |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-WinMerge.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-DeepLinkImageFile.md)
