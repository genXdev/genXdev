# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Detects if PowerShell is running in unattended/automated mode.

## Description

* Analyzes various indicators to determine if PowerShell is running in
  an unattended or automated context.
* Checks pipeline analysis, environment variables, console redirection,
  and invocation context.
* When CallersInvocation is provided, analyzes the pipeline position and
  count to detect automated pipeline or script execution.

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | Caller's invocation info for pipeline and automation detection |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | Return detailed analysis object instead of simple boolean |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

Returns a boolean indicating if running in unattended mode.

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

Analyzes the caller's invocation context and returns a boolean.

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

Returns detailed analysis object with all indicators.

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

Example usage in a function to check for unattended mode.

## Outputs


## Related Links

- [Test-UnattendedMode on GitHub](https://github.com/genXdev/genXdev)
