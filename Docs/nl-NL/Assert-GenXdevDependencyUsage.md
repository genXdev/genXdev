# Assert-GenXdevDependencyUsage

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `checkgenxdevdependencies

## Synopsis

> Valideert afhankelijkheidsgebruik in GenXdev-modules om ervoor te zorgen dat de juiste modulehiërarchie wordt gehandhaafd.

## Description

Deze functie analyseert GenXdev-modules om ervoor te zorgen dat ze de juiste afhankelijkheidshiërarchie volgen. Het controleert of modules alleen verwijzen naar afhankelijkheden die zijn vermeld in hun RequiredModules-manifest en voorkomt circulaire afhankelijkheden door te valideren dat modules niet verwijzen naar modules die later in de afhankelijkheidsketen voorkomen.

## Syntax

```powershell
Assert-GenXdevDependencyUsage [[-ModuleName] <String[]>] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | Filter om toe te passen op modulenamen 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Doorzoek scriptbestanden in plaats van modulebestanden |

## Examples

### Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"

```powershell
Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"
```

### checkgenxdevdependencies "GenXdev*" -FromScripts

```powershell
checkgenxdevdependencies "GenXdev*" -FromScripts
```

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)
