# EnsureVSCodeInstallation

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Installe et configure Visual Studio Code avec les extensions recommandées.

## Description

Vérifie si Visual Studio Code est installé et, si ce n'est pas le cas, l'installe via WinGet.
Configure les paramètres utilisateur, les raccourcis clavier et installe les extensions recommandées à partir de la configuration de l'espace de travail.
Configure également PSGallery en tant que référentiel de confiance et configure des paramètres d'extension spécifiques.

## Syntax

```powershell
EnsureVSCodeInstallation [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureVSCodeInstallation

```powershell
EnsureVSCodeInstallation
```

## Related Links

- [EnsureVSCodeInstallation on GitHub](https://github.com/genXdev/genXdev)
