# Open-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `sites

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-BrowserBookmarks [[-Queries] <String[]>] [[-Count] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Términos de búsqueda para filtrar marcadores |
| `-Count` | Int32 | — | — | 1 | `50` | Número máximo de urls para abrir |
| `-Edge` | SwitchParameter | — | — | Named | — | Seleccionar en Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Seleccionar en Google Chrome |
| `-Firefox` | SwitchParameter | — | — | Named | — | Seleccionar en Firefox |
| `-Monitor` | Int32 | — | — | Named | `-1` | El monitor a utilizar, 0 = predeterminado, -1 es descartar, -2 = monitor secundario configurado |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Either will set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor |
| `-Private` | SwitchParameter | — | — | Named | — | Se abre en modo de incógnito/navegación privada |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar habilitación del puerto de depuración, deteniendo los navegadores existentes si es necesario |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Se abre en modo de pantalla completa |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show the browser window (not 1d or hidden) |
| `-Width` | Int32 | — | — | Named | `-1` | El ancho inicial de la ventana del navegador web |
| `-Height` | Int32 | — | — | Named | `-1` | La altura inicial de la ventana del navegador web |
| `-X` | Int32 | — | — | Named | `-999999` | La posición inicial X de la ventana del navegador web |
| `-Y` | Int32 | — | — | Named | `-999999` | La posición Y inicial de la ventana del navegador web |
| `-Left` | SwitchParameter | — | — | Named | — | Colocar la ventana del navegador en el lado izquierdo de la pantalla |
| `-Right` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el lado derecho de la pantalla |
| `-Top` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en la parte superior de la pantalla |
| `-Bottom` | SwitchParameter | — | — | Named | — | Colocar la ventana del navegador en la parte inferior de la pantalla |
| `-Centered` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el centro de la pantalla |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar los controles del navegador |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prevenir la carga de extensiones del navegador |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana del navegador después de abrirla |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Abrir la ventana del navegador en primer plano después de abrir |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimizar la ventana después de posicionar |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana después de posicionarla |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar la ventana a su estado normal después de posicionar |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | No reutilices la ventana del navegador existente; en su lugar, crea una nueva. |
| `-Chromium` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado |
| `-All` | SwitchParameter | — | — | Named | — | Se abre en todos los navegadores modernos registrados |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desactivar el bloqueador de ventanas emergentes |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar caracteres de control al enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Evitar devolver el foco del teclado a PowerShell después de enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retraso entre el envío de diferentes secuencias de teclas en milisegundos |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana del navegador |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Open-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
