# ConvertFrom-CorporateSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `uncorporatize`

## Synopsis

> Convierte la jerga corporativa educada y profesional en un lenguaje directo y claro usando IA.

## Description

Esta función procesa el texto de entrada para transformar comunicaciones diplomáticas y corporativas en un lenguaje más directo y claro. Puede aceptar entrada directamente a través de parámetros, desde la canalización o desde el portapapeles del sistema. La función utiliza modelos de IA para analizar y reformular el texto, preservando la intención original.

## Syntax

```powershell
ConvertFrom-CorporateSpeak [[-Text] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | El texto para convertir de lenguaje corporativo |
| `-Attachments` | String[] | — | — | 2 | `@()` | Matriz de rutas de archivo para adjuntar |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nivel de detalle de la imagen |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Matriz de definiciones de funciones |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Matriz de definiciones de comandos de PowerShell para usar como herramientas |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Matriz de nombres de comandos que no requieren confirmación |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del punto de conexión de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indica que el LLM no tiene soporte para esquemas JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copiar el texto mejorado al portapapeles |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | El cmdlet Set-DefaultAudioDevice establece el dispositivo de audio predeterminado del sistema. Especifica el dispositivo de audio que se va a configurar como predeterminado mediante el parámetro DeviceName. El dispositivo de audio debe estar presente en el sistema. Puedes obtener los nombres de los dispositivos de audio mediante el cmdlet Get-AudioDevice.

Nota: Este cmdlet requiere privilegios de administrador. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .DESCRIPTION
El cmdlet Get-Member obtiene los miembros (propiedades y métodos) de los objetos. 

Para especificar el objeto, use el parámetro InputObject o canalice un objeto a Get-Member. 

Para obtener información sobre los miembros estáticos (miembros de la clase, no de la instancia), use el parámetro Static. 

Para obtener solo ciertos tipos de miembros, como métodos o propiedades, use el parámetro MemberType. |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar texto a voz para las respuestas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Habilitar texto a voz para las respuestas de pensamiento de IA |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | No almacenar la sesión en la caché de sesiones |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Permitir el uso de herramientas de IA predeterminadas durante el procesamiento |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar configuraciones alternativas almacenadas en la sesión para preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Borrar configuraciones alternativas almacenadas en la sesión para preferencias de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Almacenar la configuración solo en preferencias persistentes sin afectar la sesión |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para la aleatoriedad de la respuesta de audio (pasada a LLMQuery) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para la generación de la respuesta (pasado a LLMQuery) |
| `-Language` | String | — | — | Named | — | Código de idioma o nombre para el procesamiento (pasado a LLMQuery) |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de hilos de CPU a usar (pasado a LLMQuery) |
| `-SuppressRegex` | String | — | — | Named | — | Expresión regular para suprimir la salida (pasada a LLMQuery) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio para procesamiento (pasado a LLMQuery) |
| `-SilenceThreshold` | Double | — | — | Named | — | Umbral de silencio para la detección de audio (se pasa a LLMQuery) |
| `-LengthPenalty` | Double | — | — | Named | — | Penalización de longitud para la generación de secuencias (pasada a LLMQuery) |
| `-EntropyThreshold` | Double | — | — | Named | — | Umbral de entropía para el filtrado de salida (pasado a LLMQuery) |
| `-LogProbThreshold` | Double | — | — | Named | — | Umbral de probabilidad logarítmica para el filtrado de salida (pasado a LLMQuery) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Sin umbral de voz para la detección de audio (pasado a LLMQuery) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Deshabilitar salida de voz (enviado a LLMQuery) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Deshabilitar la salida de voz para los pensamientos (pasados a LLMQuery) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desactivar VOX (activación por voz) (pasado a LLMQuery) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Usar captura de audio de escritorio (pasado a LLMQuery) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Deshabilitar el uso de contexto (pasado a LLMQuery) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Habilitar la estrategia de muestreo de búsqueda por haz (pasada a LLMQuery) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Eres un asistente útil diseñado para generar JSON. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .SYNOPSIS
Administra un clúster de conmutación por error.

.DESCRIPTION
El cmdlet `Set-Cluster` permite configurar un clúster de conmutación por error. Puede usarlo para cambiar propiedades del clúster, como su nombre, dirección IP, o configuración de cuórum. También puede habilitar o deshabilitar características como el registro de auditoría.

.PARAMETER Name
Especifica el nombre del clúster que se va a administrar. Si no se especifica, el cmdlet actúa en el clúster local.

.PARAMETER StaticAddress
Especifica una o más direcciones IP estáticas para el clúster. Este parámetro es útil cuando no se utiliza DHCP.

.PARAMETER NoStorage
Indica que el clúster no utiliza almacenamiento compartido. Use este parámetro para configurar un clúster sin almacenamiento.

.PARAMETER DatabaseReadThreshold
Especifica el número de lecturas de base de datos del clúster que pueden estar pendientes antes de que el clúster registre un evento de advertencia.

.PARAMETER DatabaseWriteThreshold
Especifica el número de escrituras de base de datos del clúster que pueden estar pendientes antes de que el clúster registre un evento de advertencia.

.PARAMETER ManagementAccessPoint
Especifica el nombre de red y la dirección IP del clúster. Puede usar este parámetro para cambiar el punto de acceso de administración del clúster.

.PARAMETER ClusterEnforceAntiAffinity
Indica si el clúster debe forzar la anti-afinidad entre ciertos roles. Los valores posibles son 0 (deshabilitado) y 1 (habilitado).

.PARAMETER ClusterLogLevel
Especifica el nivel de registro para el clúster. Los valores posibles son 0 (solo errores), 1 (errores y advertencias) y 2 (información detallada).

.PARAMETER ClusterLogSize
Especifica el tamaño máximo del archivo de registro del clúster en megabytes (MB).

.PARAMETER CrossSubnetDelay
Especifica el retardo en segundos para la comunicación entre subredes en un clúster multisitio.

.PARAMETER CrossSubnetThreshold
Especifica el umbral para el número de latidos perdidos entre subredes antes de que se inicie una conmutación por error.

.PARAMETER PlumbAllCrossSubnetRoutes
Indica si el clúster debe enrutar todas las rutas entre subredes. Los valores posibles son 0 (deshabilitado) y 1 (habilitado).

.PARAMETER QuorumArbitrationTimeMax
Especifica el tiempo máximo en segundos para la arbitración de cuórum.

.PARAMETER QuorumType
Especifica el tipo de cuórum para el clúster. Los valores posibles son NodeMajority, NodeAndFileShareMajority y NodeAndDiskMajority.

.PARAMETER WitnessDatabaseWriteTimeout
Especifica el tiempo de espera en segundos para las escrituras en la base de datos del testigo.

.PARAMETER WitnessDynamicWeight
Indica si el testigo tiene peso dinámico. Los valores posibles son 0 (fijo) y 1 (dinámico).

.PARAMETER WitnessRestartInterval
Especifica el intervalo de reinicio en segundos para el testigo.

.PARAMETER FixQuorum
Indica que el cmdlet debe forzar la configuración de cuórum para solucionar problemas de división de clúster.

.PARAMETER ClearDatabaseReadThreshold
Borra el umbral de lectura de base de datos personalizado, volviendo al valor predeterminado.

.PARAMETER ClearDatabaseWriteThreshold
Borra el umbral de escritura de base de datos personalizado, volviendo al valor predeterminado.

.PARAMETER InputObject
Especifica el clúster que se va a modificar. Puede pasar un objeto de clúster a través de la tubería o almacenarlo en una variable.

.PARAMETER Cluster
Especifica el clúster en el que se ejecuta el cmdlet. Use este parámetro para especificar un clúster remoto.

.PARAMETER Confirm
Solicita confirmación antes de ejecutar el cmdlet.

.PARAMETER WhatIf
Muestra lo que sucedería si se ejecutara el cmdlet, sin ejecutarlo realmente.

.EJEMPLO
PS C:\> Set-Cluster -Name cls1 -StaticAddress 192.168.1.100
Este comando cambia la dirección IP estática del clúster 'cls1' a 192.168.1.100.

.EJEMPLO
PS C:\> Get-Cluster -Name cls1 | Set-Cluster -QuorumType NodeAndFileShareMajority -WitnessPath \\fileserver\quorum
Este comando configura el clúster 'cls1' para usar un cuórum de mayoría de nodos y recurso compartido de archivos, con el testigo en \\fileserver\quorum.

.NOTAS
El cmdlet Set-Cluster requiere permisos de administrador para ejecutarse. Los cambios realizados pueden afectar la disponibilidad del clúster.

.LINK
Get-Cluster
New-Cluster
Remove-Cluster |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtrar para tipos de bloque de marcado (pasado a LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longitud máxima de callback de herramienta (pasada a LLMQuery) |

## Examples

### ConvertFrom-CorporateSpeak -Text "I would greatly appreciate your timely response" -SetClipboard

```powershell
ConvertFrom-CorporateSpeak -Text "I would greatly appreciate your timely response" -SetClipboard
```

### "We should circle back" | uncorporatize ###############################################################################

```powershell
"We should circle back" | uncorporatize
###############################################################################
```

## Parameter Details

### `-Text <String>`

> El texto para convertir de lenguaje corporativo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
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
| **Default value** | `'SimpleIntelligence'` |
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

> Copiar el texto mejorado al portapapeles

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

> Permitir el uso de herramientas de IA predeterminadas durante el procesamiento

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
### `-AudioTemperature <Double>`

> Temperatura para la aleatoriedad de la respuesta de audio (pasada a LLMQuery)

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

> Temperatura para la generación de la respuesta (pasado a LLMQuery)

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

> Código de idioma o nombre para el procesamiento (pasado a LLMQuery)

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

> Número de hilos de CPU a usar (pasado a LLMQuery)

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

> Expresión regular para suprimir la salida (pasada a LLMQuery)

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

> Tamaño del contexto de audio para procesamiento (pasado a LLMQuery)

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

> Umbral de silencio para la detección de audio (se pasa a LLMQuery)

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

> Penalización de longitud para la generación de secuencias (pasada a LLMQuery)

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

> Umbral de entropía para el filtrado de salida (pasado a LLMQuery)

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

> Umbral de probabilidad logarítmica para el filtrado de salida (pasado a LLMQuery)

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

> Sin umbral de voz para la detección de audio (pasado a LLMQuery)

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

> Deshabilitar salida de voz (enviado a LLMQuery)

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

> Deshabilitar la salida de voz para los pensamientos (pasados a LLMQuery)

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

> Desactivar VOX (activación por voz) (pasado a LLMQuery)

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

> Usar captura de audio de escritorio (pasado a LLMQuery)

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

> Deshabilitar el uso de contexto (pasado a LLMQuery)

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

> Habilitar la estrategia de muestreo de búsqueda por haz (pasada a LLMQuery)

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

> Eres un asistente útil diseñado para generar JSON.

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

> .SYNOPSIS
Administra un clúster de conmutación por error.

.DESCRIPTION
El cmdlet `Set-Cluster` permite configurar un clúster de conmutación por error. Puede usarlo para cambiar propiedades del clúster, como su nombre, dirección IP, o configuración de cuórum. También puede habilitar o deshabilitar características como el registro de auditoría.

.PARAMETER Name
Especifica el nombre del clúster que se va a administrar. Si no se especifica, el cmdlet actúa en el clúster local.

.PARAMETER StaticAddress
Especifica una o más direcciones IP estáticas para el clúster. Este parámetro es útil cuando no se utiliza DHCP.

.PARAMETER NoStorage
Indica que el clúster no utiliza almacenamiento compartido. Use este parámetro para configurar un clúster sin almacenamiento.

.PARAMETER DatabaseReadThreshold
Especifica el número de lecturas de base de datos del clúster que pueden estar pendientes antes de que el clúster registre un evento de advertencia.

.PARAMETER DatabaseWriteThreshold
Especifica el número de escrituras de base de datos del clúster que pueden estar pendientes antes de que el clúster registre un evento de advertencia.

.PARAMETER ManagementAccessPoint
Especifica el nombre de red y la dirección IP del clúster. Puede usar este parámetro para cambiar el punto de acceso de administración del clúster.

.PARAMETER ClusterEnforceAntiAffinity
Indica si el clúster debe forzar la anti-afinidad entre ciertos roles. Los valores posibles son 0 (deshabilitado) y 1 (habilitado).

.PARAMETER ClusterLogLevel
Especifica el nivel de registro para el clúster. Los valores posibles son 0 (solo errores), 1 (errores y advertencias) y 2 (información detallada).

.PARAMETER ClusterLogSize
Especifica el tamaño máximo del archivo de registro del clúster en megabytes (MB).

.PARAMETER CrossSubnetDelay
Especifica el retardo en segundos para la comunicación entre subredes en un clúster multisitio.

.PARAMETER CrossSubnetThreshold
Especifica el umbral para el número de latidos perdidos entre subredes antes de que se inicie una conmutación por error.

.PARAMETER PlumbAllCrossSubnetRoutes
Indica si el clúster debe enrutar todas las rutas entre subredes. Los valores posibles son 0 (deshabilitado) y 1 (habilitado).

.PARAMETER QuorumArbitrationTimeMax
Especifica el tiempo máximo en segundos para la arbitración de cuórum.

.PARAMETER QuorumType
Especifica el tipo de cuórum para el clúster. Los valores posibles son NodeMajority, NodeAndFileShareMajority y NodeAndDiskMajority.

.PARAMETER WitnessDatabaseWriteTimeout
Especifica el tiempo de espera en segundos para las escrituras en la base de datos del testigo.

.PARAMETER WitnessDynamicWeight
Indica si el testigo tiene peso dinámico. Los valores posibles son 0 (fijo) y 1 (dinámico).

.PARAMETER WitnessRestartInterval
Especifica el intervalo de reinicio en segundos para el testigo.

.PARAMETER FixQuorum
Indica que el cmdlet debe forzar la configuración de cuórum para solucionar problemas de división de clúster.

.PARAMETER ClearDatabaseReadThreshold
Borra el umbral de lectura de base de datos personalizado, volviendo al valor predeterminado.

.PARAMETER ClearDatabaseWriteThreshold
Borra el umbral de escritura de base de datos personalizado, volviendo al valor predeterminado.

.PARAMETER InputObject
Especifica el clúster que se va a modificar. Puede pasar un objeto de clúster a través de la tubería o almacenarlo en una variable.

.PARAMETER Cluster
Especifica el clúster en el que se ejecuta el cmdlet. Use este parámetro para especificar un clúster remoto.

.PARAMETER Confirm
Solicita confirmación antes de ejecutar el cmdlet.

.PARAMETER WhatIf
Muestra lo que sucedería si se ejecutara el cmdlet, sin ejecutarlo realmente.

.EJEMPLO
PS C:\> Set-Cluster -Name cls1 -StaticAddress 192.168.1.100
Este comando cambia la dirección IP estática del clúster 'cls1' a 192.168.1.100.

.EJEMPLO
PS C:\> Get-Cluster -Name cls1 | Set-Cluster -QuorumType NodeAndFileShareMajority -WitnessPath \\fileserver\quorum
Este comando configura el clúster 'cls1' para usar un cuórum de mayoría de nodos y recurso compartido de archivos, con el testigo en \\fileserver\quorum.

.NOTAS
El cmdlet Set-Cluster requiere permisos de administrador para ejecutarse. Los cambios realizados pueden afectar la disponibilidad del clúster.

.LINK
Get-Cluster
New-Cluster
Remove-Cluster

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

> Filtrar para tipos de bloque de marcado (pasado a LLMQuery)

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

> Longitud máxima de callback de herramienta (pasada a LLMQuery)

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
