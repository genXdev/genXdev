# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Escribe un objeto como JSON en un archivo de forma atómica para evitar corrupción.

## Description

* Escritura atómica: utiliza una estrategia de archivo temporal + renombrado para asegurar que el archivo de destino nunca quede en un estado corrupto si el proceso se interrumpe.
* Lógica de reintento: reintenta la escritura hasta MaxRetries veces con un retardo de RetryDelayMs milisegundos entre intentos.
* Soporte para objetos: acepta cualquier objeto, no solo Hashtable. Serializa a través de System.Text.Json con recurso a ConvertTo-Json para tipos complejos de .NET que no pueden serializarse de forma nativa.
* Soporte para debounce: cuando DebounceMs > 0, las escrituras consecutivas rápidas al mismo archivo se fusionan — solo se escribe la última carga útil una vez que el archivo no ha sido tocado durante DebounceMs ms.
* Creación de directorios: crea los directorios padre automáticamente si no existen.

## Syntax

```powershell
Write-JsonFileAtomic [-FilePath] <string> [[-Data] <Object>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [-Depth <int>] [-Compress] [-AsArray] [-EnumsAsStrings] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | La ruta al archivo que se va a escribir. |
| `-Data` | Object | — | — | 1 | — | Este es un asistente útil diseñado para generar JSON. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | El número máximo de reintentos para la operación de escritura atómica. El valor predeterminado es 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | El retraso en milisegundos entre los intentos de reintento. El valor predeterminado es 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Si es mayor que 0, elimina la escritura en este archivo. El valor predeterminado es 0 (desactivado). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | La profundidad máxima para la serialización JSON. El valor predeterminado es 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | Eres un asistente útil diseñado para generar JSON.
## Formato de Respuesta

Responde solo con un objeto JSON. No incluyas ningún otro texto. |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | Eres un asistente útil diseñado para generar JSON.
## Formato de Respuesta

Responde solo con un objeto JSON. No incluyas ningún otro texto. |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Proporciona una opción de serialización alternativa que convierte todas las enumeraciones a su representación de cadena. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Escribe una tabla hash como JSON indentado en config.json de forma atómica.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Escribe objetos de proceso como JSON comprimido de forma atómica.

## Related Links

- [Write-JsonFileAtomic on GitHub](https://github.com/genXdev/genXdev)
