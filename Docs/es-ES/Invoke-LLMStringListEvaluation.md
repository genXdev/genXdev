# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getlist`, `getstring`

## Synopsis

> Extrae o genera una lista de cadenas relevantes del texto de entrada mediante análisis de IA.

## Description

Esta función utiliza modelos de IA para analizar texto de entrada y extraer o generar una lista de cadenas relevantes. Puede procesar texto para identificar puntos clave, extraer elementos de listas o generar conceptos relacionados. La entrada se puede proporcionar directamente mediante parámetros, desde la canalización o desde el portapapeles del sistema. La función devuelve una matriz de cadenas y, opcionalmente, copia los resultados al portapapeles.

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | .DETALLE
El cmdlet Get-ItemProperty obtiene las propiedades del elemento especificado. Por ejemplo, puede usar este cmdlet para obtener el valor de una entrada del Registro y sus datos.
Este cmdlet obtiene las propiedades del elemento, pero no muestra el elemento en sí. Para obtener el elemento, use el cmdlet Get-Item.

En el Registro, el cmdlet Get-ItemProperty obtiene los datos de la clave del Registro especificada. El nombre del comando indica la entrada del Registro que se va a obtener, y el comando genera los valores de las entradas del Registro (subclaves) y los datos.

En las unidades, el cmdlet Get-ItemProperty obtiene las propiedades del elemento. Por ejemplo, puede usar este cmdlet para obtener el valor de la propiedad IsReadOnly de un objeto de archivo.

Los parámetros dinámicos o específicos del proveedor son aquellos que agrega un proveedor al cmdlet Get-ItemProperty. Estos parámetros solo están disponibles cuando se usa el cmdlet en una unidad habilitada para el proveedor. Para obtener una lista de los parámetros dinámicos, consulte la documentación del proveedor, o use el comando Get-Help para el cmdlet en una unidad habilitada para el proveedor.

Nota: Las unidades del sistema de archivos no son compatibles con Windows PowerShell 1.0 ni 2.0. El parámetro dynamic sigue siendo válido y se puede usar, aunque Get-ItemProperty en las unidades del sistema de archivos no admitirá parámetros dinámicos.

Nota: Los parámetros dinámicos se comportan de manera diferente en los diferentes proveedores. Para obtener más información sobre los parámetros dinámicos del proveedor, consulte la Ayuda de "about_Providers". |
| `-Instructions` | String | — | — | 1 | `''` | Instrucciones para el modelo de IA sobre cómo generar la lista de cadenas |
| `-Attachments` | String[] | — | — | 2 | `@()` | Matriz de rutas de archivo para adjuntar |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nivel de detalle de la imagen |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Matriz de definiciones de funciones |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Matriz de definiciones de comandos de PowerShell para usar como herramientas |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Matriz de nombres de comandos que no requieren confirmación |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del punto de conexión de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica que el LLM no tiene soporte para esquemas JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copiar el resultado al portapapeles |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | El cmdlet Set-DefaultAudioDevice establece el dispositivo de audio predeterminado del sistema. Especifica el dispositivo de audio que se va a configurar como predeterminado mediante el parámetro DeviceName. El dispositivo de audio debe estar presente en el sistema. Puedes obtener los nombres de los dispositivos de audio mediante el cmdlet Get-AudioDevice.

Nota: Este cmdlet requiere privilegios de administrador. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | .SYNOPSIS
Obtiene eventos de reinicio del sistema desde el registro de eventos de Windows.

.DESCRIPTION
Este cmdlet recupera eventos relacionados con reinicios del sistema a partir de los registros de eventos de Windows. Busca eventos con ID 1074, 6005, 6006, 6008, 6009 y 6013 de los registros System y Application. Incluye la hora del evento, el mensaje y el nombre del equipo. Por defecto, devuelve los eventos de las últimas 24 horas.

.PARAMETER Hours
Especifica el número de horas hacia atrás para buscar eventos de reinicio. El valor predeterminado es 24 horas.

.PARAMETER LogNames
Especifica los nombres de los registros de eventos a buscar. Los valores predeterminados son 'System' y 'Application'.

.PARAMETER MaxEvents
Especifica el número máximo de eventos a devolver. El valor predeterminado es 1000.

.PARAMETER ComputerName
Especifica el nombre del equipo desde el que se recuperan los eventos. El valor predeterminado es el equipo local.

.EJEMPLO
Get-SystemRebootEvent
Este ejemplo devuelve eventos de reinicio del sistema de las últimas 24 horas desde el equipo local.

.EJEMPLO
Get-SystemRebootEvent -Hours 48 -MaxEvents 500
Este ejemplo devuelve eventos de reinicio de las últimas 48 horas con un máximo de 500 eventos.

.EJEMPLO
Get-SystemRebootEvent -ComputerName 'SERVER01'
Este ejemplo devuelve eventos de reinicio de las últimas 24 horas desde el equipo remoto 'SERVER01'.

.NOTAS
Autor: Scripting Utilities
Versión: 1.0
Requiere: Permisos de administrador para acceder a registros de eventos remotos. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .DESCRIPTION
El cmdlet Get-Member obtiene los miembros (propiedades y métodos) de los objetos. 

Para especificar el objeto, use el parámetro InputObject o canalice un objeto a Get-Member. 

Para obtener información sobre los miembros estáticos (miembros de la clase, no de la instancia), use el parámetro Static. 

Para obtener solo ciertos tipos de miembros, como métodos o propiedades, use el parámetro MemberType. |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar texto a voz para las respuestas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Habilitar texto a voz para las respuestas de pensamiento de IA |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | No almacenar la sesión en la caché de sesiones |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Habilitar herramientas predeterminadas para el modelo de IA |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar configuraciones alternativas almacenadas en la sesión para preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Borrar configuraciones alternativas almacenadas en la sesión para preferencias de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Almacenar la configuración solo en preferencias persistentes sin afectar la sesión |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | El comando Set-MpPreference configura las preferencias de Windows Defender. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtra tipos específicos de bloques de marcado. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para la aleatoriedad de la respuesta de audio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para la aleatoriedad de la respuesta de texto. |
| `-Language` | String | — | — | Named | — | es |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de hilos de CPU a utilizar. |
| `-SuppressRegex` | String | — | — | Named | — | Expresión regular para suprimir ciertas salidas. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio para el procesamiento. |
| `-SilenceThreshold` | Double | — | — | Named | — | Umbral de silencio para la detección de audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalización por longitud para la generación de secuencias. |
| `-EntropyThreshold` | Double | — | — | Named | — | Umbral de entropía para filtrado de salida. |
| `-LogProbThreshold` | Double | — | — | Named | — | Umbral de probabilidad logarítmica para el filtrado de salida. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Sin umbral de voz para la detección de audio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Deshabilitar la salida de voz. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desactivar la salida de voz para los pensamientos. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desactivar VOX (activación por voz). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Usa la captura de audio del escritorio. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Deshabilitar el uso de contexto. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Utilice la estrategia de muestreo por haz de búsqueda. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | El parámetro 'exclude' especifica los nombres de los cmdlets que se excluirán del módulo. Use una lista separada por comas. No se permiten caracteres comodín. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longitud máxima de devolución de llamada para llamadas a herramientas. |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Parameter Details

### `-Text <String>`

> .DETALLE
El cmdlet Get-ItemProperty obtiene las propiedades del elemento especificado. Por ejemplo, puede usar este cmdlet para obtener el valor de una entrada del Registro y sus datos.
Este cmdlet obtiene las propiedades del elemento, pero no muestra el elemento en sí. Para obtener el elemento, use el cmdlet Get-Item.

En el Registro, el cmdlet Get-ItemProperty obtiene los datos de la clave del Registro especificada. El nombre del comando indica la entrada del Registro que se va a obtener, y el comando genera los valores de las entradas del Registro (subclaves) y los datos.

En las unidades, el cmdlet Get-ItemProperty obtiene las propiedades del elemento. Por ejemplo, puede usar este cmdlet para obtener el valor de la propiedad IsReadOnly de un objeto de archivo.

Los parámetros dinámicos o específicos del proveedor son aquellos que agrega un proveedor al cmdlet Get-ItemProperty. Estos parámetros solo están disponibles cuando se usa el cmdlet en una unidad habilitada para el proveedor. Para obtener una lista de los parámetros dinámicos, consulte la documentación del proveedor, o use el comando Get-Help para el cmdlet en una unidad habilitada para el proveedor.

Nota: Las unidades del sistema de archivos no son compatibles con Windows PowerShell 1.0 ni 2.0. El parámetro dynamic sigue siendo válido y se puede usar, aunque Get-ItemProperty en las unidades del sistema de archivos no admitirá parámetros dinámicos.

Nota: Los parámetros dinámicos se comportan de manera diferente en los diferentes proveedores. Para obtener más información sobre los parámetros dinámicos del proveedor, consulte la Ayuda de "about_Providers".

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> Instrucciones para el modelo de IA sobre cómo generar la lista de cadenas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> Matriz de rutas de archivo para adjuntar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Temperatura para la aleatoriedad de la respuesta (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Nivel de detalle de la imagen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'low'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Matriz de definiciones de funciones

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Matriz de definiciones de comandos de PowerShell para usar como herramientas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Matriz de nombres de comandos que no requieren confirmación

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> El tipo de consulta de LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Knowledge'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> El identificador o patrón de modelo a utilizar para operaciones de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> La URL del punto de conexión de la API para operaciones de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> La clave API para operaciones de IA autenticadas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Indica que el LLM no tiene soporte para esquemas JSON

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> El tiempo de espera en segundos para las operaciones de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Ruta de base de datos para archivos de datos de preferencias

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetClipboard`

> Copiar el resultado al portapapeles

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> El cmdlet Set-DefaultAudioDevice establece el dispositivo de audio predeterminado del sistema. Especifica el dispositivo de audio que se va a configurar como predeterminado mediante el parámetro DeviceName. El dispositivo de audio debe estar presente en el sistema. Puedes obtener los nombres de los dispositivos de audio mediante el cmdlet Get-AudioDevice.

Nota: Este cmdlet requiere privilegios de administrador.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> .SYNOPSIS
Obtiene eventos de reinicio del sistema desde el registro de eventos de Windows.

.DESCRIPTION
Este cmdlet recupera eventos relacionados con reinicios del sistema a partir de los registros de eventos de Windows. Busca eventos con ID 1074, 6005, 6006, 6008, 6009 y 6013 de los registros System y Application. Incluye la hora del evento, el mensaje y el nombre del equipo. Por defecto, devuelve los eventos de las últimas 24 horas.

.PARAMETER Hours
Especifica el número de horas hacia atrás para buscar eventos de reinicio. El valor predeterminado es 24 horas.

.PARAMETER LogNames
Especifica los nombres de los registros de eventos a buscar. Los valores predeterminados son 'System' y 'Application'.

.PARAMETER MaxEvents
Especifica el número máximo de eventos a devolver. El valor predeterminado es 1000.

.PARAMETER ComputerName
Especifica el nombre del equipo desde el que se recuperan los eventos. El valor predeterminado es el equipo local.

.EJEMPLO
Get-SystemRebootEvent
Este ejemplo devuelve eventos de reinicio del sistema de las últimas 24 horas desde el equipo local.

.EJEMPLO
Get-SystemRebootEvent -Hours 48 -MaxEvents 500
Este ejemplo devuelve eventos de reinicio de las últimas 48 horas con un máximo de 500 eventos.

.EJEMPLO
Get-SystemRebootEvent -ComputerName 'SERVER01'
Este ejemplo devuelve eventos de reinicio de las últimas 24 horas desde el equipo remoto 'SERVER01'.

.NOTAS
Autor: Scripting Utilities
Versión: 1.0
Requiere: Permisos de administrador para acceder a registros de eventos remotos.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> .DESCRIPTION
El cmdlet Get-Member obtiene los miembros (propiedades y métodos) de los objetos. 

Para especificar el objeto, use el parámetro InputObject o canalice un objeto a Get-Member. 

Para obtener información sobre los miembros estáticos (miembros de la clase, no de la instancia), use el parámetro Static. 

Para obtener solo ciertos tipos de miembros, como métodos o propiedades, use el parámetro MemberType.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> Habilitar texto a voz para las respuestas de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> Habilitar texto a voz para las respuestas de pensamiento de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> No almacenar la sesión en la caché de sesiones

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowDefaultTools`

> Habilitar herramientas predeterminadas para el modelo de IA

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Usar configuraciones alternativas almacenadas en la sesión para preferencias de IA

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

> Borrar configuraciones alternativas almacenadas en la sesión para preferencias de IA

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

> Almacenar la configuración solo en preferencias persistentes sin afectar la sesión

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> El comando Set-MpPreference configura las preferencias de Windows Defender.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> Filtra tipos específicos de bloques de marcado.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Temperatura para la aleatoriedad de la respuesta de audio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> Temperatura para la aleatoriedad de la respuesta de texto.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> es

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Número de hilos de CPU a utilizar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Expresión regular para suprimir ciertas salidas.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Tamaño del contexto de audio para el procesamiento.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> Umbral de silencio para la detección de audio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> Penalización por longitud para la generación de secuencias.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> Umbral de entropía para filtrado de salida.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> Umbral de probabilidad logarítmica para el filtrado de salida.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> Sin umbral de voz para la detección de audio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> Deshabilitar la salida de voz.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> Desactivar la salida de voz para los pensamientos.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> Desactivar VOX (activación por voz).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Usa la captura de audio del escritorio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> Deshabilitar el uso de contexto.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Utilice la estrategia de muestreo por haz de búsqueda.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> El parámetro 'exclude' especifica los nombres de los cmdlets que se excluirán del módulo. Use una lista separada por comas. No se permiten caracteres comodín.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Longitud máxima de devolución de llamada para llamadas a herramientas.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String[]`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-LLMQuery.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Update-AllImageMetaData.md)
