# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> Inicia un proceso con un nivel de prioridad especificado.

## Description

* Inicia un ejecutable con un nivel de prioridad personalizable y proporciona opciones para esperar y manejar procesos.
* Envuelve Start-Process con funcionalidad adicional para controlar la prioridad del proceso y el comportamiento de ejecución.

## Syntax

```powershell
Start-ProcessWithPriority [-FilePath] <string> [[-ArgumentList] <string[]>] [[-Priority] <string>] [-NoWait] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Ruta al ejecutable que se va a ejecutar |
| `-ArgumentList` | String[] | — | — | 1 | — | Argumentos para pasar al ejecutable |
| `-Priority` | String | — | — | 2 | — | Nivel de prioridad del proceso |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | No esperes a que el proceso termine |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Return the process object |

## Examples

### Example 1

```powershell
Start-ProcessWithPriority -FilePath "notepad.exe" -Priority "Low" -NoWait
```

Inicia el Bloc de notas con prioridad baja y regresa inmediatamente.

### Example 2

```powershell
nice notepad.exe -Priority High
```

Utiliza el alias 'nice' para iniciar un proceso con alta prioridad.

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
