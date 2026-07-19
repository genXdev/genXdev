# Initialize-ScheduledTaskScripts

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Crea tareas programadas que ejecutan scripts de PowerShell a intervalos especificados.

## Description

Crea y configura tareas programadas que ejecutan scripts de PowerShell en varios intervalos, incluyendo:
- Inicio del sistema
- Inicio de sesión del usuario
- Cada hora de días específicos (por ejemplo, lunes a las 13:00)
- Diariamente a horas específicas (por ejemplo, todos los días a las 15:00)
Cada tarea se ejecuta con privilegios elevados en el contexto del usuario actual.

## Syntax

```powershell
Initialize-ScheduledTaskScripts [[-FilePath] <String>] [[-Prefix] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | — | — | 0 | `''` | La ruta del directorio donde se crearán los scripts de tareas |
| `-Prefix` | String | — | — | 1 | `'PS'` | Prefijo para los nombres de las tareas programadas |

## Examples

### Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"

```powershell
Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"
```

### Initialize-ScheduledTaskScripts

```powershell
Initialize-ScheduledTaskScripts
```

## Related Links

- [Initialize-ScheduledTaskScripts on GitHub](https://github.com/genXdev/genXdev)
