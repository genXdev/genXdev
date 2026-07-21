# Open-YabAIBattle

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `yabbattle`

## Synopsis

> Відкриває гру YabAI Battle у веб-браузері.

## Syntax

```powershell
Open-YabAIBattle [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | Мова інтерфейсу гри |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | Не починайте нову гру, просто спостерігайте за грою ШІ |
| `-Private` | SwitchParameter | — | — | Named | — | Відкривається в режимі інкогніто/приватного перегляду |
| `-Force` | SwitchParameter | — | — | Named | — | Примусово увімкнути порт налагодження, зупиняючи наявні браузери за потреби |
| `-Edge` | SwitchParameter | — | — | Named | — | Відкривається в Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Відкривається в Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Відкривається в Microsoft Edge або Google Chrome, залежно від того, який браузер є стандартним |
| `-Firefox` | SwitchParameter | — | — | Named | — | Відкриває в Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Використовувати керований Playwright браузер замість встановленого в ОС браузера |
| `-Webkit` | SwitchParameter | — | — | Named | — | Відкриває браузер WebKit, керований Playwright. Має на увазі -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Запустити браузер без видимого вікна |
| `-All` | SwitchParameter | — | — | Named | — | Відкривається у всіх зареєстрованих сучасних браузерах |
| `-Monitor` | Int32 | — | — | Named | `-2` | Монітор для використання: 0 = за замовчуванням, -1 = ігнорувати, -2 = налаштований додатковий монітор, за замовчуванням $Global:DefaultSecondaryMonitor або 2, якщо не знайдено |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Відкривається в режимі повного екрана |
| `-Width` | Int32 | — | — | Named | `-1` | Початкова ширина вікна веб-оглядача |
| `-Height` | Int32 | — | — | Named | `-1` | Початкова висота вікна веб-браузера |
| `-X` | Int32 | — | — | Named | `-999999` | Початкове положення X вікна веб-браузера |
| `-Y` | Int32 | — | — | Named | `-999999` | Початкове положення Y вікна веб-браузера |
| `-Left` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера в лівій частині екрана |
| `-Right` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера в правій частині екрана |
| `-Top` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера у верхній частині екрану |
| `-Bottom` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера в нижній частині екрана |
| `-Centered` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера в центрі екрана |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Приховати елементи керування браузером |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Запобігання завантаженню розширень браузера |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Вимкнути блокування спливаючих вікон |
| `-AcceptLang` | String | — | — | Named | — | Встановити HTTP-заголовок accept-lang у браузері |
| `-KeysToSend` | String[] | — | — | Named | — | Натискання клавіш, які надсилаються у вікно браузера. Докладніше див. у документації до командлета GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Екрануйте керуючі символи під час надсилання ключів. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Запобігати поверненню фокусу клавіатури до PowerShell після надсилання клавіш. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Надсилати Shift+Enter замість звичайного Enter для перенесення рядка під час надсилання клавіш. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Затримка в мілісекундах між надсиланням кожного ключа. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Зосередити вікно браузера після відкриття |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Перевести вікно браузера на передній план після відкриття |
| `-Maximize` | SwitchParameter | — | — | Named | — | Збільшити вікно після позиціонування |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Відновити нормальний стан вікна після позиціонування |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Відновити фокус на попередньому вікні після відкриття браузера. |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не використовуйте повторно наявне вікно браузера, натомість створіть нове |
| `-PassThru` | SwitchParameter | — | — | Named | — | Повертає об'єкт [System.Diagnostics.Process] процесу браузера |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.google.com/ |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening the web browser, return the URL |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Не відкривайте в повноекранному режимі |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Покажіть елементи керування браузера |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Видаляє межі вікна браузера. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Розташуйте вікно браузера на весь екран на іншому моніторі, ніж PowerShell, або поруч із PowerShell на тому самому моніторі. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштувань ШІ. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі для вподобань ШІ. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати налаштування лише в постійних параметрах, не впливаючи на сеанс. |

## Examples

### Open-YabAIBattle -Edge -Private -NoFullScreen

```powershell
Open-YabAIBattle -Edge -Private -NoFullScreen
```

Відкриває гру YabAI Battle у Microsoft Edge у режимі приватного перегляду без повного екрана.

### yabbattle -e -incognito -nfs

```powershell
yabbattle -e -incognito -nfs
```

Відкриває гру за допомогою псевдонімів для Edge, режиму інкогніто та без повноекранного режиму.

### Open-YabAIBattle -SpectateOnly -Chrome

```powershell
Open-YabAIBattle -SpectateOnly -Chrome
```

Відкриває гру в режимі спостереження за допомогою Google Chrome для перегляду битв ШІ.

### Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left

```powershell
Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left
```

Відкриває гру з інтерфейсом іспанською мовою, розташованим на лівій стороні монітора 1.

## Parameter Details

### `-Language <String>`

> Мова інтерфейсу гри

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpectateOnly`

> Не починайте нову гру, просто спостерігайте за грою ШІ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Відкривається в режимі інкогніто/приватного перегляду

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

> Примусово увімкнути порт налагодження, зупиняючи наявні браузери за потреби

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

> Відкривається в Microsoft Edge

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

> Відкривається в Google Chrome

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

> Відкривається в Microsoft Edge або Google Chrome, залежно від того, який браузер є стандартним

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

> Відкриває в Firefox

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

> Використовувати керований Playwright браузер замість встановленого в ОС браузера

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

> Відкриває браузер WebKit, керований Playwright. Має на увазі -PlayWright

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

> Запустити браузер без видимого вікна

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

> Відкривається у всіх зареєстрованих сучасних браузерах

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

> Монітор для використання: 0 = за замовчуванням, -1 = ігнорувати, -2 = налаштований додатковий монітор, за замовчуванням $Global:DefaultSecondaryMonitor або 2, якщо не знайдено

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Відкривається в режимі повного екрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Початкова ширина вікна веб-оглядача

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

> Початкова висота вікна веб-браузера

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

> Початкове положення X вікна веб-браузера

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

> Початкове положення Y вікна веб-браузера

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

> Розмістити вікно браузера в лівій частині екрана

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

> Розмістити вікно браузера в правій частині екрана

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

> Розмістити вікно браузера у верхній частині екрану

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

> Розмістити вікно браузера в нижній частині екрана

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

> Розмістити вікно браузера в центрі екрана

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

> Приховати елементи керування браузером

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

> Запобігання завантаженню розширень браузера

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

> Вимкнути блокування спливаючих вікон

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

> Встановити HTTP-заголовок accept-lang у браузері

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

> Натискання клавіш, які надсилаються у вікно браузера. Докладніше див. у документації до командлета GenXdev\Send-Key

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

> Екрануйте керуючі символи під час надсилання ключів.

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

> Запобігати поверненню фокусу клавіатури до PowerShell після надсилання клавіш.

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

> Надсилати Shift+Enter замість звичайного Enter для перенесення рядка під час надсилання клавіш.

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

> Затримка в мілісекундах між надсиланням кожного ключа.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Зосередити вікно браузера після відкриття

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

> Перевести вікно браузера на передній план після відкриття

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

> Збільшити вікно після позиціонування

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

> Відновити нормальний стан вікна після позиціонування

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

> Відновити фокус на попередньому вікні після відкриття браузера.

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

> Не використовуйте повторно наявне вікно браузера, натомість створіть нове

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

> Повертає об'єкт [System.Diagnostics.Process] процесу браузера

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

> https://www.google.com/

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

> After opening the web browser, return the URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoFullScreen`

> Не відкривайте в повноекранному режимі

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nfs`, `nf` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoApplicationMode`

> Покажіть елементи керування браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `na`, `napp`, `noappmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Видаляє межі вікна браузера.

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

> Розташуйте вікно браузера на весь екран на іншому моніторі, ніж PowerShell, або поруч із PowerShell на тому самому моніторі.

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

> Використовуйте альтернативні налаштування, збережені в сеансі, для налаштувань ШІ.

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

> Очистити альтернативні налаштування, збережені в сеансі для вподобань ШІ.

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

> Зберігати налаштування лише в постійних параметрах, не впливаючи на сеанс.

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

- [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GameOfLife.md)
- [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GenXdevAppCatalog.md)
- [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-Timeline.md)
- [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-ViralSimulation.md)
- [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-Yab.md)
