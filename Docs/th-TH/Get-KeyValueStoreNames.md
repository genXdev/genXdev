# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> ดึงชื่อของที่เก็บคีย์-ค่าที่มีอยู่

## Description

* สแกนไดเรกทอรีคีย์-ค่าสำหรับไฟล์ JSON และดึงชื่อสโตร์ที่ไม่ซ้ำกันตามรูปแบบคีย์การซิงโครไนซ์ที่ระบุ
* รับประกันว่าไดเรกทอรีสโตร์มีอยู่และซิงโครไนซ์สโตร์ที่ไม่ใช่ในเครื่องหากจำเป็น

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | คีย์สำหรับระบุขอบเขตการซิงโครไนซ์ ค่าเริ่มต้นคือทั้งหมด |
| `-DatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลที่เก็บค่าแบบคีย์-ค่า |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

ดึงชื่อร้านค้าทั้งหมดจากตำแหน่งเริ่มต้น

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

ดึงชื่อร้านค้าสำหรับขอบเขตการซิงค์ 'Local'

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

ดึงชื่อร้านค้าทั้งหมดจากเส้นทางฐานข้อมูลที่กำหนดเองโดยใช้นามแฝง

## Parameter Details

### `-SynchronizationKey <String>`

> คีย์สำหรับระบุขอบเขตการซิงโครไนซ์ ค่าเริ่มต้นคือทั้งหมด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Sync-KeyValueStore.md)
