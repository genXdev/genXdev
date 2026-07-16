# Set-WindowPositionForSecondary

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wps

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WindowPositionForSecondary [[-Process] <Diagnostics.Process[]>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NoBorders] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Process` | Diagnostics.Process[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | El proceso de la ventana a la posición |
| `-Monitor` | Int32 | — | — | Named | `-2` | El monitor a utilizar, 0=predeterminado, -1=descartar, -2=configurado |
| `-Width` | Int32 | — | — | Named | `-1` | El ancho inicial de la ventana |
| `-Height` | Int32 | — | — | Named | `-1` | La altura inicial de la ventana |
| `-X` | Int32 | — | — | Named | `-999999` | La posición inicial X de la ventana |
| `-Y` | Int32 | — | — | Named | `-999999` | La posición inicial Y de la ventana |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Coloca la ventana en la parte superior de la pantalla. |
| `-Bottom` | SwitchParameter | — | — | Named | — | Colocar ventana en la parte inferior de la pantalla |
| `-Centered` | SwitchParameter | — | — | Named | — | Place window in the center of the screen |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Envía F11 a la ventana |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana después de posicionar |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Colocar la ventana en primer plano después de posicionar |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana después de posicionarla |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar la ventana a su estado normal después de posicionar |
| `-KeysToSend` | String[] | — | — | Named | — | Pulsaciones de teclas para enviar a la ventana después de posicionarla |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar los caracteres de control y modificadores al enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado en la ventana objetivo al enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre diferentes cadenas de entrada en milisegundos al enviar teclas |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve el objeto de proceso después de posicionar |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloque la ventana una al lado de la otra con PowerShell en el mismo monitor |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Set-WindowPositionForSecondary on GitHub](https://github.com/genXdev/genXdev)
