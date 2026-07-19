# Get-DesktopScalingFactor

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Récupère le facteur d'échelle d'affichage Windows (paramètre DPI) pour un moniteur spécifié.

## Description

* Récupère le facteur d'échelle d'affichage Windows configuré pour un moniteur
  dans le système.
* Le facteur d'échelle est exprimé en pourcentage, où 100 représente
  une échelle standard (96 PPP). Les valeurs courantes sont 100, 125, 150 et 200.
* Si aucun moniteur n'est spécifié, renvoie le facteur d'échelle pour l'affichage
  principal.

## Syntax

```powershell
Get-DesktopScalingFactor [[-Monitor] <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | — | — | 0 | `0` | L'indice du moniteur à vérifier (0 = moniteur principal) |

## Examples

### Example 1

```powershell
Get-DesktopScalingFactor -Monitor 0
```

Renvoie le pourcentage du facteur d'échelle pour le moniteur principal.

### Example 2

```powershell
Get-DesktopScalingFactor 1
```

Renvoie le pourcentage de facteur d'échelle pour le deuxième moniteur en utilisant un paramètre positionnel.

## Related Links

- [Get-DesktopScalingFactor on GitHub](https://github.com/genXdev/genXdev)
