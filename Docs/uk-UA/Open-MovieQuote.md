# Open-MovieQuote

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `moviequote`

## Synopsis

> Відкриває відео цитати з фільму у веб-браузері.

## Description

Шукає та відкриває цитати з фільмів за допомогою playphrase.me, дозволяючи вказувати монітор і налаштування браузера. Ця функція надає доступ до великої бази цитат з фільмів з відеокліпами, підтримує кілька мов і розширені параметри конфігурації браузера.

Основні можливості:
- Пошук цитат з фільмів з великої бази
- Підтримка кількох мов з автоматичним визначенням мови
- Розширене позиціонування браузера та керування вікнами
- Підтримка кількох браузерів (Edge, Chrome, Firefox)
- Підтримка режиму приватного перегляду
- Автоматизація клавіатури для взаємодії з браузером
- Підтримка кількох моніторів з точним позиціонуванням

## Syntax

```powershell
Open-MovieQuote -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Запит на виконання. |
| `-Language` | String | — | — | 2 | — | Мова повернутих результатів пошуку |
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
| `-Monitor` | Int32 | — | — | Named | `-1` | Монітор для використання: 0 = за замовчуванням, -1 = ігнорувати, -2 = налаштований додатковий монітор, за замовчуванням -1, без позиціонування |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Відкривається в режимі повного екрана |
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
| `-AcceptLang` | String | — | — | Named | `$null` | Встановити HTTP-заголовок accept-lang у браузері |
| `-KeysToSend` | String[] | — | — | Named | — | Натискання клавіш, які надсилаються у вікно браузера. Докладніше див. у документації до командлета GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Екрануйте керівні символи під час надсилання клавіш. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Запобігати поверненню фокусу клавіатури до PowerShell після надсилання клавіш |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Надіслати Shift+Enter замість звичайного Enter для перенесення рядка |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Затримка між надсиланням різних послідовностей клавіш у мілісекундах |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Зосередити вікно браузера після відкриття |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Перевести вікно браузера на передній план після відкриття |
| `-Maximize` | SwitchParameter | — | — | Named | — | Збільшити вікно після позиціонування |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Відновити нормальний стан вікна після позиціонування |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Відновити фокус вікна PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не використовуйте повторно наявне вікно браузера, натомість створіть нове |
| `-PassThru` | SwitchParameter | — | — | Named | — | Повертає об'єкт [System.Diagnostics.Process] процесу браузера |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Видаляє межі вікна браузера |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.google.com/ |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening the web browser, return the URL |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Розташуйте вікно браузера на весь екран на іншому моніторі, ніж PowerShell, або поруч із PowerShell на тому самому моніторі. |

## Examples

### Open-MovieQuote -Queries "I'll be back"

```powershell
Open-MovieQuote -Queries "I'll be back"
```

Відкриває пошук відомої цитати Термінатора «Я ще повернуся».

### Open-MovieQuote -Queries "Here's looking at you kid" -Monitor 1

```powershell
Open-MovieQuote -Queries "Here's looking at you kid" -Monitor 1
```

Відкриває пошук цитати з Касабланки на моніторі 1.

### moviequote "May the Force be with you" -Language "English" -Private

```powershell
moviequote "May the Force be with you" -Language "English" -Private
```

Відкриває пошук цитати про Зоряні війни англійською мовою в режимі приватного перегляду.

### "I'll be back", "Frankly, my dear" | Open-MovieQuote -Chrome -FullScreen

```powershell
"I'll be back", "Frankly, my dear" | Open-MovieQuote -Chrome -FullScreen
```

Відкриває кілька пошуків кіноцитат у повноекранному режимі Chrome через конвеєр.

## Parameter Details

### `-Queries <String[]>`

> Запит на виконання.

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

> Мова повернутих результатів пошуку

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

> Монітор для використання: 0 = за замовчуванням, -1 = ігнорувати, -2 = налаштований додатковий монітор, за замовчуванням -1, без позиціонування

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

> Відкривається в режимі повного екрана

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
| **Default value** | `$null` |
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

> Екрануйте керівні символи під час надсилання клавіш.

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

> Запобігати поверненню фокусу клавіатури до PowerShell після надсилання клавіш

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

> Надіслати Shift+Enter замість звичайного Enter для перенесення рядка

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

> Затримка між надсиланням різних послідовностей клавіш у мілісекундах

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

> Відновити фокус вікна PowerShell

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
### `-NoBorders`

> Видаляє межі вікна браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань

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

> Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ

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

> Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
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
## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-BuiltWithSiteInfo.md)
- [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GithubQuery.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-InstantStreetViewQuery.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-YoutubeQuery.md)
