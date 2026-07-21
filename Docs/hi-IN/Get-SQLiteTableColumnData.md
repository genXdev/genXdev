# Get-SQLiteTableColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> SQLite डेटाबेस तालिका में किसी विशिष्ट स्तंभ से डेटा प्राप्त करता है।

## Description

यह फ़ंक्शन SQLite डेटाबेस तालिका में एक कॉलम से डेटा निकालने का एक सुविधाजनक तरीका प्रदान करता है। यह दो कनेक्शन विधियों का समर्थन करता है: प्रत्यक्ष डेटाबेस फ़ाइल पथ या कनेक्शन स्ट्रिंग। फ़ंक्शन में लौटाए गए रिकॉर्ड की संख्या सीमित करने के विकल्प शामिल हैं और इष्टतम प्रदर्शन के लिए उचित SQLite क्वेरी निर्माण का उपयोग करता है।

## Syntax

```powershell
Get-SQLiteTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite डेटाबेस के लिए कनेक्शन स्ट्रिंग *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite डेटाबेस फ़ाइल का पथ *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | क्वेरी करने के लिए तालिका का नाम |
| `-ColumnName` | String | ✅ | — | 2 | — | प्राप्त करने के लिए स्तंभ का नाम |
| `-Count` | Int32 | — | — | 3 | `100` | वापस करने के लिए रिकॉर्ड की संख्या। डिफ़ॉल्ट 100। सभी के लिए -1 का उपयोग करें |

## Examples

### Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Parameter Details

### `-ConnectionString <String>`

> SQLite डेटाबेस के लिए कनेक्शन स्ट्रिंग

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ConnectionString |

<hr/>
### `-DatabaseFilePath <String>`

> SQLite डेटाबेस फ़ाइल का पथ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseFilePath |

<hr/>
### `-TableName <String>`

> क्वेरी करने के लिए तालिका का नाम

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ColumnName <String>`

> प्राप्त करने के लिए स्तंभ का नाम

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Count <Int32>`

> वापस करने के लिए रिकॉर्ड की संख्या। डिफ़ॉल्ट 100। सभी के लिए -1 का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `100` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteSchema.md)
- [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteTableData.md)
- [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteTables.md)
- [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteTableSchema.md)
- [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteTransaction.md)
- [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteViewColumnData.md)
- [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteViewData.md)
- [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteViews.md)
- [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteViewSchema.md)
- [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-SQLiteQuery.md)
- [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-SQLiteStudio.md)
- [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-SQLiteDatabase.md)
