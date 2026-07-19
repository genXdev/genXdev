# Open-GoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `q

## Synopsis

> Abre consultas de Google en un navegador web con configuración ajustable y amplias opciones de personalización.

## Description

Abre una o más consultas de Google en un navegador web con soporte completo
para múltiples idiomas, selección de monitor, posicionamiento de ventanas, selección
de navegador y automatización del teclado. La función proporciona una interfaz
rica en funciones para realizar búsquedas en Google con control preciso sobre el
comportamiento y la apariencia del navegador.

Las características clave incluyen:
- Soporte para más de 100 idiomas a través del filtro de idioma de Google
- Soporte para múltiples monitores con selección automática o manual
- Posicionamiento de ventanas (izquierda, derecha, arriba, abajo, centrado, pantalla completa)
- Soporte para modo de navegación privada/incógnito
- Modo aplicación para navegación sin distracciones
- Opciones de bloqueo de extensiones y ventanas emergentes
- Gestión de enfoque y manipulación de ventanas
- Procesamiento de consultas por lotes con soporte de canalización
- Automatización de pulsaciones de teclado en ventanas del navegador
- Paso inteligente de parámetros a funciones subyacentes del navegador

La función formatea automáticamente las consultas de búsqueda para el motor de
búsqueda de Google y aplica el filtro de idioma cuando se especifica. Todas las
funcionalidades de posicionamiento y gestión del navegador se heredan de la
función Open-Webbrowser subyacente.

## Syntax

```powershell
Open-GoogleQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Los términos de búsqueda para consultar en Google |
| `-Language` | String | — | — | 1 | — | El idioma para los resultados de búsqueda de Google |
| `-Private` | SwitchParameter | — | — | Named | — | Se abre en modo de incógnito/navegación privada |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar habilitación del puerto de depuración, deteniendo los navegadores existentes si es necesario |
| `-Edge` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Se abre en Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Se abre en Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Utilizar el navegador gestionado por Playwright en lugar del navegador instalado en el sistema operativo |
| `-Webkit` | SwitchParameter | — | — | Named | — | Abre el navegador WebKit gestionado por Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Ejecuta el navegador sin una ventana visible |
| `-All` | SwitchParameter | — | — | Named | — | Se abre en todos los navegadores modernos registrados |
| `-Monitor` | Int32 | — | — | Named | `-1` | El monitor a utilizar: 0 = predeterminado, -1 = descartar, -2 = Monitor secundario configurado, el valor predeterminado es -1 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Se abre en modo de pantalla completa |
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
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desactivar el bloqueador de ventanas emergentes |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar caracteres de control al enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Evitar devolver el foco del teclado a PowerShell después de enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retraso entre el envío de diferentes secuencias de teclas en milisegundos |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana del navegador después de abrirla |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Abrir la ventana del navegador en primer plano después de abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana después de posicionarla |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar la ventana a su estado normal después de posicionar |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | No reutilices la ventana del navegador existente; en su lugar, crea una nueva. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve un objeto [System.Diagnostics.Process] del proceso del navegador |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Después de abrir el navegador web, devuelve la url |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloque la ventana del navegador en pantalla completa en un monitor diferente al de PowerShell, o en paralelo con PowerShell en el mismo monitor. |

## Examples

### Open-GoogleQuery -Queries "PowerShell scripting" -Language "English" -Monitor 0

```powershell
Open-GoogleQuery -Queries "PowerShell scripting" -Language "English" -Monitor 0
```

Abre una búsqueda en Google de "PowerShell scripting" en inglés en el monitor principal.

### q "machine learning algorithms" -m 2 -fs

```powershell
q "machine learning algorithms" -m 2 -fs
```

Abre una búsqueda en Google de "algoritmos de aprendizaje automático" en modo de pantalla completa
en el monitor 2 usando alias.

### "PowerShell", "Python", "JavaScript" | Open-GoogleQuery -Language "English" -Chrome

```powershell
"PowerShell", "Python", "JavaScript" | Open-GoogleQuery -Language "English" -Chrome
```

Abre múltiples búsquedas de Google en Chrome a través de la entrada de canalización, cada una en inglés.

### Open-GoogleQuery -Queries "artificial intelligence" -Private -NewWindow

```powershell
Open-GoogleQuery -Queries "artificial intelligence" -Private -NewWindow
```

Abre una búsqueda privada de "inteligencia artificial" en una nueva ventana.

### Open-GoogleQuery -Queries "web development" -ApplicationMode -Centered

```powershell
Open-GoogleQuery -Queries "web development" -ApplicationMode -Centered
```

Abre una búsqueda en modo aplicación (sin controles de navegador) centrada en la pantalla.

## Related Links

- [Open-GoogleQuery on GitHub](https://github.com/genXdev/genXdev)
