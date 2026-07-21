# Get-SQLServerTableData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> एक SQL डेटाबेस तालिका से वैकल्पिक रिकॉर्ड सीमित करने के साथ डेटा प्राप्त करता है।

## Description

यह फ़ंक्शन SQL डेटाबेस तालिका से डेटा क्वेरी करता है, या तो कनेक्शन स्ट्रिंग या डेटाबेस फ़ाइल पथ का उपयोग करके। यह डेटाबेस से कनेक्ट करने और Count पैरामीटर के माध्यम से प्राप्त डेटा की मात्रा को नियंत्रित करने में लचीलापन प्रदान करता है।

## Syntax

```powershell
Get-SQLServerTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL सर्वर डेटाबेस के लिए कनेक्शन स्ट्रिंग। *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server डेटाबेस का नाम। *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL सर्वर इंस्टेंस का नाम। *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | डेटा क्वेरी करने के लिए तालिका का नाम। |
| `-Count` | Int32 | — | — | 3 | `100` | वापस करने के लिए रिकॉर्ड की अधिकतम संख्या। सभी के लिए -1। |

## Examples

### Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

```powershell
Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50
```

### Get-SQLServerTableData "C:\data\users.db" "Employees"

```powershell
Get-SQLServerTableData "C:\data\users.db" "Employees"
```

## Parameter Details

### `-ConnectionString <String>`

> SQL सर्वर डेटाबेस के लिए कनेक्शन स्ट्रिंग।

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
### `-DatabaseName <String>`

> SQL Server डेटाबेस का नाम।

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-Server <String>`

> SQL सर्वर इंस्टेंस का नाम।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'localhost'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-TableName <String>`

> डेटा क्वेरी करने के लिए तालिका का नाम।

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

> वापस करने के लिए रिकॉर्ड की अधिकतम संख्या। सभी के लिए -1।

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

- [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerSchema.md)
- [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerTableColumnData.md)
- [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerTables.md)
- [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerTableSchema.md)
- [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerTransaction.md)
- [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerViewColumnData.md)
- [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerViewData.md)
- [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerViews.md)
- [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerViewSchema.md)
- [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-SQLServerQuery.md)
- [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-SSMS.md)
- [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-SQLServerDatabase.md)
