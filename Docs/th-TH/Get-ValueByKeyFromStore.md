# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue`

## Synopsis

> ดึงค่าจากที่จัดเก็บข้อมูลแบบคีย์-ค่าที่ใช้ JSON

## Description

* ดึงค่าสำหรับคีย์ที่ระบุจากที่เก็บคีย์-ค่าที่ใช้ไฟล์ JSON
* รองรับค่าเริ่มต้นที่เป็นตัวเลือกและการซิงค์ระหว่างขอบเขตต่างๆ
* มีการเริ่มต้นไดเรกทอรีและการซิงค์อัตโนมัติ

## Syntax

```powershell
Get-ValueByKeyFromStore -StoreName <String> -KeyName <String> [[-DefaultValue] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | ชื่อของร้านค้าที่จะดึงคีย์มา |
| `-KeyName` | String | ✅ | — | 1 | — | คีย์ที่ต้องการดึงจากร้านที่ระบุ |
| `-DefaultValue` | String | — | — | 2 | — | ค่าที่ตั้งค่าเริ่มต้นแบบไม่บังคับ |
| `-SynchronizationKey` | String | — | — | 3 | — | คีย์สำหรับระบุขอบเขตการซิงค์ |
| `-DatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลที่เก็บค่าแบบคีย์-ค่า |

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

ดึงค่า "Theme" จาก "AppSettings" โดยคืนค่า "Dark" หากไม่พบ

### Example 2

```powershell
getvalue AppSettings Theme
```

ใช้นามแฝง 'getvalue' เพื่อดึงค่ากลับมา

## Parameter Details

### `-StoreName <String>`

> ชื่อของร้านค้าที่จะดึงคีย์มา

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeyName <String>`

> คีย์ที่ต้องการดึงจากร้านที่ระบุ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> ค่าที่ตั้งค่าเริ่มต้นแบบไม่บังคับ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> คีย์สำหรับระบุขอบเขตการซิงค์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
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
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-StoreKeys.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Sync-KeyValueStore.md)
