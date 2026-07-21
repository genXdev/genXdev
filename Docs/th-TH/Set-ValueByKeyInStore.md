# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue`

## Synopsis

> จัดการคู่คีย์-ค่าในพื้นที่เก็บข้อมูลที่ใช้ไฟล์ JSON

## Description

จัดเก็บข้อมูลคู่คีย์-ค่าอย่างถาวรโดยใช้ไฟล์ JSON จัดการทั้งการเพิ่มรายการใหม่และการอัปเดตรายการที่มีอยู่ รองรับการซิงโครไนซ์แบบไม่บังคับสำหรับพื้นที่จัดเก็บที่ไม่ได้อยู่ในเครื่อง ฟังก์ชันนี้ดำเนินการ upsert ซึ่งจะแทรกคู่คีย์-ค่าใหม่หรืออัปเดตคู่ที่มีอยู่ตามการรวมกันของคีย์การซิงโครไนซ์ ชื่อพื้นที่จัดเก็บ และชื่อคีย์

## Syntax

```powershell
Set-ValueByKeyInStore -StoreName <String> -KeyName <String> [[-Value] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | ชื่อที่เก็บสำหรับคู่คีย์-ค่า |
| `-KeyName` | String | ✅ | — | 1 | — | ชื่อของคีย์ที่จะตั้งหรืออัปเดต |
| `-Value` | String | — | — | 2 | — | ค่าที่จะถูกจัดเก็บ |
| `-SynchronizationKey` | String | — | — | 3 | — | คีย์สำหรับระบุขอบเขตการซิงค์ |
| `-DatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลที่เก็บค่าแบบคีย์-ค่า |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

ตั้งค่าจุดสิ้นสุด API ใน ConfigStore

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

ใช้นามแฝงเพื่อตั้งค่า

## Parameter Details

### `-StoreName <String>`

> ชื่อที่เก็บสำหรับคู่คีย์-ค่า

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

> ชื่อของคีย์ที่จะตั้งหรืออัปเดต

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> ค่าที่จะถูกจัดเก็บ

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
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-KeyValueStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Sync-KeyValueStore.md)
