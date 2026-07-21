# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Escribe un objeto como JSON en un archivo de forma atómica para evitar la corrupción.

## Description

* Escritura atómica: utiliza una estrategia de archivo temporal + renombrado para garantizar que el archivo de destino nunca quede en un estado corrupto si el proceso se interrumpe.
* Lógica de reintento: reintenta la escritura hasta MaxRetries veces con un retardo de RetryDelayMs milisegundos entre intentos.
* Soporte de objetos: acepta cualquier objeto, no solo Hashtable. Serializa mediante System.Text.Json con respaldo a ConvertTo-Json para tipos complejos de .NET que no se pueden serializar de forma nativa.
* Soporte de debounce: cuando DebounceMs > 0, las escrituras rápidas consecutivas al mismo archivo se fusionan; solo se escribe la última carga útil una vez que el archivo no ha sido tocado durante DebounceMs ms.
* Creación de directorios: crea automáticamente los directorios padre si no existen.

## Syntax

```powershell
Write-JsonFileAtomic -FilePath <String> [[-Data] <Object>] [-AsArray] [-Compress] [-DebounceMs <Int32>] [-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-EnumsAsStrings] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | La ruta al archivo en el que se va a escribir. |
| `-Data` | Object | — | — | 1 | — | El objeto a serializar como JSON y escribir en el archivo. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | El número máximo de reintentos para la operación de escritura atómica. El valor predeterminado es 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | El retraso en milisegundos entre intentos de reintento. El valor predeterminado es 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Si es mayor que 0, retrasa la escritura a este archivo. El valor predeterminado es 0 (deshabilitado). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | La profundidad máxima para la serialización JSON. El valor predeterminado es 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | Sobre este cmdlet

Muestra el hash digital de un archivo usando un algoritmo de hash especificado.

Parámetros

-Algorithm <System.String[]>
    Especifica la función hash criptográfica para calcular el valor hash de los contenidos del archivo especificado.
    Un archivo firmado digitalmente puede ser firmado con un algoritmo hash específico y cargado adicionalmente.
    Si no se especifica, se utiliza SHA256 como algoritmo de hash.
    Los valores aceptables para este parámetro son:
    - SHA1
    - SHA256
    - SHA384
    - SHA512
    - MD5
    Este parámetro utiliza un algoritmo de hash para el cual se calcula un valor hash del archivo.
    Los valores aceptables son los mismos que el parámetro Algorithm.

-LiteralPath <System.String[]>
    Especifica la ruta a un archivo. A diferencia de Path, el valor de LiteralPath se usa exactamente como se escribe.
    No se interpretan caracteres comodín. Si la ruta incluye caracteres de escape, debe encerrarla entre comillas simples.
    Las comillas simples indican que PowerShell no debe interpretar caracteres como secuencias de escape.

-Path <System.String[]>
    Especifica la ruta a uno o más archivos como una matriz. Se permiten caracteres comodín.

<CommonParameters>
    Este cmdlet admite los parámetros comunes: -Verbose, -Debug, -ErrorAction, -WarningAction, -InformationAction, -ProgressAction, -ErrorVariable, -WarningVariable, -InformationVariable, -OutVariable, -OutBuffer y -PipelineVariable.
    Para más información, consulte about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).

Entradas

System.String
    Puede canalizar una cadena que contenga una ruta a este cmdlet.

Salidas

Microsoft.PowerShell.Utility.FileHash
    Este cmdlet devuelve un objeto que representa la ruta del archivo, el valor del hash calculado y el algoritmo utilizado para calcular el hash.

Notas
    Los valores hash computados se muestran como valores hexadecimales. |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | Sobre este cmdlet

Muestra el hash digital de un archivo usando un algoritmo de hash especificado.

Parámetros

-Algorithm <System.String[]>
    Especifica la función hash criptográfica para calcular el valor hash de los contenidos del archivo especificado.
    Un archivo firmado digitalmente puede ser firmado con un algoritmo hash específico y cargado adicionalmente.
    Si no se especifica, se utiliza SHA256 como algoritmo de hash.
    Los valores aceptables para este parámetro son:
    - SHA1
    - SHA256
    - SHA384
    - SHA512
    - MD5
    Este parámetro utiliza un algoritmo de hash para el cual se calcula un valor hash del archivo.
    Los valores aceptables son los mismos que el parámetro Algorithm.

-LiteralPath <System.String[]>
    Especifica la ruta a un archivo. A diferencia de Path, el valor de LiteralPath se usa exactamente como se escribe.
    No se interpretan caracteres comodín. Si la ruta incluye caracteres de escape, debe encerrarla entre comillas simples.
    Las comillas simples indican que PowerShell no debe interpretar caracteres como secuencias de escape.

-Path <System.String[]>
    Especifica la ruta a uno o más archivos como una matriz. Se permiten caracteres comodín.

<CommonParameters>
    Este cmdlet admite los parámetros comunes: -Verbose, -Debug, -ErrorAction, -WarningAction, -InformationAction, -ProgressAction, -ErrorVariable, -WarningVariable, -InformationVariable, -OutVariable, -OutBuffer y -PipelineVariable.
    Para más información, consulte about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).

Entradas

System.String
    Puede canalizar una cadena que contenga una ruta a este cmdlet.

Salidas

Microsoft.PowerShell.Utility.FileHash
    Este cmdlet devuelve un objeto que representa la ruta del archivo, el valor del hash calculado y el algoritmo utilizado para calcular el hash.

Notas
    Los valores hash computados se muestran como valores hexadecimales. |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Proporciona una opción de serialización alternativa que convierte todas las enumeraciones a su representación de cadena. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Escribe un Hashtable como JSON indentado en config.json de forma atómica.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Escribe objetos de proceso como JSON comprimido de forma atómica.

## Parameter Details

### `-FilePath <String>`

> La ruta al archivo en el que se va a escribir.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <Object>`

> El objeto a serializar como JSON y escribir en el archivo.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> El número máximo de reintentos para la operación de escritura atómica. El valor predeterminado es 4.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryDelayMs <Int32>`

> El retraso en milisegundos entre intentos de reintento. El valor predeterminado es 200.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> Si es mayor que 0, retrasa la escritura a este archivo. El valor predeterminado es 0 (deshabilitado).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> La profundidad máxima para la serialización JSON. El valor predeterminado es 30.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Compress`

> Sobre este cmdlet

Muestra el hash digital de un archivo usando un algoritmo de hash especificado.

Parámetros

-Algorithm <System.String[]>
    Especifica la función hash criptográfica para calcular el valor hash de los contenidos del archivo especificado.
    Un archivo firmado digitalmente puede ser firmado con un algoritmo hash específico y cargado adicionalmente.
    Si no se especifica, se utiliza SHA256 como algoritmo de hash.
    Los valores aceptables para este parámetro son:
    - SHA1
    - SHA256
    - SHA384
    - SHA512
    - MD5
    Este parámetro utiliza un algoritmo de hash para el cual se calcula un valor hash del archivo.
    Los valores aceptables son los mismos que el parámetro Algorithm.

-LiteralPath <System.String[]>
    Especifica la ruta a un archivo. A diferencia de Path, el valor de LiteralPath se usa exactamente como se escribe.
    No se interpretan caracteres comodín. Si la ruta incluye caracteres de escape, debe encerrarla entre comillas simples.
    Las comillas simples indican que PowerShell no debe interpretar caracteres como secuencias de escape.

-Path <System.String[]>
    Especifica la ruta a uno o más archivos como una matriz. Se permiten caracteres comodín.

<CommonParameters>
    Este cmdlet admite los parámetros comunes: -Verbose, -Debug, -ErrorAction, -WarningAction, -InformationAction, -ProgressAction, -ErrorVariable, -WarningVariable, -InformationVariable, -OutVariable, -OutBuffer y -PipelineVariable.
    Para más información, consulte about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).

Entradas

System.String
    Puede canalizar una cadena que contenga una ruta a este cmdlet.

Salidas

Microsoft.PowerShell.Utility.FileHash
    Este cmdlet devuelve un objeto que representa la ruta del archivo, el valor del hash calculado y el algoritmo utilizado para calcular el hash.

Notas
    Los valores hash computados se muestran como valores hexadecimales.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsArray`

> Sobre este cmdlet

Muestra el hash digital de un archivo usando un algoritmo de hash especificado.

Parámetros

-Algorithm <System.String[]>
    Especifica la función hash criptográfica para calcular el valor hash de los contenidos del archivo especificado.
    Un archivo firmado digitalmente puede ser firmado con un algoritmo hash específico y cargado adicionalmente.
    Si no se especifica, se utiliza SHA256 como algoritmo de hash.
    Los valores aceptables para este parámetro son:
    - SHA1
    - SHA256
    - SHA384
    - SHA512
    - MD5
    Este parámetro utiliza un algoritmo de hash para el cual se calcula un valor hash del archivo.
    Los valores aceptables son los mismos que el parámetro Algorithm.

-LiteralPath <System.String[]>
    Especifica la ruta a un archivo. A diferencia de Path, el valor de LiteralPath se usa exactamente como se escribe.
    No se interpretan caracteres comodín. Si la ruta incluye caracteres de escape, debe encerrarla entre comillas simples.
    Las comillas simples indican que PowerShell no debe interpretar caracteres como secuencias de escape.

-Path <System.String[]>
    Especifica la ruta a uno o más archivos como una matriz. Se permiten caracteres comodín.

<CommonParameters>
    Este cmdlet admite los parámetros comunes: -Verbose, -Debug, -ErrorAction, -WarningAction, -InformationAction, -ProgressAction, -ErrorVariable, -WarningVariable, -InformationVariable, -OutVariable, -OutBuffer y -PipelineVariable.
    Para más información, consulte about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).

Entradas

System.String
    Puede canalizar una cadena que contenga una ruta a este cmdlet.

Salidas

Microsoft.PowerShell.Utility.FileHash
    Este cmdlet devuelve un objeto que representa la ruta del archivo, el valor del hash calculado y el algoritmo utilizado para calcular el hash.

Notas
    Los valores hash computados se muestran como valores hexadecimales.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnumsAsStrings`

> Proporciona una opción de serialización alternativa que convierte todas las enumeraciones a su representación de cadena.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Write-FileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Write-TextFileAtomic.md)
