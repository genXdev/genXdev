# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Escribe texto en un archivo de forma atómica para evitar la corrupción.

## Description

* Escritura atómica: usa una estrategia de archivo temporal + renombrado para garantizar que el archivo de destino nunca quede en un estado corrupto si el proceso se interrumpe.
* Lógica de reintento: reintenta la escritura hasta MaxRetries veces con un retardo de RetryDelayMs milisegundos entre intentos.
* Soporte de codificación: acepta un parámetro System.Text.Encoding para controlar la codificación de salida. Por defecto UTF-8.
* Soporte de debounce: cuando DebounceMs > 0, las escrituras consecutivas rápidas al mismo archivo se fusionan — solo se escribe la última carga útil una vez que el archivo no ha sido tocado durante DebounceMs ms.
* Creación de directorios: crea automáticamente los directorios padre si no existen.

## Syntax

```powershell
Write-TextFileAtomic -FilePath <String> [[-Data] <String>] [-DebounceMs <Int32>] [-Encoding <Text.Encoding>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | La ruta al archivo en el que se va a escribir. |
| `-Data` | String | — | — | 1 | — | El contenido de texto que se va a escribir en el archivo. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | El número máximo de reintentos para la operación de escritura atómica. El valor predeterminado es 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | El retraso en milisegundos entre intentos de reintento. El valor predeterminado es 200. |
| `-Encoding` | Text.Encoding | — | — | Named | — | La codificación de texto que se usará al escribir el archivo. El valor predeterminado es UTF-8. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Si es mayor que 0, retrasa la escritura a este archivo. El valor predeterminado es 0 (deshabilitado). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

Escribe una cadena en config.txt usando codificación UTF-8 de manera atómica.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

Redirige 50 líneas rápidamente; solo la última línea se conserva después de un período de silencio de 2 segundos.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

Escribe una cadena en data.csv usando codificación ASCII de manera atómica.

### Example 4

```powershell
# Debounce with custom retry: coalesce UI state saves
$watcher = Start-ThreadJob -ScriptBlock {
    param($path)
    while ($true) {
        Write-TextFileAtomic -FilePath $path `
            -Data (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') `
            -DebounceMs 1000 -MaxRetries 3
        Start-Sleep -Milliseconds 100
    }
} -ArgumentList "timestamp.txt"
```

Un trabajo en segundo plano escribe marcas de tiempo cada 100 ms, pero el debounce las combina; solo una escritura por segundo llega realmente al disco.

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
### `-Data <String>`

> El contenido de texto que se va a escribir en el archivo.

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
### `-Encoding <Text.Encoding>`

> La codificación de texto que se usará al escribir el archivo. El valor predeterminado es UTF-8.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Write-JsonFileAtomic.md)
