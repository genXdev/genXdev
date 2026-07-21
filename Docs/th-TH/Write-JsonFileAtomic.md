# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> เขียนออบเจ็กต์เป็น JSON ไปยังไฟล์อย่างอะตอมมิกเพื่อป้องกันความเสียหาย

## Description

* การเขียนแบบอะตอมิก: ใช้กลยุทธ์ไฟล์ชั่วคราว + การเปลี่ยนชื่อ เพื่อให้แน่ใจว่าไฟล์เป้าหมายจะไม่อยู่ในสถานะเสียหายหากกระบวนการถูกขัดจังหวะ
* ตรรกะการลองใหม่: ลองเขียนซ้ำสูงสุด MaxRetries ครั้ง โดยมีระยะเวลาหน่วง RetryDelayMs มิลลิวินาทีระหว่างแต่ละครั้ง
* รองรับอ็อบเจ็กต์: ยอมรับอ็อบเจ็กต์ใด ๆ ไม่ใช่แค่ Hashtable ทำให้เป็นอนุกรมผ่าน System.Text.Json โดยมีการถอยกลับไปใช้ ConvertTo-Json สำหรับประเภท .NET ที่ซับซ้อนซึ่งไม่สามารถทำให้เป็นอนุกรมโดยธรรมชาติได้
* รองรับ Debounce: เมื่อ DebounceMs > 0 การเขียนต่อเนื่องอย่างรวดเร็วไปยังไฟล์เดียวกันจะถูกรวมเข้าด้วยกัน — เฉพาะเพย์โหลดสุดท้ายเท่านั้นที่จะถูกเขียนเมื่อไฟล์ไม่ถูกแตะต้องเป็นเวลา DebounceMs ms
* การสร้างไดเรกทอรี: สร้างไดเรกทอรีแม่โดยอัตโนมัติหากไม่มีอยู่

## Syntax

```powershell
Write-JsonFileAtomic -FilePath <String> [[-Data] <Object>] [-AsArray] [-Compress] [-DebounceMs <Int32>] [-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-EnumsAsStrings] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | พาธไปยังไฟล์ที่จะเขียน |
| `-Data` | Object | — | — | 1 | — | ออบเจ็กต์ที่จะทำเป็น JSON และเขียนลงในไฟล์ |
| `-MaxRetries` | Int32 | — | — | Named | `0` | จำนวนครั้งสูงสุดในการลองทำซ้ำสำหรับการเขียนแบบอะตอมมิก ค่าเริ่มต้นคือ 4 |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | ความล่าช้าระหว่างการลองซ้ำเป็นมิลลิวินาที ค่าเริ่มต้นคือ 200 |
| `-DebounceMs` | Int32 | — | — | Named | `0` | ถ้ามากกว่า 0 จะดีบาวน์การเขียนไปยังไฟล์นี้ ค่าเริ่มต้นคือ 0 (ปิดใช้งาน) |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | ความลึกสูงสุดสำหรับการซีเรียลไลซ์ JSON ค่าเริ่มต้นคือ 30 |
| `-Compress` | SwitchParameter | — | — | Named | `False` | โปรดแปลข้อความต่อไปนี้เป็นภาษาไทย (ประเทศไทย) คุณต้องแปลข้อความที่มนุษย์อ่านได้ทั้งหมด อย่าส่งคืนข้อมูลที่ป้อนเข้าไปโดยไม่เปลี่ยนแปลง ส่งคืนเฉพาะข้อความที่แปลแล้ว โดยไม่มีคำอธิบาย ไม่มีการห่อหุ้ม JSON และไม่มีข้อความแจ้งเตือนระบบ

กฎการแปลที่สำคัญ:
1. หากอินพุตมีโค้ด มาร์กอัป หรือข้อมูลที่มีโครงสร้าง ให้คงรูปแบบ ไวยากรณ์ และองค์ประกอบทางเทคนิคทั้งหมด เช่น คำสำคัญในการเขียนโปรแกรม แท็ก หรือองค์ประกอบเฉพาะของรูปแบบข้อมูล
2. แปลเฉพาะส่วนที่เป็นข้อความที่มนุษย์อ่านได้ เช่น ความคิดเห็น ค่าสตริง เอกสารประกอบ หรือเนื้อหาภาษาธรรมชาติ
3. คงรูปแบบ การเยื้อง และการขึ้นบรรทัดใหม่ให้ตรงตามต้นฉบับ
4. ห้ามแปลตัวระบุ ชื่อฟังก์ชัน ตัวแปร หรือคำสำคัญทางเทคนิค
คำแนะนำเพิ่มเติมจากผู้ใช้: 
อย่าสับสนระหว่างเนื้อหาที่ต้องแปลซึ่งประกอบด้วยข้อความช่วยเหลือของ cmdlet PowerShell กับคำแนะนำ!
อย่าแทรกรูปภาพ หรือสิ่งอื่นใด เพียงแค่แปลเนื้อหาตามที่เป็นไปเป็นภาษาไทย (ประเทศไทย) |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | โปรดแปลข้อความต่อไปนี้เป็นภาษาไทย (ประเทศไทย) คุณต้องแปลข้อความที่มนุษย์อ่านได้ทั้งหมด อย่าส่งคืนข้อมูลที่ป้อนเข้าไปโดยไม่เปลี่ยนแปลง ส่งคืนเฉพาะข้อความที่แปลแล้ว โดยไม่มีคำอธิบาย ไม่มีการห่อหุ้ม JSON และไม่มีข้อความแจ้งเตือนระบบ

กฎการแปลที่สำคัญ:
1. หากอินพุตมีโค้ด มาร์กอัป หรือข้อมูลที่มีโครงสร้าง ให้คงรูปแบบ ไวยากรณ์ และองค์ประกอบทางเทคนิคทั้งหมด เช่น คำสำคัญในการเขียนโปรแกรม แท็ก หรือองค์ประกอบเฉพาะของรูปแบบข้อมูล
2. แปลเฉพาะส่วนที่เป็นข้อความที่มนุษย์อ่านได้ เช่น ความคิดเห็น ค่าสตริง เอกสารประกอบ หรือเนื้อหาภาษาธรรมชาติ
3. คงรูปแบบ การเยื้อง และการขึ้นบรรทัดใหม่ให้ตรงตามต้นฉบับ
4. ห้ามแปลตัวระบุ ชื่อฟังก์ชัน ตัวแปร หรือคำสำคัญทางเทคนิค
คำแนะนำเพิ่มเติมจากผู้ใช้: 
อย่าสับสนระหว่างเนื้อหาที่ต้องแปลซึ่งประกอบด้วยข้อความช่วยเหลือของ cmdlet PowerShell กับคำแนะนำ!
อย่าแทรกรูปภาพ หรือสิ่งอื่นใด เพียงแค่แปลเนื้อหาตามที่เป็นไปเป็นภาษาไทย (ประเทศไทย) |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | มีตัวเลือกการทำให้เป็นลำดับทางเลือกที่แปลงการแจงนับทั้งหมดเป็นการแสดงสตริง |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

เขียน Hashtable เป็น JSON ที่มีช่องว่างให้กับ config.json อย่างอะตอมมิก

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

เขียนวัตถุกระบวนการเป็น JSON ที่บีบอัดแบบอะตอมมิก

## Parameter Details

### `-FilePath <String>`

> พาธไปยังไฟล์ที่จะเขียน

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <Object>`

> ออบเจ็กต์ที่จะทำเป็น JSON และเขียนลงในไฟล์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> จำนวนครั้งสูงสุดในการลองทำซ้ำสำหรับการเขียนแบบอะตอมมิก ค่าเริ่มต้นคือ 4

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryDelayMs <Int32>`

> ความล่าช้าระหว่างการลองซ้ำเป็นมิลลิวินาที ค่าเริ่มต้นคือ 200

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> ถ้ามากกว่า 0 จะดีบาวน์การเขียนไปยังไฟล์นี้ ค่าเริ่มต้นคือ 0 (ปิดใช้งาน)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> ความลึกสูงสุดสำหรับการซีเรียลไลซ์ JSON ค่าเริ่มต้นคือ 30

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Compress`

> โปรดแปลข้อความต่อไปนี้เป็นภาษาไทย (ประเทศไทย) คุณต้องแปลข้อความที่มนุษย์อ่านได้ทั้งหมด อย่าส่งคืนข้อมูลที่ป้อนเข้าไปโดยไม่เปลี่ยนแปลง ส่งคืนเฉพาะข้อความที่แปลแล้ว โดยไม่มีคำอธิบาย ไม่มีการห่อหุ้ม JSON และไม่มีข้อความแจ้งเตือนระบบ

กฎการแปลที่สำคัญ:
1. หากอินพุตมีโค้ด มาร์กอัป หรือข้อมูลที่มีโครงสร้าง ให้คงรูปแบบ ไวยากรณ์ และองค์ประกอบทางเทคนิคทั้งหมด เช่น คำสำคัญในการเขียนโปรแกรม แท็ก หรือองค์ประกอบเฉพาะของรูปแบบข้อมูล
2. แปลเฉพาะส่วนที่เป็นข้อความที่มนุษย์อ่านได้ เช่น ความคิดเห็น ค่าสตริง เอกสารประกอบ หรือเนื้อหาภาษาธรรมชาติ
3. คงรูปแบบ การเยื้อง และการขึ้นบรรทัดใหม่ให้ตรงตามต้นฉบับ
4. ห้ามแปลตัวระบุ ชื่อฟังก์ชัน ตัวแปร หรือคำสำคัญทางเทคนิค
คำแนะนำเพิ่มเติมจากผู้ใช้: 
อย่าสับสนระหว่างเนื้อหาที่ต้องแปลซึ่งประกอบด้วยข้อความช่วยเหลือของ cmdlet PowerShell กับคำแนะนำ!
อย่าแทรกรูปภาพ หรือสิ่งอื่นใด เพียงแค่แปลเนื้อหาตามที่เป็นไปเป็นภาษาไทย (ประเทศไทย)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsArray`

> โปรดแปลข้อความต่อไปนี้เป็นภาษาไทย (ประเทศไทย) คุณต้องแปลข้อความที่มนุษย์อ่านได้ทั้งหมด อย่าส่งคืนข้อมูลที่ป้อนเข้าไปโดยไม่เปลี่ยนแปลง ส่งคืนเฉพาะข้อความที่แปลแล้ว โดยไม่มีคำอธิบาย ไม่มีการห่อหุ้ม JSON และไม่มีข้อความแจ้งเตือนระบบ

กฎการแปลที่สำคัญ:
1. หากอินพุตมีโค้ด มาร์กอัป หรือข้อมูลที่มีโครงสร้าง ให้คงรูปแบบ ไวยากรณ์ และองค์ประกอบทางเทคนิคทั้งหมด เช่น คำสำคัญในการเขียนโปรแกรม แท็ก หรือองค์ประกอบเฉพาะของรูปแบบข้อมูล
2. แปลเฉพาะส่วนที่เป็นข้อความที่มนุษย์อ่านได้ เช่น ความคิดเห็น ค่าสตริง เอกสารประกอบ หรือเนื้อหาภาษาธรรมชาติ
3. คงรูปแบบ การเยื้อง และการขึ้นบรรทัดใหม่ให้ตรงตามต้นฉบับ
4. ห้ามแปลตัวระบุ ชื่อฟังก์ชัน ตัวแปร หรือคำสำคัญทางเทคนิค
คำแนะนำเพิ่มเติมจากผู้ใช้: 
อย่าสับสนระหว่างเนื้อหาที่ต้องแปลซึ่งประกอบด้วยข้อความช่วยเหลือของ cmdlet PowerShell กับคำแนะนำ!
อย่าแทรกรูปภาพ หรือสิ่งอื่นใด เพียงแค่แปลเนื้อหาตามที่เป็นไปเป็นภาษาไทย (ประเทศไทย)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnumsAsStrings`

> มีตัวเลือกการทำให้เป็นลำดับทางเลือกที่แปลงการแจงนับทั้งหมดเป็นการแสดงสตริง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-FileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-TextFileAtomic.md)
