# GenerateMasonryLayoutHtml

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> สร้างแกลเลอรี HTML แบบเค้าโครงแบบ Masonry ที่ตอบสนองจากข้อมูลรูปภาพ

## Description

สร้างแกลเลอรี HTML แบบโต้ตอบพร้อมเค้าโครงตารางแบบ Masonry ที่ตอบสนองสำหรับการแสดงรูปภาพ คุณสมบัติรวมถึง:
- เค้าโครงตารางที่ปรับตามขนาดหน้าจอ
- คำแนะนำเครื่องมือรูปภาพที่แสดงคำอธิบายและคำสำคัญ
- ความสามารถในการคลิกเพื่อคัดลอกเส้นทางรูปภาพ
- รูปแบบทันสมัยที่สะอาดตาพร้อมเอฟเฟกต์เมื่อวางเมาส์

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | อาร์เรย์ของวัตถุภาพที่มีเส้นทาง คำสำคัญ และคำอธิบาย |
| `-FilePath` | String | — | — | 1 | `$null` | เส้นทางผลลัพธ์สำหรับไฟล์ HTML ที่สร้างขึ้น |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | ชื่อสำหรับแกลเลอรี |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | คำอธิบายสำหรับแกลเลอรี |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | เปิดใช้งานการแก้ไขหรือไม่ |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | เปิดใช้งานการลบหรือไม่ |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | ฝังรูปภาพเป็นข้อมูล URL แบบ base64 แทนการใช้ URL แบบ file:// เพื่อความสะดวกในการพกพา |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | แสดงเฉพาะรูปภาพในกรอบสี่เหลี่ยมมุมมน ไม่มีข้อความด้านล่าง |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | เลื่อนหน้าจออัตโนมัติตามจำนวนพิกเซลต่อวินาทีนี้ (ตั้งค่าเป็น null เพื่อปิดใช้งาน) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | เคลื่อนไหวสี่เหลี่ยมผืนผ้า (วัตถุ/ใบหน้า) ในช่วงที่มองเห็น โดยวนซ้ำทุก 300 มิลลิวินาที |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | บังคับใช้โครงร่างคอลัมน์เดียว (จัดกึ่งกลาง, กว้าง 1/3 ของหน้าจอ) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | คำนำหน้าที่จะเติมหน้าทุกเส้นทางของรูปภาพ (เช่น สำหรับ URL ระยะไกล) |
| `-PageSize` | Int32 | — | — | Named | `20` | จำนวนภาพที่จะโหลดต่อหน้า (สำหรับการโหลดแบบไดนามิก) |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | จำนวนภาพสูงสุดที่จะโหลดสำหรับโหมดพิมพ์ |
| `-RootMargin` | String | — | — | Named | `'1200px'` | IntersectionObserver rootMargin สำหรับทริกเกอร์การเลื่อนแบบไม่สิ้นสุด (เช่น "1200px") |
| `-Threshold` | Double | — | — | Named | `0.1` | เกณฑ์ IntersectionObserver สำหรับทริกเกอร์การเลื่อนแบบอนันต์ |

## Examples

### Create gallery from image array and save to file $images = @(     @{         path = "C:\photos\sunset.jpg"         keywords = @("nature", "sunset", "landscape")         description = @{             short_description = "Mountain sunset"             long_description = "Beautiful sunset over mountain range"         }     } ) GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"

```powershell
Create gallery from image array and save to file
$images = @(
    @{
        path = "C:\photos\sunset.jpg"
        keywords = @("nature", "sunset", "landscape")
        description = @{
            short_description = "Mountain sunset"
            long_description = "Beautiful sunset over mountain range"
        }
    }
)
GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"
```

### Generate HTML string without saving $html = GenerateMasonryLayoutHtml $images

```powershell
Generate HTML string without saving
$html = GenerateMasonryLayoutHtml $images
```

## Parameter Details

### `-Images <Object>`

> อาร์เรย์ของวัตถุภาพที่มีเส้นทาง คำสำคัญ และคำอธิบาย

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilePath <String>`

> เส้นทางผลลัพธ์สำหรับไฟล์ HTML ที่สร้างขึ้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Title <String>`

> ชื่อสำหรับแกลเลอรี

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Photo Gallery'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> คำอธิบายสำหรับแกลเลอรี

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Hover over images to see face recognition, object detection, and scene classification data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CanEdit`

> เปิดใช้งานการแก้ไขหรือไม่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CanDelete`

> เปิดใช้งานการลบหรือไม่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EmbedImages`

> ฝังรูปภาพเป็นข้อมูล URL แบบ base64 แทนการใช้ URL แบบ file:// เพื่อความสะดวกในการพกพา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowOnlyPictures`

> แสดงเฉพาะรูปภาพในกรอบสี่เหลี่ยมมุมมน ไม่มีข้อความด้านล่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoMetadata`, `OnlyPictures` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScrollPixelsPerSecond <Int32>`

> เลื่อนหน้าจออัตโนมัติตามจำนวนพิกเซลต่อวินาทีนี้ (ตั้งค่าเป็น null เพื่อปิดใช้งาน)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoAnimateRectangles`

> เคลื่อนไหวสี่เหลี่ยมผืนผ้า (วัตถุ/ใบหน้า) ในช่วงที่มองเห็น โดยวนซ้ำทุก 300 มิลลิวินาที

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleColumnMode`

> บังคับใช้โครงร่างคอลัมน์เดียว (จัดกึ่งกลาง, กว้าง 1/3 ของหน้าจอ)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageUrlPrefix <String>`

> คำนำหน้าที่จะเติมหน้าทุกเส้นทางของรูปภาพ (เช่น สำหรับ URL ระยะไกล)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PageSize <Int32>`

> จำนวนภาพที่จะโหลดต่อหน้า (สำหรับการโหลดแบบไดนามิก)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `20` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxPrintImages <Int32>`

> จำนวนภาพสูงสุดที่จะโหลดสำหรับโหมดพิมพ์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `50` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RootMargin <String>`

> IntersectionObserver rootMargin สำหรับทริกเกอร์การเลื่อนแบบไม่สิ้นสุด (เช่น "1200px")

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'1200px'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Threshold <Double>`

> เกณฑ์ IntersectionObserver สำหรับทริกเกอร์การเลื่อนแบบอนันต์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureNuGetAssembly.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/WriteFileOutput.md)
