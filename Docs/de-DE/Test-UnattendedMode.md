# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Erkennt, ob PowerShell im unbeaufsichtigten/automatisierten Modus ausgeführt wird.

## Description

* Analysiert verschiedene Indikatoren, um festzustellen, ob PowerShell in einem unbeaufsichtigten oder automatisierten Kontext ausgeführt wird.
* Überprüft Pipeline-Analyse, Umgebungsvariablen, Konsolenumleitung und Aufrufkontext.
* Wenn CallersInvocation bereitgestellt wird, analysiert die Pipeline-Position und -Anzahl, um eine automatisierte Pipeline- oder Skriptausführung zu erkennen.

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | Aufrufer-Invocationsinfo für Pipeline- und Automatisierungserkennung |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | {"response":"Statt eines einfachen Booleschen Werts wird ein detailliertes Analyseobjekt zurückgegeben."} |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

Gibt einen booleschen Wert zurück, der angibt, ob der unbeaufsichtigte Modus aktiviert ist.

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

Analysiert den Aufrufkontext des Anrufers und gibt einen booleschen Wert zurück.

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

Gibt ein detailliertes Analyseobjekt mit allen Indikatoren zurück.

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

Beispielverwendung in einer Funktion zur Überprüfung des unbeaufsichtigten Modus.

## Outputs


## Related Links

- [Test-UnattendedMode on GitHub](https://github.com/genXdev/genXdev)
