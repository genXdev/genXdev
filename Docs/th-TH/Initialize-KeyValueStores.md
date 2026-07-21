# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> เริ่มต้นโครงสร้างไดเรกทอรี KeyValueStore สำหรับจัดเก็บในเครื่องและ OneDrive

## Description

สร้างโครงสร้างไดเรกทอรีสำหรับที่เก็บข้อมูลคีย์-ค่าแบบ JSON ในสองตำแหน่ง: เครื่องท้องถิ่นสำหรับการเข้าถึงทันทีและโฟลเดอร์ OneDrive สำหรับการซิงโครไนซ์บนคลาวด์ cmdlet นี้รับประกันว่าไดเรกทอรีทั้งสองมีอยู่และได้รับการกำหนดค่าอย่างถูกต้อง

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลที่เก็บค่าแบบคีย์-ค่า |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

สร้างไดเรกทอรีมาตรฐานในเครื่องและ OneDrive สำหรับที่เก็บข้อมูลคู่คีย์-ค่า

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

สร้างไดเรกทอรีที่เก็บคู่คีย์-ค่าภายใต้พาธที่กำหนดเองที่ระบุ

## Parameter Details

### `-DatabasePath <String>`

> เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลที่เก็บค่าแบบคีย์-ค่า

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ValueByKeyFromStore.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Sync-KeyValueStore.md)
