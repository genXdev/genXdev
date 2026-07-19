# Import-GenXdevModules

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `reloadgenxdev

## Synopsis

> Importe tous les modules PowerShell GenXdev dans la portée globale.

## Description

Scanne le répertoire parent à la recherche de modules GenXdev et importe chacun d'eux dans la portée globale. Utilise la gestion de la pile d'emplacements pour préserver le répertoire de travail et fournit un retour visuel pour les importations réussies et échouées. Suit les changements de nombre de fonctions pendant le processus d'importation.

## Syntax

```powershell
Import-GenXdevModules [-DebugFailedModuleDefinitions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DebugFailedModuleDefinitions` | SwitchParameter | — | — | Named | — | Activer la sortie de débogage pour les définitions de modules ayant échoué |

## Examples

### Import-GenXdevModules -DebugFailedModuleDefinitions Imports modules with debug output for failures

```powershell
Import-GenXdevModules -DebugFailedModuleDefinitions
Imports modules with debug output for failures
```

### reloadgenxdev Imports all modules using the alias

```powershell
reloadgenxdev
Imports all modules using the alias
```

## Related Links

- [Import-GenXdevModules on GitHub](https://github.com/genXdev/genXdev)
