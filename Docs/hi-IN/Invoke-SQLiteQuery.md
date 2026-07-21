# Invoke-SQLiteQuery

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> लेन-देन समर्थन के साथ SQLite डेटाबेस में एक या अधिक SQL क्वेरी निष्पादित करता है।

## Description

SQLite डेटाबेस के विरुद्ध पैरामीटर समर्थन और कॉन्फ़िगरेबल लेन-देन पृथक्करण के साथ SQL क्वेरी निष्पादित करता है। बैच संचालन के लिए बाहरी लेन-देन का उपयोग कर सकता है या अपना स्वयं का आंतरिक लेन-देन बना सकता है। बाहरी लेन-देन का उपयोग करते समय, कॉलर कमिट/रोलबैक के लिए जिम्मेदार होता है। कनेक्शन प्राथमिकता: लेन-देन > कनेक्शनस्ट्रिंग > डेटाबेसफ़ाइलपथ।

## Syntax

```powershell
Invoke-SQLiteQuery [[-ConnectionString] <String>] [[-DatabaseFilePath] <String>] [[-Transaction] <Object>] -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | — | — | 0 | — | SQLite डेटाबेस के लिए कनेक्शन स्ट्रिंग। |
| `-DatabaseFilePath` | String | — | — | 1 | — | SQLite डेटाबेस फ़ाइल का पथ। |
| `-Transaction` | Object | — | — | 2 | — | क्वेरी के लिए उपयोग करने के लिए एक मौजूदा SQLite लेन-देन। |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 3 | — | निष्पादित करने के लिए क्वेरी या क्वेरीज़। |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 4 | `@()` | पैरामीटर हैशटेबल के रूप में क्वेरी। |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | उपयोग करने के लिए पृथक्करण स्तर। डिफ़ॉल्ट ReadCommitted है। |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQLite पैकेज इंस्टॉलेशन के लिए प्राथमिकता सेट होने पर भी सहमति प्रॉम्प्ट को बाध्य करें। |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | SQLite पैकेज के लिए तीसरे पक्ष के सॉफ्टवेयर इंस्टॉलेशन के लिए स्वचालित रूप से सहमति दें और स्थायी फ़्लैग सेट करें। |

## Examples

### Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users"

```powershell
Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users"
```

### "SELECT * FROM Users" | isql "C:\data.db" @{"UserId"=1}

```powershell
"SELECT * FROM Users" | isql "C:\data.db" @{"UserId"=1}
```

### Batch operations using external transaction $tx = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db" try {     Invoke-SQLiteQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}     Invoke-SQLiteQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}     $tx.Commit() } catch {     $tx.Rollback()     throw } finally {     $tx.Connection.Close() }

```powershell
Batch operations using external transaction
$tx = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db"
try {
    Invoke-SQLiteQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}
    Invoke-SQLiteQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}
    $tx.Commit()
} catch {
    $tx.Rollback()
    throw
} finally {
    $tx.Connection.Close()
}
```

### Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation
```

## Parameter Details

### `-ConnectionString <String>`

> SQLite डेटाबेस के लिए कनेक्शन स्ट्रिंग।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabaseFilePath <String>`

> SQLite डेटाबेस फ़ाइल का पथ।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `dbpath`, `indexpath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Transaction <Object>`

> क्वेरी के लिए उपयोग करने के लिए एक मौजूदा SQLite लेन-देन।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Queries <String[]>`

> निष्पादित करने के लिए क्वेरी या क्वेरीज़।

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Value`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

<hr/>
### `-SqlParameters <Collections.Hashtable[]>`

> पैरामीटर हैशटेबल के रूप में क्वेरी।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `@()` |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `data`, `parameters`, `args` |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

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

> SQLite पैकेज इंस्टॉलेशन के लिए प्राथमिकता सेट होने पर भी सहमति प्रॉम्प्ट को बाध्य करें।

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

> SQLite पैकेज के लिए तीसरे पक्ष के सॉफ्टवेयर इंस्टॉलेशन के लिए स्वचालित रूप से सहमति दें और स्थायी फ़्लैग सेट करें।

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

- [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteSchema.md)
- [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteTableColumnData.md)
- [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteTableData.md)
- [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteTables.md)
- [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteTableSchema.md)
- [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteTransaction.md)
- [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteViewColumnData.md)
- [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteViewData.md)
- [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteViews.md)
- [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SQLiteViewSchema.md)
- [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-SQLiteStudio.md)
- [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-SQLiteDatabase.md)
