# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Detecteert of PowerShell in onbemande/geautomatiseerde modus wordt uitgevoerd.

## Description

* Analyseert verschillende indicatoren om te bepalen of PowerShell wordt uitgevoerd in een onbewaakte of geautomatiseerde context.
* Controleert pipeline-analyse, omgevingsvariabelen, console-omleiding en aanroepcontext.
* Wanneer CallersInvocation is opgegeven, analyseert het de pipeline-positie en -telling om geautomatiseerde pipeline- of scriptuitvoering te detecteren.

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | Belgever aanroepinformatie voor pijplijn- en automatiseringsdetectie |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | Return detailed analysis object instead of simple boolean |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

Retourneert een boolean die aangeeft of er in onbemande modus wordt uitgevoerd.

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

Analyseert de aanroepcontext van de beller en retourneert een booleaanse waarde.

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

Retourneert een gedetailleerd analyseobject met alle indicatoren.

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

Voorbeeldgebruik in een functie om te controleren op onbemande modus.

## Outputs


## Related Links

- [Test-UnattendedMode on GitHub](https://github.com/genXdev/genXdev)
