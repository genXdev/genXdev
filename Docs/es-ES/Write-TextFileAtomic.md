# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Escribe texto en un archivo de manera atómica para evitar la corrupción.

## Description

* Escritura atómica: utiliza una estrategia de archivo temporal + renombrado para garantizar que el archivo de destino nunca quede en un estado corrupto si el proceso se interrumpe.
* Lógica de reintento: reintenta la escritura hasta MaxRetries veces con una demora de RetryDelayMs milisegundos entre intentos.
* Soporte de codificación: acepta un parámetro System.Text.Encoding para controlar la codificación de salida. Por defecto es UTF-8.
* Soporte de debounce: cuando DebounceMs > 0, las escrituras consecutivas rápidas al mismo archivo se fusionan — solo se escribe la última carga útil una vez que el archivo no haya sido modificado durante DebounceMs ms.
* Creación de directorios: crea automáticamente los directorios padre si no existen.

## Syntax

```powershell
Write-TextFileAtomic [-FilePath] <string> [[-Data] <string>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-Encoding <Encoding>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | La ruta al archivo que se va a escribir. |
| `-Data` | String | — | — | 1 | — | El texto que se va a escribir en el archivo. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | El número máximo de reintentos para la operación de escritura atómica. El valor predeterminado es 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | El retraso en milisegundos entre los intentos de reintento. El valor predeterminado es 200. |
| `-Encoding` | Text.Encoding | — | — | Named | — | La codificación de texto que se usará al escribir el archivo. El valor predeterminado es UTF-8. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Si es mayor que 0, elimina la escritura en este archivo. El valor predeterminado es 0 (desactivado). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

Escribe una cadena en config.txt usando codificación UTF-8 de forma atómica.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

Envía rápidamente 50 líneas; solo se conserva la última línea después de un período de silencio de 2 segundos.

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

Un trabajo en segundo plano escribe marcas de tiempo cada 100ms pero el debounce las agrupa — solo una escritura por segundo llega realmente al disco.

## Related Links

- [Write-TextFileAtomic on GitHub](https://github.com/genXdev/genXdev)
