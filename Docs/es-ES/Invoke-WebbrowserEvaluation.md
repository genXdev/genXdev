# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Ejecuta código JavaScript en una pestaña del navegador web seleccionada.

## Description

<details>
<summary><b>Expand description</b></summary>

Ejecuta código JavaScript en una pestaña del navegador seleccionada con soporte para async/await,
promesas y sincronización de datos entre PowerShell y el contexto del navegador.
Puede ejecutar código desde cadenas, archivos o URLs.

Esta función proporciona acceso completo a las API del navegador, incluidos IndexedDB,
localStorage, sessionStorage y otras funciones de la plataforma web. Incluye
manejo de errores integrado, gestión de tiempo de espera y soporte para devolver múltiples
resultados desde funciones generadoras.

La función utiliza Playwright para la automatización del navegador, lo que proporciona acceso
privilegiado que evita las restricciones de seguridad estándar de JavaScript en el contexto
de la página actual. Esto permite acceder a las API de almacenamiento, recursos de
orígenes cruzados (dentro de la misma pestaña) y otras funciones del navegador que
normalmente estarían restringidas en contextos web estándar.

Capacidades clave:
- Soporte para async/await y Promesas
- Funciones generadoras con soporte para yield
- Sincronización de datos mediante $Global:Data
- Acceso privilegiado a las API de almacenamiento del navegador
- Evita las restricciones de la política de mismo origen para el almacenamiento de la página actual
- Enumeración y extracción de datos de IndexedDB
- Manipulación del DOM y acceso a la API web
- Manejo de errores y gestión de tiempo de espera

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Código JavaScript, ruta de archivo o URL a ejecutar |
| `-Inspect` | SwitchParameter | — | — | Named | — | Pausar en el depurador del navegador antes de ejecutar |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Evitar selección automática de pestañas |
| `-Edge` | SwitchParameter | — | — | Named | — | Usa el navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Usa el navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Usa Microsoft Edge o Google Chrome, según cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Usa el navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Use el navegador WebKit gestionado por Playwright |
| `-Page` | Object | — | — | Named | — | Referencia al objeto de página del navegador |
| `-ByReference` | PSObject | — | — | Named | — | Objeto de referencia de sesión del navegador |

## Examples

### // Execute simple JavaScript Invoke-WebbrowserEvaluation "document.title = 'hello world'"

```powershell
// Execute simple JavaScript
Invoke-WebbrowserEvaluation "document.title = 'hello world'"
```

### PS>

```powershell
PS>
```

// Sincronizando datos
Select-WebbrowserTab -Force;
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Título del documento : $($Global:Data.title)
    valor de retorno    : $Number
";

### PS>

```powershell
PS>
```

Compatibilidad con promesas
Select-WebbrowserTab -Force;
Invoke-WebbrowserEvaluation "
    let myList = [];
    return new Promise((resolve) => {
        let i = 0;
        let a = setInterval(() => {
            myList.push(++i);
            if (i == 10) {
                clearInterval(a);
                resolve(myList);
            }
        }, 1000);
    });
"

### PS>

```powershell
PS>
```

// Soporte para promesas y más

// esta función devuelve todas las filas de todas las tablas/almacenes de datos de todas las bases de datos de indexedDb en la pestaña seleccionada
// tenga cuidado, no todos los sitios web usan indexedDb, podría devolver un conjunto vacío

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // enumerar todas las bases de datos indexedDB
    for (let db of await indexedDB.databases()) {

        // solicitar abrir base de datos
        let openRequest = await indexedDB.open(db.name);

        // esperar a que se llamen los manejadores de eventos
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // obtener referencia
        let openedDb = openRequest.result;

        // inicializar resultado
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // iterar por los nombres de los almacenes de objetos
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // referencia
            let storeName = openedDb.objectStoreNames[i];

            // iniciar transacción de solo lectura
            let tr = openedDb.transaction(storeName);

            // obtener el manejador del almacén de objetos
            let store = tr.objectStore(storeName);

            // solicitar todos los datos
            let getRequest = store.getAll();

            // esperar resultado
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // añadir resultado
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // enviar el contenido de esta base de datos al pipeline de PowerShell y continuar
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// NOTA DE SEGURIDAD: Este ejemplo básico funciona porque el módulo usa automatización de navegador Playwright,
// que evita las restricciones normales de seguridad de JavaScript en el contexto de la página actual.
// Las páginas web estándar no pueden acceder a IndexedDB desde otros orígenes, pero Playwright tiene los mismos privilegios que el propio sitio web.
// Consulte el ejemplo mejorado a continuación para obtener más detalles sobre consideraciones de seguridad.

### PS>

```powershell
PS>
```

// Enumeración mejorada de IndexedDB con metadatos y manejo de errores

// Este enfoque mejorado proporciona una extracción de datos de IndexedDB más completa, incluyendo
// conteos de bases de datos, manejo de errores y metadatos. A diferencia del ejemplo básico anterior, esta
// versión maneja restricciones de seguridad, proporciona información detallada de los almacenes e
// incluye conteos de registros sin necesariamente recuperar todos los datos.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Enumeración mejorada de IndexedDB con manejo completo de errores
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Abrir base de datos con tiempo de espera
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Tiempo de espera de apertura de base de datos agotado')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Procesar cada almacén de objetos
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Obtener conteo de registros (más rápido que recuperar todos los datos)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Tiempo de espera de conteo agotado')), 3000);
                    });

                    dbResult.Stores.push({
                        StoreName: storeName,
                        RecordCount: count,
                        KeyPath: store.keyPath,
                        AutoIncrement: store.autoIncrement,
                        IndexNames: Array.from(store.indexNames)
                    });

                } catch (storeError) {
                    dbResult.Stores.push({
                        StoreName: storeName,
                        Error: storeError.message
                    });
                }
            }

            results.push(dbResult);
            db.close();

        } catch (dbError) {
            results.push({
                DatabaseName: dbInfo.name,
                Error: dbError.message
            });
        }
    }

    yield results;
";

$EnhancedIndexedDbData | ConvertTo-Json -Depth 10

// Diferencias clave respecto al ejemplo básico:
// 1. Incluye manejo de errores para problemas de acceso a bases de datos
// 2. Proporciona metadatos (KeyPath, AutoIncrement, IndexNames)
// 3. Obtiene conteos de registros sin recuperar todos los datos (más eficiente)
// 4. Maneja escenarios de tiempo de espera
// 5. Devuelve información estructurada sobre el esquema de la base de datos
// 6. Más adecuado para bases de datos grandes donde recuperar todos los datos sería lento

// CONSIDERACIONES DE SEGURIDAD PARA EL ACCESO A INDEXEDDB:
// Ambos ejemplos funcionan porque este módulo utiliza la automatización del navegador Playwright,
// que evita las restricciones de seguridad estándar de JavaScript en el contexto
// de la página actual:

// Limitaciones estándar de JavaScript:
// - La política de mismo origen restringe el acceso a IndexedDB desde otros orígenes
// - Algunas bases de datos pueden estar ocultas o protegidas por funciones de seguridad del navegador
// - El acceso a bases de datos de origen cruzado generalmente está bloqueado
// - Las bases de datos de los service workers pueden tener protección adicional

// Cómo este ejemplo evita las restricciones:
// - Utiliza la automatización del navegador Playwright para acceso privilegiado
// - Se ejecuta en el contexto de la página real, no en un entorno aislado
// - Tiene los mismos permisos que el propio sitio web para su propio almacenamiento
// - Puede acceder a todas las bases de datos creadas por el origen/dominio actual

// Limitaciones:
// - No puede acceder a bases de datos de otros orígenes/dominios en el mismo navegador
// - No puede acceder a bases de datos de otros perfiles de navegador o navegación privada
// - Algunas extensiones del navegador pueden crear almacenamiento aislado no accesible mediante JavaScript

// Enfoques alternativos para máximo acceso:
// - Usar GenXdev.Webbrowser con múltiples pestañas de diferentes orígenes
// - Combinar con acceso al sistema de archivos de los directorios de perfil del navegador (cuando sea posible)
// - Usar automatización del navegador para navegar entre diferentes dominios

### PS>

```powershell
PS>
```

Compatibilidad con resultados canalizados
Select-WebbrowserTab -Force;
Invoke-WebbrowserEvaluation "

    for (let i = 0; i < 10; i++) {

        await (new Promise((resolve) => setTimeout(resolve, 1000)));

        yield i;
    }
";

### PS> Get-ChildItem *.js | Invoke-WebbrowserEvaluation -Edge

```powershell
PS> Get-ChildItem *.js | Invoke-WebbrowserEvaluation -Edge
```

### PS> ls *.js | et -e

```powershell
PS> ls *.js | et -e
```

## Parameter Details

### `-Scripts <Object[]>`

> Código JavaScript, ruta de archivo o URL a ejecutar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Inspect`

> Pausar en el depurador del navegador antes de ejecutar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoAutoSelectTab`

> Evitar selección automática de pestañas

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

> Usa el navegador Microsoft Edge

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

> Usa el navegador Google Chrome

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

> Usa Microsoft Edge o Google Chrome, según cuál sea el navegador predeterminado

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

> Usa el navegador Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Use el navegador WebKit gestionado por Playwright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Object>`

> Referencia al objeto de página del navegador

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ByReference <PSObject>`

> Objeto de referencia de sesión del navegador

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Show-WebsiteInAllBrowsers.md)
