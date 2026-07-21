# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Escribe bytes en un archivo de forma atómica para evitar la corrupción.

## Description

* Escritura atómica: utiliza una estrategia de archivo temporal + renombrado para garantizar que el archivo de destino nunca quede en un estado corrupto si el proceso se interrumpe.
* Lógica de reintento: reintenta la escritura hasta MaxRetries veces con una demora de RetryDelayMs milisegundos entre intentos.
* Soporte de debounce: cuando DebounceMs > 0, las escrituras consecutivas rápidas al mismo archivo se fusionan; solo se escribe la última carga útil una vez que el archivo no ha sido tocado durante DebounceMs ms.
* Creación de directorios: crea directorios padre automáticamente si no existen.

## Syntax

```powershell
Write-FileAtomic -FilePath <String> [[-Data] <Byte[]>] [-DebounceMs <Int32>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | La ruta al archivo en el que se va a escribir. |
| `-Data` | Byte[] | — | — | 1 | — | La matriz de bytes que se va a escribir en el archivo. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | El número máximo de reintentos para la operación de escritura atómica. El valor predeterminado es 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | El retraso en milisegundos entre intentos de reintento. El valor predeterminado es 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Si es mayor que 0, retrasa la escritura a este archivo. El valor predeterminado es 0 (deshabilitado). |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

Escribe una matriz de bytes en data.bin de forma atómica con la configuración de reintento predeterminada.

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

Escribe rápidamente 100 veces, pero solo la última carga útil (100) se persiste en el disco después de un período de silencio de 5 segundos.

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

Escribe con reintento personalizado: hasta 10 intentos con 500ms entre cada uno.

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
### `-Data <Byte[]>`

> La matriz de bytes que se va a escribir en el archivo.

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
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Write-TextFileAtomic.md)
