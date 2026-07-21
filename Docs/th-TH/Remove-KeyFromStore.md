# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey`

## Synopsis

> ลบคีย์ออกจากพื้นที่จัดเก็บคีย์-ค่า

## Description

ฟังก์ชันนี้จะลบคีย์ที่ระบุออกจากที่จัดเก็บคีย์-ค่าที่มีชื่อ สำหรับที่จัดเก็บในเครื่อง คีย์จะถูกลบอย่างถาวร สำหรับที่จัดเก็บที่ซิงค์ คีย์จะถูกทำเครื่องหมายว่าถูกลบเพื่อให้สามารถซิงค์ได้

## Syntax

```powershell
Remove-KeyFromStore -StoreName <String> -KeyName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | ชื่อของร้านค้า |
| `-KeyName` | String | ✅ | — | 1 | — | คีย์ที่จะลบ |
| `-SynchronizationKey` | String | — | — | 2 | — | คีย์สำหรับระบุขอบเขตการซิงค์ |
| `-DatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลที่เก็บค่าแบบคีย์-ค่า |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

ลบคีย์ "MyKey" ออกจากสโตร์ "MyStore"

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

ลบคีย์โดยใช้นามแฝง

## Parameter Details

### `-StoreName <String>`

> ชื่อของร้านค้า

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

> คีย์ที่จะลบ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
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
| **Position?** | 2 |
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
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Initialize-KeyValueStores.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Sync-KeyValueStore.md)
