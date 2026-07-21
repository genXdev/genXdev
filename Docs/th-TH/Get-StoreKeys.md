# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys`

## Synopsis

> ดึงชื่อคีย์ทั้งหมดสำหรับที่เก็บคีย์-ค่าที่กำหนด

## Description

* ค้นหาไฟล์ JSON ของ KeyValueStore เพื่อดึงคีย์ที่ใช้งานอยู่ (ไม่ถูกลบ) ทั้งหมดสำหรับ store ที่ระบุ
* สามารถกรองตามขอบเขตการซิงค์ได้ตามต้องการ
* เริ่มต้นโครงสร้างไดเรกทอรีโดยอัตโนมัติหากไม่พบ และจัดการการซิงค์สำหรับ store ที่ไม่ใช่ภายในระบบ

## Syntax

```powershell
Get-StoreKeys -StoreName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | ชื่อของสโตร์ที่ควรเรียกคีย์ |
| `-SynchronizationKey` | String | — | — | 1 | — | คีย์สำหรับระบุขอบเขตการซิงโครไนซ์ ค่าเริ่มต้นคือทั้งหมด |
| `-DatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลที่เก็บค่าแบบคีย์-ค่า |

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

ดึงข้อมูลคีย์ทั้งหมดจากที่จัดเก็บ ApplicationSettings สำหรับขอบเขต Local

### Example 2

```powershell
getkeys AppSettings
```

เรียกคืนคีย์โดยใช้นามแฝง

## Parameter Details

### `-StoreName <String>`

> ชื่อของสโตร์ที่ควรเรียกคีย์

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> คีย์สำหรับระบุขอบเขตการซิงโครไนซ์ ค่าเริ่มต้นคือทั้งหมด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลที่เก็บค่าแบบคีย์-ค่า

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-KeyValueStorePath.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Sync-KeyValueStore.md)
