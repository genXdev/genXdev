# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb`

## Synopsis

> เริ่มต้นเบราว์เซอร์ที่จัดการโดย Playwright พร้อมโปรไฟล์ผู้ใช้ถาวร

## Description

<details>
<summary><b>Expand description</b></summary>

เปิดใช้งานเบราว์เซอร์ที่ขับเคลื่อนโดย Playwright พารามิเตอร์ BrowserType จะกำหนดว่าเครื่องยนต์เบราว์เซอร์และโหมดการเปิดใช้ใดที่จะใช้:

- ChromeNormal / EdgeNormal: เปิด Chrome หรือ Edge ที่ติดตั้งในระบบปฏิบัติการของคุณผ่าน Channel API ของ Playwright หลีกเลี่ยงแถบข้อมูล "controlled by automation" และปัญหาการตรวจจับบอท
- ChromiumNormal: ตรวจจับ Chrome หรือ Edge โดยอัตโนมัติ (ไม่ว่าจะติดตั้งตัวใดและตั้งเป็นค่าเริ่มต้นของระบบ) และใช้ Channel API หากไม่มีติดตั้งไว้ จะใช้ Chromium ที่มาพร้อมกับ Playwright เป็นทางเลือกสำรอง
- ChromiumPlaywright: ใช้ไบนารี Chromium ที่มาพร้อมกับ Playwright เสมอ (ไม่ใช้เบราว์เซอร์ที่ติดตั้งในระบบปฏิบัติการ)
- FirefoxPlaywright: ใช้ไบนารี Firefox ที่มาพร้อมกับ Playwright ไม่มี Channel API สำหรับ Firefox ในการผูก .NET ของ Playwright
- WebKitPlaywright: ใช้ไบนารี WebKit ที่มาพร้อมกับ Playwright

มาตรการป้องกันการตรวจจับที่ใช้สำหรับเบราว์เซอร์ที่ใช้ Chromium:
- ปิดการใช้งานแฟล็กอัตโนมัติ blink (ลบแถบข้อมูล)
- ตั้งค่า viewport เป็น null และเริ่มต้นแบบขยายใหญ่สุดเพื่อขนาดหน้าต่างแบบเนทีฟ
- ใช้โทนสี 'no-preference' เพื่อหลีกเลี่ยงพื้นหลังสีขาว
- ตั้งค่าอาร์กิวเมนต์เบราว์เซอร์มาตรฐาน (no-first-run, no-default-browser-check)

โปรไฟล์แบบถาวรสำหรับแต่ละ BrowserType จะถูกจัดเก็บภายใต้ GenXdev AppData เบราว์เซอร์ที่เปิดและบริบท/เพจของมันจะถูกเก็บไว้ใน $Global:GenXdevPlaywright เพื่อใช้โดย cmdlet อื่นๆ

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'ChromiumNormal'` | เบราว์เซอร์ที่จะเปิด: Chrome, Edge, Chromium (ตรวจจับ Chrome หรือ Edge โดยอัตโนมัติ), Firefox, หรือ WebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | เรียกใช้เบราว์เซอร์โดยไม่มีหน้าต่างที่มองเห็นได้ |
| `-Proxy` | String | — | — | Named | — | URL ของเซิร์ฟเวอร์พร็อกซี่ (เช่น http://proxy:8080) |
| `-AcceptLang` | String | — | — | Named | — | ตั้งค่าส่วนหัวคำขอ HTTP Accept-Language ของเบราว์เซอร์ |
| `-Width` | Int32 | — | — | Named | `-1` | ความกว้างของวิวพอร์ตเริ่มต้นในหน่วยพิกเซล |
| `-Height` | Int32 | — | — | Named | `-1` | ความสูงเริ่มต้นของวิวพอร์ตในหน่วยพิกเซล |
| `-Force` | SwitchParameter | — | — | Named | — | ปิดเบราว์เซอร์ที่มีอยู่แล้วเริ่มใหม่ |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | บังคับให้แสดงกล่องโต้ตอบยินยอมการติดตั้งอีกครั้ง |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | ยินยอมโดยอัตโนมัติให้ติดตั้งซอฟต์แวร์ของบุคคลที่สาม (เบราว์เซอร์ Playwright) |
| `-Monitor` | Int32 | — | — | Named | `-1` | จอภาพที่จะใช้, 0 = ค่าเริ่มต้น, -1 = ไม่ใช้, -2 = จอภาพรองที่กำหนดค่าไว้, ค่าเริ่มต้นคือ $Global:DefaultSecondaryMonitor หรือ 2 หากไม่พบ |
| `-X` | Int32 | — | — | Named | `-999999` | ตำแหน่ง X เริ่มต้นของหน้าต่างเว็บเบราว์เซอร์ |
| `-Y` | Int32 | — | — | Named | `-999999` | ตำแหน่ง Y เริ่มต้นของหน้าต่างเว็บเบราว์เซอร์ |
| `-Left` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ทางด้านซ้ายของหน้าจอ |
| `-Right` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ทางด้านขวาของหน้าจอ |
| `-Top` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ที่ด้านบนของหน้าจอ |
| `-Bottom` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ที่ด้านล่างของหน้าจอ |
| `-Centered` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ที่กึ่งกลางหน้าจอ |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | ขยายหน้าต่างให้เต็มหน้าจอ |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ลบขอบของหน้าต่าง |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | คืนค่าโฟกัสหน้าต่าง PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | จัดตำแหน่งหน้าต่างเบราว์เซอร์ให้เต็มหน้าจอบนจอภาพอื่นที่ต่างจาก PowerShell หรือวางไว้ข้าง PowerShell บนจอภาพเดียวกัน |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | การกำหนดจุดสนใจไปที่หน้าต่างเบราว์เซอร์หลังจากเปิด |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ตั้งค่าหน้าต่างเบราว์เซอร์ให้อยู่เบื้องหน้าหลังจากเปิด |
| `-Minimize` | SwitchParameter | — | — | Named | — | ย่อหน้าต่างให้เล็กลงหลังจากวางตำแหน่ง |
| `-Maximize` | SwitchParameter | — | — | Named | — | ขยายหน้าต่างให้ใหญ่ที่สุดหลังจากจัดตำแหน่ง |
| `-SetRestored` | SwitchParameter | — | — | Named | — | คืนค่าหน้าต่างสู่สถานะปกติหลังจากจัดตำแหน่ง |
| `-KeysToSend` | String[] | — | — | Named | — | การกดแป้นพิมพ์ที่ต้องการส่งไปยังหน้าต่าง ดูเอกสารสำหรับ cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | หลีกเลี่ยงอักขระควบคุมและตัวปรับแต่งเมื่อส่งคีย์ |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | คงการโฟกัสคีย์บอร์ดไว้ที่หน้าต่างเป้าหมายเมื่อส่งคีย์ |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ใช้ Shift+Enter แทน Enter เมื่อส่งคีย์ |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | ความล่าช้าระหว่างสตริงอินพุตที่แตกต่างกันในหน่วยมิลลิวินาทีเมื่อส่งคีย์ |
| `-PassThru` | SwitchParameter | — | — | Named | — | ส่งคืนออบเจกต์ตัวช่วยหน้าต่างสำหรับการจัดการเพิ่มเติม |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่าปัญญาประดิษฐ์ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดลักษณะ AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | จัดเก็บการตั้งค่าเฉพาะในการกำหนดลักษณะถาวร โดยไม่กระทบต่อเซสชัน |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | แสดงเฉพาะพิกัดและขนาดที่คำนวณได้โดยไม่ต้องวางตำแหน่งหน้าต่างจริง |

## Examples

### Open-PlayWrightBrowser Launches your OS-installed Chrome or Edge (auto-detected) with a persistent profile and anti-detection measures.

```powershell
Open-PlayWrightBrowser
Launches your OS-installed Chrome or Edge (auto-detected) with a
persistent profile and anti-detection measures.
```

### Open-PlayWrightBrowser -BrowserType EdgeNormal Launches Microsoft Edge via Playwright's Channel API.

```powershell
Open-PlayWrightBrowser -BrowserType EdgeNormal
Launches Microsoft Edge via Playwright's Channel API.
```

### Open-PlayWrightBrowser -BrowserType ChromiumPlaywright Uses the bundled Playwright Chromium binary.

```powershell
Open-PlayWrightBrowser -BrowserType ChromiumPlaywright
Uses the bundled Playwright Chromium binary.
```

### Open-PlayWrightBrowser -BrowserType FirefoxPlaywright -Headless Launches the bundled Firefox in headless mode.

```powershell
Open-PlayWrightBrowser -BrowserType FirefoxPlaywright -Headless
Launches the bundled Firefox in headless mode.
```

### Open-PlayWrightBrowser -Width 1280 -Height 720 -Force Restarts the browser with a 1280x720 viewport.

```powershell
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
```

## Parameter Details

### `-BrowserType <String>`

> เบราว์เซอร์ที่จะเปิด: Chrome, Edge, Chromium (ตรวจจับ Chrome หรือ Edge โดยอัตโนมัติ), Firefox, หรือ WebKit

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'ChromiumNormal'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-Proxy <String>`

> URL ของเซิร์ฟเวอร์พร็อกซี่ (เช่น http://proxy:8080)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> ตั้งค่าส่วนหัวคำขอ HTTP Accept-Language ของเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> ความกว้างของวิวพอร์ตเริ่มต้นในหน่วยพิกเซล

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `w` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> ความสูงเริ่มต้นของวิวพอร์ตในหน่วยพิกเซล

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `h` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> ปิดเบราว์เซอร์ที่มีอยู่แล้วเริ่มใหม่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> บังคับให้แสดงกล่องโต้ตอบยินยอมการติดตั้งอีกครั้ง

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

> ยินยอมโดยอัตโนมัติให้ติดตั้งซอฟต์แวร์ของบุคคลที่สาม (เบราว์เซอร์ Playwright)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Consent` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> จอภาพที่จะใช้, 0 = ค่าเริ่มต้น, -1 = ไม่ใช้, -2 = จอภาพรองที่กำหนดค่าไว้, ค่าเริ่มต้นคือ $Global:DefaultSecondaryMonitor หรือ 2 หากไม่พบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
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
### `-Fullscreen`

> ขยายหน้าต่างให้เต็มหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> ลบขอบของหน้าต่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
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
### `-SideBySide`

> จัดตำแหน่งหน้าต่างเบราว์เซอร์ให้เต็มหน้าจอบนจอภาพอื่นที่ต่างจาก PowerShell หรือวางไว้ข้าง PowerShell บนจอภาพเดียวกัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
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
### `-Minimize`

> ย่อหน้าต่างให้เล็กลงหลังจากวางตำแหน่ง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-KeysToSend <String[]>`

> การกดแป้นพิมพ์ที่ต้องการส่งไปยังหน้าต่าง ดูเอกสารสำหรับ cmdlet GenXdev\Send-Key

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

> หลีกเลี่ยงอักขระควบคุมและตัวปรับแต่งเมื่อส่งคีย์

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

> คงการโฟกัสคีย์บอร์ดไว้ที่หน้าต่างเป้าหมายเมื่อส่งคีย์

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

> ใช้ Shift+Enter แทน Enter เมื่อส่งคีย์

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

> ความล่าช้าระหว่างสตริงอินพุตที่แตกต่างกันในหน่วยมิลลิวินาทีเมื่อส่งคีย์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> ส่งคืนออบเจกต์ตัวช่วยหน้าต่างสำหรับการจัดการเพิ่มเติม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่าปัญญาประดิษฐ์

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

> ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดลักษณะ AI

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

> จัดเก็บการตั้งค่าเฉพาะในการกำหนดลักษณะถาวร โดยไม่กระทบต่อเซสชัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyOutputCoords`

> แสดงเฉพาะพิกัดและขนาดที่คำนวณได้โดยไม่ต้องวางตำแหน่งหน้าต่างจริง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Connect-PlaywrightViaDebuggingPort.md)
- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PlaywrightProfileDirectory.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Unprotect-WebbrowserTab.md)
