# Set-WindowPositionForSecondary

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wps

## Synopsis

> Размещает окно на дополнительном мониторе с указанными параметрами расположения.

## Description

Эта функция позволяет размещать окна на настроенном дополнительном мониторе с помощью
Set-WindowPosition с различными параметрами расположения, включая выравнивание, размер и
настройки границ. Она обрабатывает выбор монитора на основе глобальной конфигурации и
предоставляет удобную обертку для позиционирования окон на дополнительном мониторе.

## Syntax

```powershell
Set-WindowPositionForSecondary [[-Process] <Diagnostics.Process[]>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NoBorders] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Process` | Diagnostics.Process[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Процесс позиционирования окна |
| `-Monitor` | Int32 | — | — | Named | `-2` | Используемый монитор: 0=по умолчанию, -1=игнорировать, -2=настроен |
| `-Width` | Int32 | — | — | Named | `-1` | Начальная ширина окна |
| `-Height` | Int32 | — | — | Named | `-1` | Начальная высота окна |
| `-X` | Int32 | — | — | Named | `-999999` | Начальная позиция окна по оси X |
| `-Y` | Int32 | — | — | Named | `-999999` | Начальная позиция окна по оси Y |
| `-Left` | SwitchParameter | — | — | Named | — | Поместить окно в левой части экрана |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Разместить окно в верхней части экрана |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Поместить окно в центр экрана |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Отправляет F11 в окно |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удаляет границы окна |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна PowerShell |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Фокусировать окно после позиционирования |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Переместить окно на передний план после позиционирования |
| `-Maximize` | SwitchParameter | — | — | Named | — | После позиционирования разверните окно |
| `-SetRestored` | SwitchParameter | — | — | Named | — | После позиционирования вернуть окно в нормальное состояние |
| `-KeysToSend` | String[] | — | — | Named | — | Нажатия клавиш для отправки в окно после позиционирования |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Экранируйте управляющие символы и модификаторы при отправке нажатий клавиш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | При отправке клавиш удерживать фокус клавиатуры на целевом окне |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Используйте Shift+Enter вместо Enter при отправке ключей |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между различными входными строками в миллисекундах при отправке ключей |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает объект процесса после позиционирования |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Расположите окно рядом с PowerShell на одном мониторе |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Set-WindowPositionForSecondary -Process "notepad" -Width 800 -Height 600 `     -Centered -NoBorders

```powershell
Set-WindowPositionForSecondary -Process "notepad" -Width 800 -Height 600 `
    -Centered -NoBorders
```

### wps notepad -w 800 -h 600 -c -nb

```powershell
wps notepad -w 800 -h 600 -c -nb
```

## Related Links

- [Set-WindowPositionForSecondary on GitHub](https://github.com/genXdev/genXdev)
