# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Escribe bytes en un archivo de forma atómica para evitar la corrupción.

## Description

* Escritura atómica: utiliza una estrategia de archivo temporal + renombrado para garantizar que el archivo de destino nunca quede en un estado corrupto si el proceso se interrumpe.
* Lógica de reintento: reintenta la escritura hasta MaxRetries veces con un retardo de RetryDelayMs milisegundos entre intentos.
* Soporte de debounce: cuando DebounceMs > 0, las escrituras consecutivas rápidas al mismo archivo se agrupan; solo el último contenido se escribe una vez que el archivo no ha sido tocado durante DebounceMs ms.
* Creación de directorios: crea automáticamente los directorios padre si no existen.

## Syntax

```powershell
Write-FileAtomic [-FilePath] <string> [[-Data] <byte[]>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | La ruta al archivo que se va a escribir. |
| `-Data` | Byte[] | — | — | 1 | — | La matriz de bytes para escribir en el archivo. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | El número máximo de reintentos para la operación de escritura atómica. El valor predeterminado es 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | El retraso en milisegundos entre los intentos de reintento. El valor predeterminado es 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Si es mayor que 0, elimina la escritura en este archivo. El valor predeterminado es 0 (desactivado). |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

Writes a byte array to data.bin atomically with default retry settings.

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

Escribe rápidamente 100 veces, pero solo la carga útil final (100) se persiste en el disco después de un período de silencio de 5 segundos.

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

Escribe con reintento personalizado: hasta 10 intentos con 500ms entre cada uno.

## Related Links

- [Write-FileAtomic on GitHub](https://github.com/genXdev/genXdev)
