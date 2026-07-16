# Set-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wp

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WindowPosition [[-ProcessName] <String>] [<CommonParameters>]

Set-WindowPosition [-Process <Diagnostics.Process>] [<CommonParameters>]

Set-WindowPosition [-WindowHelper <GenXdev.Helpers.WindowObj[]>] [<CommonParameters>]

Set-WindowPosition [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Fullscreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | Имя процесса окна для позиционирования *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | Процесс позиционирования окна *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Вспомогательный объект Get-Window для прямого управления окнами *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Выбор монитора: 0=основной, 1+=конкретный монитор, -1=текущий, -2=вторичный |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удаляет границы окна |
| `-Width` | Int32 | — | — | Named | `-1` | Ширина окна в пикселях |
| `-Height` | Int32 | — | — | Named | `-999999` | Высота окна в пикселях |
| `-X` | Int32 | — | — | Named | `-999999` | Горизонтальное положение окна в пикселях |
| `-Y` | Int32 | — | — | Named | `-999999` | Положение окна по вертикали в пикселях |
| `-Left` | SwitchParameter | — | — | Named | — | Поместить окно в левой части экрана |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Разместить окно в верхней части экрана |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Поместить окно в центр экрана |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Развернуть окно |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна PowerShell |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает вспомогательное окно для каждого процесса |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Либо установит окно в полноэкранный режим на другом мониторе, отличном от PowerShell, либо рядом с PowerShell на одном мониторе. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | После открытия окна сфокусируйте его |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Установить окно на передний план после открытия |
| `-Minimize` | SwitchParameter | — | — | Named | — | Сворачивает окно после позиционирования |
| `-Maximize` | SwitchParameter | — | — | Named | — | После позиционирования разверните окно |
| `-SetRestored` | SwitchParameter | — | — | Named | — | После позиционирования вернуть окно в нормальное состояние |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Экранируйте управляющие символы и модификаторы при отправке нажатий клавиш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | При отправке клавиш удерживать фокус клавиатуры на целевом окне |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Используйте Shift+Enter вместо Enter при отправке ключей |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между различными входными строками в миллисекундах при отправке ключей |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Related Links

- [Set-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
