# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize`

## Synopsis

> Convierte el lenguaje diplomático o cortés en lenguaje directo, claro y sencillo.

## Description

Esta función toma el lenguaje diplomático y lo traduce para revelar el verdadero significado detrás de expresiones educadas o políticamente correctas. Utiliza modelos de lenguaje de IA para transformar expresiones eufemísticas en declaraciones directas, haciendo que la comunicación sea clara y fácil de entender. La función es particularmente útil para analizar declaraciones políticas, comunicaciones empresariales o cualquier texto donde el significado real pueda estar oculto por el lenguaje diplomático.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | El texto a convertir del lenguaje diplomático |
| `-Instructions` | String | — | — | 1 | `''` | .PARÁMETRO CommonParameters
    Get-MyCommand admite los parámetros comunes: -Verbose, -Debug, -ErrorAction, -WarningAction, -InformationAction, -ProgressAction, -ErrorVariable, -WarningVariable, -InformationVariable, -OutVariable, -OutBuffer y -PipelineVariable. Para obtener más información, consulte about_CommonParameters. |
| `-Temperature` | Double | — | — | Named | `0.0` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del punto de conexión de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica que el LLM no tiene soporte para esquemas JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copiar el texto transformado al portapapeles |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar configuraciones alternativas almacenadas en la sesión para preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Borrar configuraciones alternativas almacenadas en la sesión para preferencias de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Almacenar la configuración solo en preferencias persistentes sin afectar la sesión |
| `-Attachments` | Object[] | — | — | Named | — | Archivos adjuntos a incluir en la operación de IA. |
| `-ImageDetail` | String | — | — | Named | — | Nivel de detalle de la imagen para el procesamiento de IA. |
| `-Functions` | Object[] | — | — | Named | — | Funciones para exponer al modelo de IA. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlets para exponer al modelo de IA. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Nombres de funciones de herramienta que no requieren confirmación. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | .PARAMETER Id
Especifica el ID de la instancia virtual de clúster de conmutación por error que se va a eliminar. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .PARÁMETRO RootItemType

Especifica el nombre de un único elemento basado en el tipo de elemento del inventario de Configuration Manager.

Este parámetro no funciona con consultas basadas en Id. ni con consultas que devuelvan varias clases de elementos. Si la consulta devuelve varias clases de elementos, no se muestra ningún tipo de elemento raíz. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Habla en voz alta durante el procesamiento de la IA. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Deshabilite el almacenamiento en caché de sesión para esta operación. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Permitir el uso de herramientas predeterminadas en la operación de IA. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura de audio para generación de audio por IA. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para la generación de respuesta de IA. |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de hilos de CPU a utilizar para la operación de IA. |
| `-SuppressRegex` | String[] | — | — | Named | — | Expresión regular para suprimir en la salida de la IA. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio para el procesamiento de audio con IA. |
| `-SilenceThreshold` | Double | — | — | Named | — | Umbral de silencio para el procesamiento de audio de IA. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalización por longitud para la generación de secuencias de IA. |
| `-EntropyThreshold` | Double | — | — | Named | — | Umbral de entropía para la salida de IA. |
| `-LogProbThreshold` | Double | — | — | Named | — | Umbral de probabilidad logarítmica para la salida de IA. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Sin umbral de voz para el procesamiento de audio de IA. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | .DESCRIPTION

El cmdlet Remove-AzureADServicePrincipalDelegatedPermissionGrant se utiliza para eliminar una concesión de permiso delegado de un servicio principal en Azure Active Directory.

.PARÁMETROS

 - ObjectId <String>
   El identificador único de la concesión de permiso delegado que se va a eliminar.

 - ServicePrincipalObjectId <String>
   El identificador único del servicio principal del cual se eliminará la concesión de permiso delegado.

.EJEMPLOS

---------------------- EJEMPLO 1: Eliminar una concesión de permiso delegado --------------------------

Remove-AzureADServicePrincipalDelegatedPermissionGrant -ObjectId "a1b2c3d4-e5f6-7890-abcd-ef1234567890" -ServicePrincipalObjectId "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"

Este comando elimina la concesión de permiso delegado especificada del servicio principal. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | No hables pensamientos de IA. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Deshabilitar VOX para la salida de audio de IA. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Usar captura de audio del escritorio para audio de IA. |
| `-NoContext` | SwitchParameter | — | — | Named | — | No utilice el contexto para la operación de IA. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use estrategia de muestreo por haz para la IA. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Este cmdlet agrega una cuenta de usuario de dominio a un grupo local.

El cmdlet Add-LocalGroupMember agrega miembros de seguridad (usuarios o grupos de dominio) a un grupo local de seguridad o distribución. Todos los derechos y permisos que se asignan a un grupo local se otorgan a los miembros agregados al grupo.

Los cmdlets de la cuenta de grupo local, administran y configuran el grupo local de seguridad o distribución en el administrador de cuentas de seguridad local de Windows. Los cmdlets de grupo local requieren permisos de administrador local. A partir de Windows 10, versión 1709, los grupos locales no se pueden administrar con este cmdlet en sistemas Windows 10 que no tengan una cuenta de administrador local. Los comandos que usan el parámetro Miembro para agregar cuentas que son miembros de grupos locales remotos o que están en un grupo local diferente pueden generar errores de infracción de acceso. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | # .PARAMETER ActivityId
Especifica el identificador o nombre de la actividad.
# .PARAMETER ChildActivity
Especifica las actividades secundarias que se deben ejecutar simultáneamente.
# .PARAMETER InputObject
Especifica la entrada.
# .EXAMPLE
Inicia una actividad con el identificador 'tarea1' y sus actividades secundarias.
# .EXAMPLE
Inicia una actividad sin especificar un identificador. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtro para tipos de bloques de marcado en la salida de IA. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longitud máxima de devolución de llamada para llamadas a herramientas. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Parameter Details

### `-Text <String>`

> El texto a convertir del lenguaje diplomático

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

> .PARÁMETRO CommonParameters
    Get-MyCommand admite los parámetros comunes: -Verbose, -Debug, -ErrorAction, -WarningAction, -InformationAction, -ProgressAction, -ErrorVariable, -WarningVariable, -InformationVariable, -OutVariable, -OutBuffer y -PipelineVariable. Para obtener más información, consulte about_CommonParameters.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
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
| **Default value** | `0.0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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

> Copiar el texto transformado al portapapeles

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
### `-Attachments <Object[]>`

> Archivos adjuntos a incluir en la operación de IA.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Nivel de detalle de la imagen para el procesamiento de IA.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Object[]>`

> Funciones para exponer al modelo de IA.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <Object[]>`

> Cmdlets para exponer al modelo de IA.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Nombres de funciones de herramienta que no requieren confirmación.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> .PARAMETER Id
Especifica el ID de la instancia virtual de clúster de conmutación por error que se va a eliminar.

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

> .PARÁMETRO RootItemType

Especifica el nombre de un único elemento basado en el tipo de elemento del inventario de Configuration Manager.

Este parámetro no funciona con consultas basadas en Id. ni con consultas que devuelvan varias clases de elementos. Si la consulta devuelve varias clases de elementos, no se muestra ningún tipo de elemento raíz.

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

> Habla en voz alta durante el procesamiento de la IA.

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

> Deshabilite el almacenamiento en caché de sesión para esta operación.

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

> Permitir el uso de herramientas predeterminadas en la operación de IA.

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

> Temperatura de audio para generación de audio por IA.

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

> Temperatura para la generación de respuesta de IA.

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

> Número de hilos de CPU a utilizar para la operación de IA.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String[]>`

> Expresión regular para suprimir en la salida de la IA.

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

> Tamaño del contexto de audio para el procesamiento de audio con IA.

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

> Umbral de silencio para el procesamiento de audio de IA.

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

> Penalización por longitud para la generación de secuencias de IA.

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

> Umbral de entropía para la salida de IA.

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

> Umbral de probabilidad logarítmica para la salida de IA.

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

> Sin umbral de voz para el procesamiento de audio de IA.

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

> .DESCRIPTION

El cmdlet Remove-AzureADServicePrincipalDelegatedPermissionGrant se utiliza para eliminar una concesión de permiso delegado de un servicio principal en Azure Active Directory.

.PARÁMETROS

 - ObjectId <String>
   El identificador único de la concesión de permiso delegado que se va a eliminar.

 - ServicePrincipalObjectId <String>
   El identificador único del servicio principal del cual se eliminará la concesión de permiso delegado.

.EJEMPLOS

---------------------- EJEMPLO 1: Eliminar una concesión de permiso delegado --------------------------

Remove-AzureADServicePrincipalDelegatedPermissionGrant -ObjectId "a1b2c3d4-e5f6-7890-abcd-ef1234567890" -ServicePrincipalObjectId "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"

Este comando elimina la concesión de permiso delegado especificada del servicio principal.

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

> No hables pensamientos de IA.

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

> Deshabilitar VOX para la salida de audio de IA.

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

> Usar captura de audio del escritorio para audio de IA.

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

> No utilice el contexto para la operación de IA.

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

> Use estrategia de muestreo por haz para la IA.

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

> Este cmdlet agrega una cuenta de usuario de dominio a un grupo local.

El cmdlet Add-LocalGroupMember agrega miembros de seguridad (usuarios o grupos de dominio) a un grupo local de seguridad o distribución. Todos los derechos y permisos que se asignan a un grupo local se otorgan a los miembros agregados al grupo.

Los cmdlets de la cuenta de grupo local, administran y configuran el grupo local de seguridad o distribución en el administrador de cuentas de seguridad local de Windows. Los cmdlets de grupo local requieren permisos de administrador local. A partir de Windows 10, versión 1709, los grupos locales no se pueden administrar con este cmdlet en sistemas Windows 10 que no tengan una cuenta de administrador local. Los comandos que usan el parámetro Miembro para agregar cuentas que son miembros de grupos locales remotos o que están en un grupo local diferente pueden generar errores de infracción de acceso.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> # .PARAMETER ActivityId
Especifica el identificador o nombre de la actividad.
# .PARAMETER ChildActivity
Especifica las actividades secundarias que se deben ejecutar simultáneamente.
# .PARAMETER InputObject
Especifica la entrada.
# .EXAMPLE
Inicia una actividad con el identificador 'tarea1' y sus actividades secundarias.
# .EXAMPLE
Inicia una actividad sin especificar un identificador.

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

> Filtro para tipos de bloques de marcado en la salida de IA.

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

- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ConvertFrom-CorporateSpeak.md)
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
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-LLMStringListEvaluation.md)
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
