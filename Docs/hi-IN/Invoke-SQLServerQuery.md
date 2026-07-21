# Invoke-SQLServerQuery

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> लेन-देन समर्थन के साथ SQL Server डेटाबेस के विरुद्ध एक या अधिक SQL क्वेरी निष्पादित करता है।

## Description

SQL सर्वर डेटाबेस के विरुद्ध पैरामीटर समर्थन और कॉन्फ़िगरेबल लेनदेन अलगाव के साथ SQL क्वेरी निष्पादित करता है। बैच संचालन के लिए बाहरी लेनदेन का उपयोग कर सकता है या अपना स्वयं का आंतरिक लेनदेन बना सकता है। बाहरी लेनदेन का उपयोग करते समय, कॉल करने वाला कमिट/रोलबैक के लिए जिम्मेदार होता है। कनेक्शन प्राथमिकता: लेनदेन > कनेक्शनस्ट्रिंग > डेटाबेसनाम (सर्वर की आवश्यकता है)।

## Syntax

```powershell
Invoke-SQLServerQuery [[-Queries] <String[]>] [[-DatabaseName] <String>] [[-Server] <String>] [[-Transaction] <Object>] [[-ConnectionString] <String>] [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | निष्पादित करने के लिए क्वेरी या क्वेरीज़। |
| `-DatabaseName` | String | — | — | 1 | `'master'` | SQL Server डेटाबेस का नाम। |
| `-Server` | String | — | — | 2 | `'.'` | SQL सर्वर इंस्टेंस का नाम। |
| `-Transaction` | Object | — | — | 3 | — | प्रश्नों के लिए उपयोग करने के लिए एक मौजूदा SQL Server लेन-देन। |
| `-ConnectionString` | String | — | — | 4 | — | SQL डेटाबेस के लिए कनेक्शन स्ट्रिंग। |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | पैरामीटर हैशटेबल के रूप में क्वेरी। |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | उपयोग करने के लिए पृथक्करण स्तर। डिफ़ॉल्ट ReadCommitted है। |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQL सर्वर पैकेज स्थापना के लिए प्राथमिकता सेट होने पर भी सहमति संकेत को बाध्य करें। |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | SQL Server पैकेज के लिए तृतीय-पक्ष सॉफ़्टवेयर स्थापना को स्वचालित रूप से स्वीकार करें और स्थायी फ़्लैग सेट करें। |

## Examples

### Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users"

```powershell
Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users"
```

### "SELECT * FROM Users" | Invoke-SQLServerQuery -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true" -SqlParameters @{"UserId"=1}

```powershell
"SELECT * FROM Users" | Invoke-SQLServerQuery -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true" -SqlParameters @{"UserId"=1}
```

### Batch operations using external transaction $tx = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDB" try {     Invoke-SQLServerQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}     Invoke-SQLServerQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}     $tx.Commit() } catch {     $tx.Rollback()     throw } finally {     $tx.Connection.Close() }

```powershell
Batch operations using external transaction
$tx = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDB"
try {
    Invoke-SQLServerQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}
    Invoke-SQLServerQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}
    $tx.Commit()
} catch {
    $tx.Rollback()
    throw
} finally {
    $tx.Connection.Close()
}
```

### Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation
```

## Parameter Details

### `-Queries <String[]>`

> निष्पादित करने के लिए क्वेरी या क्वेरीज़।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Value`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabaseName <String>`

> SQL Server डेटाबेस का नाम।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'master'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Server <String>`

> SQL सर्वर इंस्टेंस का नाम।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `'.'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Transaction <Object>`

> प्रश्नों के लिए उपयोग करने के लिए एक मौजूदा SQL Server लेन-देन।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConnectionString <String>`

> SQL डेटाबेस के लिए कनेक्शन स्ट्रिंग।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SqlParameters <Collections.Hashtable[]>`

> पैरामीटर हैशटेबल के रूप में क्वेरी।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `@()` |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `data`, `parameters`, `args` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IsolationLevel <String>`

> उपयोग करने के लिए पृथक्करण स्तर। डिफ़ॉल्ट ReadCommitted है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"ReadCommitted"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> SQL सर्वर पैकेज स्थापना के लिए प्राथमिकता सेट होने पर भी सहमति संकेत को बाध्य करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> SQL Server पैकेज के लिए तृतीय-पक्ष सॉफ़्टवेयर स्थापना को स्वचालित रूप से स्वीकार करें और स्थायी फ़्लैग सेट करें।

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

- [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerSchema.md)
- [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerTableColumnData.md)
- [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerTableData.md)
- [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerTables.md)
- [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerTableSchema.md)
- [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerTransaction.md)
- [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerViewColumnData.md)
- [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerViewData.md)
- [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerViews.md)
- [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLServerViewSchema.md)
- [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-SSMS.md)
- [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-SQLServerDatabase.md)
