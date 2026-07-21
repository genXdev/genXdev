# Open-YoutubeQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `youtube`

## Synopsis

> เปิดการค้นหา YouTube ในเว็บเบราว์เซอร์

## Description

เปิดคำค้นหา YouTube หนึ่งรายการขึ้นไปในเว็บเบราว์เซอร์ โดยมีตัวเลือกการวางตำแหน่งและการกำหนดค่าที่ครอบคลุม รองรับการเลือกจอภาพที่กำหนดค่าได้ การตั้งค่าเบราว์เซอร์ และระบบอัตโนมัติของการกดแป้นพิมพ์ผ่านพารามิเตอร์ไดนามิกที่สืบทอดมาจาก cmdlet Open-Webbrowser แต่ละคำค้นหาจะเปิดในอินสแตนซ์เบราว์เซอร์แยกต่างหากพร้อมการควบคุมเต็มรูปแบบเหนือการวางตำแหน่งหน้าต่าง ประเภทเบราว์เซอร์ และภาษาที่ใช้ในการค้นหา

## Syntax

```powershell
Open-YoutubeQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | คำสั่งที่จะดำเนินการ |
| `-Language` | String | — | — | 2 | — | ภาษาของผลลัพธ์การค้นหาที่ส่งคืน |
| `-Private` | SwitchParameter | — | — | Named | — | เปิดในโหมดไม่ระบุตัวตน/การเรียกดูแบบส่วนตัว |
| `-Force` | SwitchParameter | — | — | Named | — | บังคับเปิดใช้งานพอร์ตดีบัก บังคับปิดเบราว์เซอร์ที่มีอยู่หากจำเป็น |
| `-Edge` | SwitchParameter | — | — | Named | — | เปิดใน Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | เปิดใน Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | เปิดใน Microsoft Edge หรือ Google Chrome ขึ้นอยู่กับว่าเบราว์เซอร์เริ่มต้นคืออะไร |
| `-Firefox` | SwitchParameter | — | — | Named | — | เปิดใน Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | ใช้เบราว์เซอร์ที่จัดการโดย Playwright แทนเบราว์เซอร์ที่ติดตั้งในระบบปฏิบัติการ |
| `-Webkit` | SwitchParameter | — | — | Named | — | เปิดเบราว์เซอร์ WebKit ที่จัดการโดย Playwright หมายถึง -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | เรียกใช้เบราว์เซอร์โดยไม่มีหน้าต่างที่มองเห็นได้ |
| `-All` | SwitchParameter | — | — | Named | — | เปิดในเบราว์เซอร์สมัยใหม่ที่ลงทะเบียนทั้งหมด |
| `-Monitor` | Int32 | — | — | Named | `-1` | จอภาพที่จะใช้ 0 = ค่าเริ่มต้น, -1 = ไม่ใช้, -2 = จอภาพรองที่กำหนดค่าไว้, ค่าเริ่มต้นคือ -1, ไม่มีการจัดตำแหน่ง |
| `-FullScreen` | SwitchParameter | — | — | Named | — | เปิดในโหมดเต็มหน้าจอ |
| `-Width` | Int32 | — | — | Named | `-1` | ความกว้างเริ่มต้นของหน้าต่างเว็บเบราว์เซอร์ |
| `-Height` | Int32 | — | — | Named | `-1` | ความสูงเริ่มต้นของหน้าต่างเว็บเบราว์เซอร์ |
| `-X` | Int32 | — | — | Named | `-999999` | ตำแหน่ง X เริ่มต้นของหน้าต่างเว็บเบราว์เซอร์ |
| `-Y` | Int32 | — | — | Named | `-999999` | ตำแหน่ง Y เริ่มต้นของหน้าต่างเว็บเบราว์เซอร์ |
| `-Left` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ทางด้านซ้ายของหน้าจอ |
| `-Right` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ทางด้านขวาของหน้าจอ |
| `-Top` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ที่ด้านบนของหน้าจอ |
| `-Bottom` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ที่ด้านล่างของหน้าจอ |
| `-Centered` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ที่กึ่งกลางหน้าจอ |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ซ่อนตัวควบคุมเบราว์เซอร์ |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ป้องกันการโหลดส่วนขยายของเบราว์เซอร์ |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ปิดการบล็อกป๊อปอัป |
| `-AcceptLang` | String | — | — | Named | — | ตั้งค่าส่วนหัว http accept-lang ของเบราว์เซอร์ |
| `-KeysToSend` | String[] | — | — | Named | — | ปุ่มกดที่จะส่งไปยังหน้าต่างเบราว์เซอร์ โปรดดูเอกสารประกอบสำหรับ cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | การกำหนดจุดสนใจไปที่หน้าต่างเบราว์เซอร์หลังจากเปิด |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ตั้งค่าหน้าต่างเบราว์เซอร์ให้อยู่เบื้องหน้าหลังจากเปิด |
| `-Maximize` | SwitchParameter | — | — | Named | — | ขยายหน้าต่างให้ใหญ่ที่สุดหลังจากจัดตำแหน่ง |
| `-SetRestored` | SwitchParameter | — | — | Named | — | คืนค่าหน้าต่างสู่สถานะปกติหลังจากจัดตำแหน่ง |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | คืนค่าโฟกัสหน้าต่าง PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | อย่าใช้หน้าต่างเบราว์เซอร์เดิมซ้ำ ให้สร้างหน้าต่างใหม่แทน |
| `-PassThru` | SwitchParameter | — | — | Named | — | ส่งกลับวัตถุ [System.Diagnostics.Process] ของกระบวนการเบราว์เซอร์ |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | อย่าเปิดเว็บเบราว์เซอร์ แค่คืน URL มา |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | หลังจากเปิดเว็บเบราว์เซอร์แล้ว ให้คืนค่า URL |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | หลีกเลี่ยงอักขระควบคุมเมื่อส่งคีย์ |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | ป้องกันการส่งคืนโฟกัสคีย์บอร์ดไปยัง PowerShell หลังจากส่งคีย์ |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ส่ง Shift+Enter แทน Enter ปกติสำหรับการขึ้นบรรทัดใหม่ |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | ความล่าช้าระหว่างการส่งลำดับคีย์ต่างๆ ในหน่วยมิลลิวินาที |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ลบขอบของหน้าต่างเบราว์เซอร์ |
| `-SideBySide` | SwitchParameter | — | — | Named | — | วางตำแหน่งหน้าต่างเบราว์เซอร์ให้เป็นแบบเต็มจอบนจอภาพอื่นที่แตกต่างจาก PowerShell หรือวางเคียงข้างกับ PowerShell บนจอภาพเดียวกัน |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่า AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าทางเลือกที่จัดเก็บในเซสชันสำหรับการกำหนดลักษณะ AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | จัดเก็บการตั้งค่าเฉพาะในค่ากำหนดแบบถาวรโดยไม่กระทบต่อเซสชัน |

## Examples

### Open-YoutubeQuery -Queries "PowerShell tutorial" -Monitor 0

```powershell
Open-YoutubeQuery -Queries "PowerShell tutorial" -Monitor 0
```

เปิดการค้นหา YouTube สำหรับ "PowerShell tutorial" บนจอภาพเริ่มต้น

### youtube "how to code" -m -2

```powershell
youtube "how to code" -m -2
```

เปิดการค้นหา YouTube สำหรับ "วิธีการเขียนโค้ด" บนจอภาพรองที่กำหนดค่าไว้ โดยใช้นามแฝงของฟังก์ชัน

## Parameter Details

### `-Queries <String[]>`

> คำสั่งที่จะดำเนินการ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> ภาษาของผลลัพธ์การค้นหาที่ส่งคืน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> เปิดในโหมดไม่ระบุตัวตน/การเรียกดูแบบส่วนตัว

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> บังคับเปิดใช้งานพอร์ตดีบัก บังคับปิดเบราว์เซอร์ที่มีอยู่หากจำเป็น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> เปิดใน Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> เปิดใน Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> เปิดใน Microsoft Edge หรือ Google Chrome ขึ้นอยู่กับว่าเบราว์เซอร์เริ่มต้นคืออะไร

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> เปิดใน Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> ใช้เบราว์เซอร์ที่จัดการโดย Playwright แทนเบราว์เซอร์ที่ติดตั้งในระบบปฏิบัติการ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> เปิดเบราว์เซอร์ WebKit ที่จัดการโดย Playwright หมายถึง -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> เรียกใช้เบราว์เซอร์โดยไม่มีหน้าต่างที่มองเห็นได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> เปิดในเบราว์เซอร์สมัยใหม่ที่ลงทะเบียนทั้งหมด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> จอภาพที่จะใช้ 0 = ค่าเริ่มต้น, -1 = ไม่ใช้, -2 = จอภาพรองที่กำหนดค่าไว้, ค่าเริ่มต้นคือ -1, ไม่มีการจัดตำแหน่ง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> เปิดในโหมดเต็มหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> ความกว้างเริ่มต้นของหน้าต่างเว็บเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> ความสูงเริ่มต้นของหน้าต่างเว็บเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> ตำแหน่ง X เริ่มต้นของหน้าต่างเว็บเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> ตำแหน่ง Y เริ่มต้นของหน้าต่างเว็บเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> วางหน้าต่างเบราว์เซอร์ไว้ทางด้านซ้ายของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> วางหน้าต่างเบราว์เซอร์ไว้ทางด้านขวาของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> วางหน้าต่างเบราว์เซอร์ไว้ที่ด้านบนของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> วางหน้าต่างเบราว์เซอร์ไว้ที่ด้านล่างของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> วางหน้าต่างเบราว์เซอร์ไว้ที่กึ่งกลางหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> ซ่อนตัวควบคุมเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> ป้องกันการโหลดส่วนขยายของเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> ปิดการบล็อกป๊อปอัป

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> ตั้งค่าส่วนหัว http accept-lang ของเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> ปุ่มกดที่จะส่งไปยังหน้าต่างเบราว์เซอร์ โปรดดูเอกสารประกอบสำหรับ cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> การกำหนดจุดสนใจไปที่หน้าต่างเบราว์เซอร์หลังจากเปิด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> ตั้งค่าหน้าต่างเบราว์เซอร์ให้อยู่เบื้องหน้าหลังจากเปิด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> ขยายหน้าต่างให้ใหญ่ที่สุดหลังจากจัดตำแหน่ง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> คืนค่าหน้าต่างสู่สถานะปกติหลังจากจัดตำแหน่ง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> คืนค่าโฟกัสหน้าต่าง PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> อย่าใช้หน้าต่างเบราว์เซอร์เดิมซ้ำ ให้สร้างหน้าต่างใหม่แทน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> ส่งกลับวัตถุ [System.Diagnostics.Process] ของกระบวนการเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> อย่าเปิดเว็บเบราว์เซอร์ แค่คืน URL มา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> หลังจากเปิดเว็บเบราว์เซอร์แล้ว ให้คืนค่า URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> หลีกเลี่ยงอักขระควบคุมเมื่อส่งคีย์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> ป้องกันการส่งคืนโฟกัสคีย์บอร์ดไปยัง PowerShell หลังจากส่งคีย์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> ส่ง Shift+Enter แทน Enter ปกติสำหรับการขึ้นบรรทัดใหม่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> ความล่าช้าระหว่างการส่งลำดับคีย์ต่างๆ ในหน่วยมิลลิวินาที

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> ลบขอบของหน้าต่างเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> วางตำแหน่งหน้าต่างเบราว์เซอร์ให้เป็นแบบเต็มจอบนจอภาพอื่นที่แตกต่างจาก PowerShell หรือวางเคียงข้างกับ PowerShell บนจอภาพเดียวกัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่า AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> ล้างการตั้งค่าทางเลือกที่จัดเก็บในเซสชันสำหรับการกำหนดลักษณะ AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> จัดเก็บการตั้งค่าเฉพาะในค่ากำหนดแบบถาวรโดยไม่กระทบต่อเซสชัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-BuiltWithSiteInfo.md)
- [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-GithubQuery.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WolframAlphaQuery.md)
