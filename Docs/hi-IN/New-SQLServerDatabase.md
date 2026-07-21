# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb`

## Synopsis

> एक नया SQL सर्वर डेटाबेस बनाता है।

## Description

निर्दिष्ट सर्वर पर निर्दिष्ट नाम के साथ एक नया SQL Server डेटाबेस बनाता है। लक्ष्य SQL Server इंस्टेंस पर डेटाबेस बनाने के लिए उपयुक्त अनुमतियाँ आवश्यक हैं। यदि डेटाबेस पहले से मौजूद है, तो ऑपरेशन छोड़ दिया जाएगा। स्पष्ट .mdf/.ldf पथों के साथ फ़ाइल-आधारित डेटाबेस निर्माण का समर्थन करता है।

## Syntax

```powershell
New-SQLServerDatabase -DatabaseName <String> [[-Server] <String>] [-DataFilePath <String>] [-DetachAfterCreation] [-LogFilePath <String>] [<CommonParameters>]

New-SQLServerDatabase -ConnectionString <String> [<CommonParameters>]

New-SQLServerDatabase [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseName` | String | ✅ | — | 0 | — | बनाने के लिए SQL सर्वर डेटाबेस का नाम *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL सर्वर उदाहरण का नाम *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL सर्वर से कनेक्ट करने के लिए कनेक्शन स्ट्रिंग *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQL सर्वर पैकेज स्थापना के लिए प्राथमिकता सेट होने पर भी सहमति संकेत को बाध्य करें। |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | SQL Server पैकेज के लिए तृतीय-पक्ष सॉफ़्टवेयर स्थापना को स्वचालित रूप से स्वीकार करें और स्थायी फ़्लैग सेट करें। |
| `-DataFilePath` | String | — | — | Named | — | फ़ाइल-आधारित डेटाबेस निर्माण के लिए वैकल्पिक डेटा फ़ाइल पथ (.mdf)। *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | फ़ाइल-आधारित डेटाबेस निर्माण के लिए वैकल्पिक लॉग फ़ाइल पथ (.ldf)। *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | फ़ाइल-आधारित डेटाबेस के लिए निर्माण के बाद डेटाबेस को अलग करें। *(Parameter set: )* |

## Examples

### New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"

```powershell
New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"
```

### New-SQLServerDatabase "MyNewDatabase"

```powershell
New-SQLServerDatabase "MyNewDatabase"
```

### New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."
```

### New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation

```powershell
New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation
```

### New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation
```

## Parameter Details

### `-DatabaseName <String>`

> बनाने के लिए SQL सर्वर डेटाबेस का नाम

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

> SQL सर्वर उदाहरण का नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'.'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-ConnectionString <String>`

> SQL सर्वर से कनेक्ट करने के लिए कनेक्शन स्ट्रिंग

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
### `-DataFilePath <String>`

> फ़ाइल-आधारित डेटाबेस निर्माण के लिए वैकल्पिक डेटा फ़ाइल पथ (.mdf)।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-LogFilePath <String>`

> फ़ाइल-आधारित डेटाबेस निर्माण के लिए वैकल्पिक लॉग फ़ाइल पथ (.ldf)।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-DetachAfterCreation`

> फ़ाइल-आधारित डेटाबेस के लिए निर्माण के बाद डेटाबेस को अलग करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

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
- [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-SQLServerQuery.md)
- [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-SSMS.md)
