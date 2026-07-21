# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> เปิดการค้นหาคลังเก็บ GitHub ในเว็บเบราว์เซอร์หรือดำเนินการค้นหาขั้นสูงกับ GitHub REST API ที่รองรับตัวระบุทั้งหมดที่มีและหมวดหมู่การค้นหา (คลังเก็บ, โค้ด, ปัญหา, ผู้ใช้, การคอมมิต, การอภิปราย, หัวข้อ, วิกิ)

## Description

<details>
<summary><b>Expand description</b></summary>

เปิดคำค้นหา Github repository ในเว็บเบราว์เซอร์พร้อมตัวเลือกการปรับแต่งที่ครอบคลุม หรือทำการค้นหาผ่าน API ขั้นสูง ฟังก์ชันนี้มีอินเทอร์เฟซที่ทรงพลังสำหรับการเข้าถึง Github repositories จาก PowerShell ได้อย่างรวดเร็ว พร้อมรองรับหลายเบราว์เซอร์ การจัดตำแหน่งหน้าต่าง การกรองภาษา และระบบอัตโนมัติของคีย์บอร์ด หรือการดึงข้อมูลที่มีโครงสร้างผ่าน API

คุณสมบัติหลัก:

- รองรับการค้นหาหลายคำค้นหาพร้อมกันผ่าน pipeline input
- การกรองตามภาษาเฉพาะพร้อมการปรับเป็นภาษาท้องถิ่นอัตโนมัติ
- รองรับหลายเบราว์เซอร์ (Edge, Chrome, Firefox)
- การจัดตำแหน่งหน้าต่างและการเลือกจอภาพขั้นสูง
- โหมดการเรียกดูส่วนตัว/ไม่ระบุตัวตน
- โหมดแอปพลิเคชันสำหรับการเรียกดูแบบไม่เสียสมาธิ
- ระบบอัตโนมัติของคีย์บอร์ดและการจัดการโฟกัส
- ตัวเลือกการส่งคืน URL สำหรับการใช้งานในโปรแกรม
- การค้นหา API ขั้นสูงพร้อมตัวระบุคุณสมบัติ การเรียงลำดับ การแบ่งหน้า
- รองรับประเภทการค้นหา GitHub ทั้งหมด
- การตรวจสอบสิทธิ์ด้วย personal access token
- การทำงานแบบอะซิงโครนัสสำหรับการค้นหา API
- ผลลัพธ์เป็น JSON ดิบหรือวัตถุที่มีโครงสร้าง

ฟังก์ชันจะสร้าง URL การค้นหา GitHub สำหรับโหมดเว็บหรือ API endpoints สำหรับโหมด API โดยอัตโนมัติ และส่งผ่านพารามิเตอร์ที่เกี่ยวข้องกับเบราว์เซอร์ทั้งหมดไปยังฟังก์ชัน Open-Webbrowser ที่อยู่เบื้องหลังเพื่อพฤติกรรมที่สอดคล้องกัน

</details>
## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | คำค้นหาที่จะดำเนินการบน Github รองรับหลายคำค้นหาและอินพุตแบบไปป์ไลน์สำหรับการค้นหาแบบแบตช์ แต่ละคำค้นหาจะถูกเข้ารหัส URL และใช้เพื่อค้นหา Github |
| `-Type` | String | — | — | Named | `'Code'` | หมวดหมู่หลักในการค้นหา ค่าเริ่มต้นคือ 'โค้ด' |
| `-In` | String[] | — | — | Named | — | ฟิลด์ที่ต้องการค้นหา จะยอมรับเฉพาะตัวเลือกที่ถูกต้องสำหรับชนิดที่เลือกเท่านั้น |
| `-User` | String | — | — | Named | — | จำกัดการค้นหาเฉพาะทรัพยากรของผู้ใช้ (ที่เก็บข้อมูล โค้ด ปัญหา ฯลฯ) |
| `-Org` | String | — | — | Named | — | จำกัดการค้นหาให้อยู่ในองค์กรเท่านั้น |
| `-Repo` | String | — | — | Named | — | จำกัดการค้นหาเฉพาะพื้นที่เก็บข้อมูลที่มีชื่อ ('owner/repo') |
| `-Path` | String | — | — | Named | — | จำกัดการค้นหาโค้ดให้เฉพาะเส้นทางไฟล์หรือไดเรกทอรีที่ระบุ (รองรับตัวแทนตามไวยากรณ์การค้นหาของ GitHub) *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | กรองผลลัพธ์ตามชื่อไฟล์ (ไม่ใช่เส้นทาง) *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | จำกัดการค้นหาโค้ดให้เฉพาะนามสกุลไฟล์ที่กำหนด *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | กรองตามภาษาโปรแกรม |
| `-Size` | String | — | — | Named | — | ขนาดไฟล์/ที่เก็บ รองรับไวยากรณ์ตัวเลขและช่วง (ดูตัวอย่าง) |
| `-State` | String | — | — | Named | — | สำหรับประเด็น/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | ปัญหา/PR: จำกัดเฉพาะที่สร้างโดยผู้ใช้ที่ระบุไว้ *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | ประเด็น/PR: จำกัดเฉพาะที่กำหนดผู้ใช้ *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | ปัญหา/PR: ต้องมีป้ายกำกับที่ตรงกับสตริงที่ระบุทั้งหมด *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | ประเด็น/PR: ต้องไม่มีข้อมูลเมตาบางอย่าง (เช่น ป้ายกำกับ ไมล์สโตน) *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | ฟิลด์การจัดเรียง (ขึ้นอยู่กับประเภท) เช่น "stars", "forks", "updated" ฯลฯ |
| `-Order` | String | — | — | Named | — | ลำดับ 'asc' หรือ 'desc' สำหรับการเรียงลำดับ |
| `-PerPage` | Int32 | — | — | Named | `10` | ขนาดหน้า (สูงสุด 100). |
| `-Page` | Int32 | — | — | Named | `1` | หมายเลขหน้าสำหรับผลลัพธ์แบบแบ่งหน้า |
| `-Token` | String | — | — | Named | — | โทเค็น OAuth ของ GitHub หรือโทเค็นการเข้าถึงส่วนบุคคล หากไม่ระบุ จะใช้ GITHUB_TOKEN หรือตัวแปรสภาพแวดล้อม *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | กำหนดส่วนหัว http accept-lang ของเบราว์เซอร์ |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | ความล่าช้าระหว่างการส่งลำดับคีย์ต่างๆ ในหน่วยมิลลิวินาที *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | จอภาพที่ใช้แสดงผล 0 = ค่าเริ่มต้น, -1 = ทิ้ง, -2 = จอภาพรอง *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | ความกว้างเริ่มต้นของหน้าต่างเบราว์เซอร์ *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | ความสูงเริ่มต้นของหน้าต่างเบราว์เซอร์ *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | ตำแหน่ง X เริ่มต้นของหน้าต่างเบราว์เซอร์ *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | ตำแหน่ง Y เริ่มต้นของหน้าต่างเบราว์เซอร์ *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | คีย์ที่ต้องกดเพื่อส่งไปยังหน้าต่างเบราว์เซอร์ โปรดดูเอกสารประกอบสำหรับ cmdlet GenXdev\Send-Key *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | จับคู่เฉพาะผลลัพธ์ที่ตรงตามตัวพิมพ์ใหญ่-เล็ก (ถ้ารองรับ) |
| `-AsJob` | SwitchParameter | — | — | Named | — | รันการค้นหาแบบอะซิงโครนัสเป็นงาน PowerShell *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | @{response=รับค่าจากไปป์ไลน์โดยคุณสมบัติที่ตรงกับค่าที่ระบุของอาร์เรย์ของคีย์เวิร์ด} *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | ใช้โหมด API แทนการเปิดในเบราว์เซอร์ *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | เปิดเบราว์เซอร์ในโหมดการเรียกดูส่วนตัว/ไม่ระบุตัวตนเพื่อการค้นหาแบบไม่เปิดเผยตัวตน *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | บังคับเปิดพอร์ตดีบัก โดยหยุดเบราว์เซอร์ที่มีอยู่หากจำเป็น *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | เปิดผลการค้นหาในเบราว์เซอร์ Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | เปิดผลการค้นหาในเบราว์เซอร์ Google Chrome *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | เปิดผลการค้นหาใน Microsoft Edge หรือ Google Chrome ขึ้นอยู่กับว่าเบราว์เซอร์เริ่มต้นคืออะไร *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | เปิดผลการค้นหาในเบราว์เซอร์ Mozilla Firefox *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | ใช้เบราว์เซอร์ที่จัดการโดย Playwright แทนเบราว์เซอร์ที่ติดตั้งในระบบปฏิบัติการ |
| `-Webkit` | SwitchParameter | — | — | Named | — | เปิดเบราว์เซอร์ WebKit ที่จัดการโดย Playwright หมายถึง -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | เรียกใช้เบราว์เซอร์โดยไม่มีหน้าต่างที่มองเห็นได้ |
| `-All` | SwitchParameter | — | — | Named | — | เปิดในเบราว์เซอร์สมัยใหม่ที่ลงทะเบียนทั้งหมด |
| `-FullScreen` | SwitchParameter | — | — | Named | — | เปิดเบราว์เซอร์ในโหมดเต็มหน้าจอ *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ทางด้านซ้ายของหน้าจอ *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ทางด้านขวาของหน้าจอ *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ที่ด้านบนของหน้าจอ *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ที่ด้านล่างของหน้าจอ *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ตรงกลางหน้าจอ *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ซ่อนส่วนควบคุมของเบราว์เซอร์ *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ป้องกันการโหลดส่วนขยายของเบราว์เซอร์ *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ปิดการใช้งานตัวบล็อกป๊อปอัปในเบราว์เซอร์ *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | โฟกัสหน้าต่างเบราว์เซอร์หลังจากเปิด *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ตั้งหน้าต่างเบราว์เซอร์ให้อยู่เบื้องหน้าหลังจากเปิด *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | ขยายหน้าต่างให้ใหญ่สุดหลังจากจัดตำแหน่ง *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | เรียกคืนโฟกัสหน้าต่าง PowerShell *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | อย่าใช้หน้าต่างเบราว์เซอร์ที่มีอยู่ซ้ำ แต่ให้สร้างหน้าต่างใหม่แทน *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | ส่งคืนออบเจ็กต์ [System.Diagnostics.Process] ของเบราว์เซอร์โพรเซสในโหมดเว็บ หรือออบเจ็กต์คิวรีในโหมด API |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | อย่าเปิดเว็บเบราว์เซอร์ เพียงแค่ส่งคืน URL *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | หลังจากเปิดเว็บเบราว์เซอร์แล้ว ให้คืนค่า URL *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | หนีอักขระควบคุมเมื่อส่งคีย์ *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | ป้องกันการคืนโฟกัสของแป้นพิมพ์กลับไปยัง PowerShell หลังจากส่งคีย์ *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ส่ง Shift+Enter แทน Enter ปกติสำหรับการขึ้นบรรทัดใหม่ *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ลบขอบหน้าต่างและแถบชื่อเรื่องเพื่อให้ดูสะอาดตา *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ข้าง PowerShell บนจอภาพเดียวกัน *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าทางเลือกที่จัดเก็บในเซสชันสำหรับการกำหนดลักษณะ *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าทางเลือกที่จัดเก็บในเซสชันสำหรับการกำหนดค่า *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | จัดเก็บการตั้งค่าเฉพาะในค่ากำหนดแบบถาวรโดยไม่กระทบต่อเซสชัน *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Parameter Details

### `-Query <String[]>`

> คำค้นหาที่จะดำเนินการบน Github รองรับหลายคำค้นหาและอินพุตแบบไปป์ไลน์สำหรับการค้นหาแบบแบตช์ แต่ละคำค้นหาจะถูกเข้ารหัส URL และใช้เพื่อค้นหา Github

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Queries` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Type <String>`

> หมวดหมู่หลักในการค้นหา ค่าเริ่มต้นคือ 'โค้ด'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Code'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-In <String[]>`

> ฟิลด์ที่ต้องการค้นหา จะยอมรับเฉพาะตัวเลือกที่ถูกต้องสำหรับชนิดที่เลือกเท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-User <String>`

> จำกัดการค้นหาเฉพาะทรัพยากรของผู้ใช้ (ที่เก็บข้อมูล โค้ด ปัญหา ฯลฯ)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Org <String>`

> จำกัดการค้นหาให้อยู่ในองค์กรเท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repo <String>`

> จำกัดการค้นหาเฉพาะพื้นที่เก็บข้อมูลที่มีชื่อ ('owner/repo')

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> จำกัดการค้นหาโค้ดให้เฉพาะเส้นทางไฟล์หรือไดเรกทอรีที่ระบุ (รองรับตัวแทนตามไวยากรณ์การค้นหาของ GitHub)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Filename <String>`

> กรองผลลัพธ์ตามชื่อไฟล์ (ไม่ใช่เส้นทาง)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Extension <String>`

> จำกัดการค้นหาโค้ดให้เฉพาะนามสกุลไฟล์ที่กำหนด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Language <String>`

> กรองตามภาษาโปรแกรม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Size <String>`

> ขนาดไฟล์/ที่เก็บ รองรับไวยากรณ์ตัวเลขและช่วง (ดูตัวอย่าง)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-State <String>`

> สำหรับประเด็น/PR.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Author <String>`

> ปัญหา/PR: จำกัดเฉพาะที่สร้างโดยผู้ใช้ที่ระบุไว้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Assignee <String>`

> ประเด็น/PR: จำกัดเฉพาะที่กำหนดผู้ใช้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Labels <String[]>`

> ปัญหา/PR: ต้องมีป้ายกำกับที่ตรงกับสตริงที่ระบุทั้งหมด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-No <String[]>`

> ประเด็น/PR: ต้องไม่มีข้อมูลเมตาบางอย่าง (เช่น ป้ายกำกับ ไมล์สโตน)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-SortBy <String>`

> ฟิลด์การจัดเรียง (ขึ้นอยู่กับประเภท) เช่น "stars", "forks", "updated" ฯลฯ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Order <String>`

> ลำดับ 'asc' หรือ 'desc' สำหรับการเรียงลำดับ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerPage <Int32>`

> ขนาดหน้า (สูงสุด 100).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `10` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Int32>`

> หมายเลขหน้าสำหรับผลลัพธ์แบบแบ่งหน้า

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> โทเค็น OAuth ของ GitHub หรือโทเค็นการเข้าถึงส่วนบุคคล หากไม่ระบุ จะใช้ GITHUB_TOKEN หรือตัวแปรสภาพแวดล้อม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-AcceptLang <String>`

> กำหนดส่วนหัว http accept-lang ของเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
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
| **Parameter set** | Web |

<hr/>
### `-Monitor <Int32>`

> จอภาพที่ใช้แสดงผล 0 = ค่าเริ่มต้น, -1 = ทิ้ง, -2 = จอภาพรอง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Width <Int32>`

> ความกว้างเริ่มต้นของหน้าต่างเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Height <Int32>`

> ความสูงเริ่มต้นของหน้าต่างเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-X <Int32>`

> ตำแหน่ง X เริ่มต้นของหน้าต่างเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Y <Int32>`

> ตำแหน่ง Y เริ่มต้นของหน้าต่างเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-KeysToSend <String[]>`

> คีย์ที่ต้องกดเพื่อส่งไปยังหน้าต่างเบราว์เซอร์ โปรดดูเอกสารประกอบสำหรับ cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-CaseSensitive`

> จับคู่เฉพาะผลลัพธ์ที่ตรงตามตัวพิมพ์ใหญ่-เล็ก (ถ้ารองรับ)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsJob`

> รันการค้นหาแบบอะซิงโครนัสเป็นงาน PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-RawResponse`

> @{response=รับค่าจากไปป์ไลน์โดยคุณสมบัติที่ตรงกับค่าที่ระบุของอาร์เรย์ของคีย์เวิร์ด}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Api`

> ใช้โหมด API แทนการเปิดในเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Private`

> เปิดเบราว์เซอร์ในโหมดการเรียกดูส่วนตัว/ไม่ระบุตัวตนเพื่อการค้นหาแบบไม่เปิดเผยตัวตน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Force`

> บังคับเปิดพอร์ตดีบัก โดยหยุดเบราว์เซอร์ที่มีอยู่หากจำเป็น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Edge`

> เปิดผลการค้นหาในเบราว์เซอร์ Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chrome`

> เปิดผลการค้นหาในเบราว์เซอร์ Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chromium`

> เปิดผลการค้นหาใน Microsoft Edge หรือ Google Chrome ขึ้นอยู่กับว่าเบราว์เซอร์เริ่มต้นคืออะไร

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Firefox`

> เปิดผลการค้นหาในเบราว์เซอร์ Mozilla Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
### `-FullScreen`

> เปิดเบราว์เซอร์ในโหมดเต็มหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Left`

> วางหน้าต่างเบราว์เซอร์ทางด้านซ้ายของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
| **Parameter set** | Web |

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
| **Parameter set** | Web |

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
| **Parameter set** | Web |

<hr/>
### `-Centered`

> วางหน้าต่างเบราว์เซอร์ไว้ตรงกลางหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ApplicationMode`

> ซ่อนส่วนควบคุมของเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
| **Parameter set** | Web |

<hr/>
### `-DisablePopupBlocker`

> ปิดการใช้งานตัวบล็อกป๊อปอัปในเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-FocusWindow`

> โฟกัสหน้าต่างเบราว์เซอร์หลังจากเปิด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SetForeground`

> ตั้งหน้าต่างเบราว์เซอร์ให้อยู่เบื้องหน้าหลังจากเปิด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Maximize`

> ขยายหน้าต่างให้ใหญ่สุดหลังจากจัดตำแหน่ง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-RestoreFocus`

> เรียกคืนโฟกัสหน้าต่าง PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NewWindow`

> อย่าใช้หน้าต่างเบราว์เซอร์ที่มีอยู่ซ้ำ แต่ให้สร้างหน้าต่างใหม่แทน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PassThru`

> ส่งคืนออบเจ็กต์ [System.Diagnostics.Process] ของเบราว์เซอร์โพรเซสในโหมดเว็บ หรือออบเจ็กต์คิวรีในโหมด API

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

> อย่าเปิดเว็บเบราว์เซอร์ เพียงแค่ส่งคืน URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
| **Parameter set** | Web |

<hr/>
### `-SendKeyEscape`

> หนีอักขระควบคุมเมื่อส่งคีย์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> ป้องกันการคืนโฟกัสของแป้นพิมพ์กลับไปยัง PowerShell หลังจากส่งคีย์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
| **Parameter set** | Web |

<hr/>
### `-NoBorders`

> ลบขอบหน้าต่างและแถบชื่อเรื่องเพื่อให้ดูสะอาดตา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SideBySide`

> วางหน้าต่างเบราว์เซอร์ไว้ข้าง PowerShell บนจอภาพเดียวกัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SessionOnly`

> ใช้การตั้งค่าทางเลือกที่จัดเก็บในเซสชันสำหรับการกำหนดลักษณะ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ClearSession`

> ล้างการตั้งค่าทางเลือกที่จัดเก็บในเซสชันสำหรับการกำหนดค่า

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
| **Parameter set** | Web |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-BuiltWithSiteInfo.md)
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
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-YoutubeQuery.md)
