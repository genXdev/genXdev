# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Detecta si PowerShell se ejecuta en modo desatendido/automatizado.

## Description

* Analiza varios indicadores para determinar si PowerShell se está ejecutando en un contexto desatendido o automatizado.
* Verifica el análisis de canalizaciones, variables de entorno, redirección de consola y contexto de invocación.
* Cuando se proporciona CallersInvocation, analiza la posición y el recuento de la canalización para detectar la ejecución automatizada de canalización o script.

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | Información de invocación del llamante para la detección de pipelines y automatización |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | {"type":"json_schema","json_schema":{"name":"text_transformation_response","strict":true,"schema":{"required":["response"],"properties":{"response":{"type":"string","description":"The transformed text output"}},"type":"object"}}} |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

Devuelve un booleano que indica si se está ejecutando en modo desatendido.

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

Analiza el contexto de invocación del llamante y devuelve un booleano.

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

Devuelve un objeto de análisis detallado con todos los indicadores.

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

Ejemplo de uso en una función para verificar el modo desatendido.

## Outputs


## Related Links

- [Test-UnattendedMode on GitHub](https://github.com/genXdev/genXdev)
