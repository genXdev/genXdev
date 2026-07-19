# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Détecte si PowerShell s'exécute en mode non supervisé/automatisé.

## Description

* Analyse divers indicateurs pour déterminer si PowerShell s'exécute dans
  un contexte non supervisé ou automatisé.
* Vérifie l'analyse du pipeline, les variables d'environnement, la redirection
  de la console et le contexte d'appel.
* Lorsque CallersInvocation est fourni, analyse la position et le nombre
  d'éléments dans le pipeline pour détecter une exécution automatisée de pipeline ou de script.

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | Informations d'appel de l'appelant pour la détection de pipeline et d'automatisation |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

Renvoie un booléen indiquant si le mode non supervisé est actif.

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

Analyse le contexte d'appel de l'appelant et renvoie un booléen.

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

Renvoie un objet d'analyse détaillé avec tous les indicateurs.

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

Exemple d'utilisation dans une fonction pour vérifier le mode sans surveillance.

## Outputs


## Related Links

- [Test-UnattendedMode on GitHub](https://github.com/genXdev/genXdev)
