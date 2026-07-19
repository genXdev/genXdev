# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub, `qgh

## Synopsis

> Abre una consulta de búsqueda del repositorio de GitHub en un navegador web o realiza búsquedas avanzadas contra la API REST de GitHub compatibles con todos los calificadores y categorías de búsqueda disponibles (repositorios, código, incidencias, usuarios, commits, discusiones, temas, wikis).

## Description

Abre una consulta de búsqueda de repositorios de GitHub en un navegador web con amplias opciones de personalización o realiza búsquedas avanzadas mediante API. Esta función proporciona una interfaz potente para acceder rápidamente a repositorios de GitHub desde PowerShell, con soporte para múltiples navegadores, posicionamiento de ventanas, filtrado por idioma y automatización del teclado, o para recuperar datos estructurados a través de API. Características principales:

Soporte para múltiples consultas de búsqueda con entrada de pipeline
Filtrado específico por idioma con localización automática
Compatibilidad con varios navegadores (Edge, Chrome, Firefox)
Posicionamiento avanzado de ventanas y selección de monitor
Modo de navegación privada/incógnito
Modo aplicación para navegación sin distracciones
Automatización del teclado y gestión del enfoque
Opciones de retorno de URL para uso programático
Búsqueda avanzada por API con calificadores, ordenación y paginación
Soporte para todos los tipos de búsqueda de GitHub
Autenticación con token de acceso personal
Ejecución asíncrona de trabajos para búsquedas por API
Salida en JSON sin procesar o como objeto estructurado

La función construye automáticamente las URL de búsqueda de GitHub para el modo web o los endpoints de API para el modo API y pasa todos los parámetros relacionados con el navegador a la función subyacente Open-Webbrowser para un comportamiento consistente.

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
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Las consultas de búsqueda a ejecutar en Github. Soporta múltiples consultas y entrada de pipeline para búsqueda por lotes. Cada consulta será codificada en URL y utilizada para buscar en Github. |
| `-Type` | String | — | — | Named | `'Code'` | La categoría principal para buscar. Por defecto es 'Code'. |
| `-In` | String[] | — | — | Named | — | Campo(s) a buscar. Solo se aceptarán opciones válidas para el Tipo seleccionado. |
| `-User` | String | — | — | Named | — | Restringir la búsqueda a los recursos de un usuario (repos, código, incidencias, etc.). |
| `-Org` | String | — | — | Named | — | Restringir la búsqueda a una organización. |
| `-Repo` | String | — | — | Named | — | Restringir la búsqueda a un repositorio nombrado ('propietario/repo'). |
| `-Path` | String | — | — | Named | — | Restringir la búsqueda de código a rutas de archivo o directorio específicas (admite comodines según la sintaxis de búsqueda de GitHub). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filtrar resultados por el nombre del archivo (no por la ruta). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Restringir la búsqueda de código a extensiones de archivo. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Filtrar por lenguaje de programación. |
| `-Size` | String | — | — | Named | — | Tamaño de archivo/repositorio. Admite sintaxis numérica y de rango (ver ejemplos). |
| `-State` | String | — | — | Named | — | Para issues/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: limit to those created by a specified user. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Issues/PR: limitar a aquellos asignados a un usuario. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR: must be labeled with all specified strings. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Incidencias/PR: deben carecer de ciertos metadatos (por ejemplo, etiqueta, hito). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Campo de ordenación (depende del Tipo). Ej.: "stars", "forks", "updated", etc. |
| `-Order` | String | — | — | Named | — | "asc" o "desc" orden para ordenar. |
| `-PerPage` | Int32 | — | — | Named | `10` | Tamaño de página (máx. 100). |
| `-Page` | Int32 | — | — | Named | `1` | Número de página para resultados paginados. |
| `-Token` | String | — | — | Named | — | Token de OAuth de GitHub o Token de Acceso Personal. Si no se proporciona, usa GITHUB_TOKEN o la variable de entorno. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre el envío de diferentes secuencias de teclas en milisegundos. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | El monitor en el que se muestran los resultados. 0 = predeterminado, -1 = descartar, -2 = secundario. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | El ancho inicial de la ventana del navegador. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | The initial height of the browser window. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | La posición X inicial de la ventana del navegador. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | La posición inicial Y de la ventana del navegador. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Teclas a enviar a la ventana del navegador, consulte la documentación del cmdlet GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Coincidir solo con resultados que distinguen entre mayúsculas y minúsculas (cuando sea compatible). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Run the search asynchronously as a PowerShell job. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | Aquest és un text de mostra. *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Use API mode instead of opening in web browser. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Abre el navegador en modo de navegación privada/incógnito para búsquedas anónimas. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar la habilitación del puerto de depuración, deteniendo los navegadores existentes si es necesario. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Abre los resultados de búsqueda en el navegador Microsoft Edge. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Abre los resultados de búsqueda en el navegador Google Chrome. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Abre los resultados de búsqueda en Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Abre los resultados de búsqueda en el navegador Mozilla Firefox. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Utilizar el navegador gestionado por Playwright en lugar del navegador instalado en el sistema operativo |
| `-Webkit` | SwitchParameter | — | — | Named | — | Abre el navegador WebKit gestionado por Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Ejecuta el navegador sin una ventana visible |
| `-All` | SwitchParameter | — | — | Named | — | Se abre en todos los navegadores modernos registrados |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Abre el navegador en modo de pantalla completa. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Coloque la ventana del navegador en el lado izquierdo de la pantalla. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el lado derecho de la pantalla. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en la parte superior de la pantalla. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Oculta los controles del navegador. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prevenir la carga de extensiones del navegador. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Deshabilita el bloqueador de ventanas emergentes en el navegador. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana del navegador después de abrirla. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Traiga la ventana del navegador al frente después de abrirla. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana después de posicionarla. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | No reutilice la ventana del navegador existente; en su lugar, cree una nueva. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve un objeto [System.Diagnostics.Process] del proceso del navegador en modo web o un objeto de consulta en modo API. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://example.com *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Evitar que el foco del teclado regrese a PowerShell después de enviar teclas. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloque la ventana del navegador lado a lado con PowerShell en el mismo monitor. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizar ajustes alternativos almacenados en la sesión para las preferencias. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for preferences. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session. *(Parameter set: )* |

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

## Outputs

- `PSObject`

## Related Links

- [Open-GithubQuery on GitHub](https://github.com/genXdev/genXdev)
